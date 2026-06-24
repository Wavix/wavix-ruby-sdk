# Wavix Ruby SDK

[![fern shield](https://img.shields.io/badge/%F0%9F%8C%BF-Built%20with%20Fern-brightgreen)](https://buildwithfern.com?utm_source=github&utm_medium=github&utm_campaign=readme&utm_source=https%3A%2F%2Fgithub.com%2Fwavix%2Fwavix-ruby)

The official Wavix Ruby SDK provides programmatic access to the
[Wavix](https://wavix.com) APIs. Use it to add messaging, voice, and account
management capabilities to your application.

Use the SDK to:

- Send and receive SMS and MMS messages.
- Place and programmatically control calls.
- Search for, buy, and manage phone numbers.
- Validate phone numbers.
- Manage SIP trunks.
- Retrieve call detail records (CDRs).


## Table of contents

- [Installation](#installation)
- [Authentication](#authentication)
- [Quickstart](#quickstart)
- [Error handling](#error-handling)
- [Pagination](#pagination)
- [Rate limits and retries](#rate-limits-and-retries)
  - [Retries](#retries)
  - [Idempotency](#idempotency)
- [Advanced](#advanced)
  - [Timeouts](#timeouts)
  - [Additional headers](#additional-headers)
  - [Additional query parameters](#additional-query-parameters)
- [SDK and API compatibility](#sdk-and-api-compatibility)
- [Release notes](#release-notes)
- [Major-version upgrades](#major-version-upgrades)
- [Documentation](#documentation)
- [Resources and support](#resources-and-support)
- [Contributing](#contributing)

## Installation

```sh
gem install wavix
```

**Requirements:** Ruby 3.3 or later.

## Authentication

Create an API key in the [Wavix portal](https://app.wavix.com). Store the key
in an environment variable and pass it to the client.

```shell
export WAVIX_API_KEY="your-api-key"
```

```ruby
require "wavix"

client = Wavix::Client.new(token: ENV.fetch("WAVIX_API_KEY"))
```

> [!CAUTION]
> Don't commit API keys or tokens to source control. In production, store
> credentials in environment variables or a secrets manager.


## Quickstart

Create a client and send an SMS message:

```ruby
require "wavix"

client = Wavix::Client.new(token: "<token>")

client.sms_and_mms.messages.send_(
  from: "Wavix",
  to: "+447537151866",
  message_body: {
    text: "Hi there, this is a message from Wavix",
    media: nil
  },
  callback_url: "https://you-site.com/webhook",
  validity: 3600,
  tag: "Fall sale"
)
```

## Error handling

When an API request fails, the SDK raises an error that you can rescue by
type:

```ruby
require "wavix"

client = Wavix::Client.new(
    base_url: "https://example.com"
)

begin
    result = client.sms_and_mms.messages.send_
rescue Wavix::Errors::TimeoutError
    puts "API didn't respond before our timeout elapsed"
rescue Wavix::Errors::ServiceUnavailableError
    puts "API returned status 503, is probably overloaded, try again later"
rescue Wavix::Errors::ServerError
    puts "API returned some other 5xx status, this is probably a bug"
rescue Wavix::Errors::ResponseError => e
    puts "API returned an unexpected status other than 5xx: #{e.code} #{e.message}"
rescue Wavix::Errors::ApiError => e
    puts "Some other error occurred when calling the API: #{e.message}"
end
```

Handle errors that aren't covered by these SDK error types separately, or
raise them again so that your application doesn't ignore unexpected failures.

## Pagination

List operations use automatic page-number pagination. The SDK requests
additional pages as you iterate through the results.

The Wavix APIs support these pagination parameters:

- `page`: Specifies the page to retrieve.
- `per_page`: Specifies the number of items per page. The default is `25`.
  The minimum is `1`, and the maximum is `100`.

## Rate limits and retries

Rate limits vary by endpoint. When a request exceeds an endpoint's rate
limit, the Wavix API returns an HTTP `429 Too Many Requests` response.

The SDK can retry `429` responses as described in [Retries](#retries).
Configure retries according to your application's traffic patterns and
latency requirements.

### Retries

The SDK automatically retries eligible requests. By default, the SDK makes up
to two retry attempts.

A request is eligible for retry when it returns one of these HTTP status
codes:

- `408 Request Timeout`.
- `429 Too Many Requests`.
- These server errors: `500`, `502`, `503`, `504`, `521`, `522`, and `524`.

These status codes aren't configurable.

Use `max_retries` to set the retry limit:

```ruby
require "wavix"

client = Wavix::Client.new(
    base_url: "https://example.com",
    max_retries: 3  # Configure max retries (default is 2)
)
```

> [!IMPORTANT]
> A retry can repeat an operation if the server processes the original
> request but the client doesn't receive the response. Before you retry an
> operation that sends a message, places a call, or changes a resource,
> confirm that the operation can be repeated safely.

### Idempotency

The Wavix APIs don't support idempotency keys. A repeated request can repeat
the operation, including sending a message, placing a call, or changing a
resource.

Before you retry a request that changes data or starts an operation, check
whether the original request succeeded. When duplicate operations could
affect customers or incur charges, track request state in your application
and prevent the same operation from being submitted more than once.

## Advanced

### Timeouts

The SDK uses a fixed 60-second request timeout.

### Additional headers

Use `additional_headers` to add headers to an individual request:

```ruby
require "wavix"

response = client.sms_and_mms.messages.send_(
    ...,
    request_options: {
        additional_headers: {
            "X-Custom-Header" => "custom-value"
        }
    }
)
```

### Additional query parameters

Use `additional_query_parameters` to add query parameters to an individual
request:

```ruby
require "wavix"

response = client.sms_and_mms.messages.send_(
    ...,
    request_options: {
        additional_query_parameters: {
            "custom_param" => "custom-value"
        }
    }
)
```

## SDK and API compatibility

Each SDK release supports the current version of the Wavix APIs available
when that SDK version is released. Update the SDK regularly to access the
latest API capabilities and fixes.

Before you update the SDK, review the
[GitHub releases](https://github.com/wavix/wavix-ruby/releases) for changes
that might affect your application.

## Release notes

See [GitHub releases](https://github.com/wavix/wavix-ruby/releases) for new
features, fixes, and breaking changes in each SDK release.

## Major-version upgrades

The SDK doesn't provide separate migration guides. Breaking changes ship only
in major versions, so before you upgrade, review the
[GitHub releases](https://github.com/wavix/wavix-ruby/releases) for breaking
changes, then update and test in a development environment before you deploy.

## Documentation

- For API guides and API reference documentation, see the
  [Wavix documentation](https://docs.wavix.com).
- For SDK methods and types, see the
  [Ruby SDK reference](https://github.com/wavix/wavix-ruby/blob/HEAD/reference.md).

## Resources and support

- **Versioning:** The SDK follows [Semantic Versioning](https://semver.org).
  Breaking changes are released in major versions.
- **Security:** Report vulnerabilities privately by following the instructions
  in [SECURITY.md](./SECURITY.md). Don't report vulnerabilities in public
  issues.
- **Support:** For product and API support, contact
  [support@wavix.com](mailto:support@wavix.com).
- **Issues:** To report an SDK bug or request a feature, open a
  [GitHub issue](https://github.com/wavix/wavix-ruby/issues).
- **License:** The SDK is available under the [MIT License](./LICENSE).

## Contributing

The SDK source code is generated. Changes made directly to generated files are
overwritten in the next release and can't be merged as submitted. Before you
prepare a code change, open an issue to discuss the proposed update.

You can submit README improvements directly in a pull request.
