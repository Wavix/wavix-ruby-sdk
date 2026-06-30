# Reference
## API Keys
<details><summary><code>client.api_keys.<a href="/lib/wavix/api_keys/client.rb">list</a>() -> Internal::Types::Array[Wavix::Types::APIKey]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the API keys belonging to the authenticated account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.api_keys.list(label: "production")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**label:** `String` — Filters API keys by `label`. Matches partial values.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::APIKeys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.api_keys.<a href="/lib/wavix/api_keys/client.rb">create</a>(request) -> Wavix::Types::APIKey</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an API key for the authenticated account. Restrict access by listing permitted IP addresses in `permitted_ips`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.api_keys.create(
  label: "Production API Key",
  active: true,
  restricted: true,
  permitted_ips: %w[192.168.1.1 10.0.0.1],
  scopes_enabled: true,
  numbers: {
    allow: "read"
  },
  calls: {
    allow: "read"
  },
  messages: {
    allow: "write"
  },
  two_fa: {
    allow: "write"
  },
  billing: {
    allow: "read"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**label:** `String` — API key label.
    
</dd>
</dl>

<dl>
<dd>

**active:** `Internal::Types::Boolean` — Indicates whether the API key should be activated upon creation.
    
</dd>
</dl>

<dl>
<dd>

**restricted:** `Internal::Types::Boolean` — Indicates whether to restrict API key access by IP address. When enabled, only requests from IP addresses listed in `permitted_ips` are allowed.
    
</dd>
</dl>

<dl>
<dd>

**permitted_ips:** `Internal::Types::Array[String]` — List of permitted IP addresses for this API key. Each must be a valid IPv4 address. Required when `restricted` is true.
    
</dd>
</dl>

<dl>
<dd>

**scopes_enabled:** `Internal::Types::Boolean` 

When `true`, scope fields below are enforced. When `false` (default), the
key has full access. Omitted scope fields default to `{ allow: none }`,
so with `scopes_enabled: true` and no scopes set the key has no access.
    
</dd>
</dl>

<dl>
<dd>

**numbers:** `Wavix::Types::APIKeyScopePermission` — View, buy, release, and configure phone numbers, browse inventory, and manage the cart.
    
</dd>
</dl>

<dl>
<dd>

**trunks:** `Wavix::Types::APIKeyScopePermission` — View, create, update, and delete SIP trunks and their settings.
    
</dd>
</dl>

<dl>
<dd>

**calls:** `Wavix::Types::APIKeyCallsScopePermission` — Access call records and active calls, and control live call actions such as starting, answering, ending, audio playback, DTMF, streaming, and transcription requests.
    
</dd>
</dl>

<dl>
<dd>

**messages:** `Wavix::Types::APIKeyScopePermission` — Access message history and Sender IDs, send messages, manage opt-outs, and create or delete Sender IDs.
    
</dd>
</dl>

<dl>
<dd>

**recordings:** `Wavix::Types::APIKeyScopePermission` — List, download, and delete call recordings.
    
</dd>
</dl>

<dl>
<dd>

**campaigns:** `Wavix::Types::APIKeyScopePermission` — View campaign analytics and Sender ID or Brand status, schedule bulk voice or SMS campaigns, register Brands, and create short links.
    
</dd>
</dl>

<dl>
<dd>

**two_fa:** `Wavix::Types::APIKeyScopePermission` — View 2FA service details and verification logs, trigger OTPs by voice or SMS, and validate verification codes.
    
</dd>
</dl>

<dl>
<dd>

**validator:** `Wavix::Types::APIKeyScopePermission` — View number validation results and trigger single or bulk validation or HLR lookup requests.
    
</dd>
</dl>

<dl>
<dd>

**webhooks:** `Wavix::Types::APIKeyScopePermission` — List, create, and delete webhooks.
    
</dd>
</dl>

<dl>
<dd>

**embeddable:** `Wavix::Types::APIKeyScopePermission` — Manage widget tokens, including listing, viewing, creating, updating, and deleting them.
    
</dd>
</dl>

<dl>
<dd>

**billing:** `Wavix::Types::APIKeyScopePermission` — Access statements, balance, payment methods, usage reports, and billing settings, including payment method updates.
    
</dd>
</dl>

<dl>
<dd>

**account:** `Wavix::Types::APIKeyScopePermission` — View and update account profile information and timezone.
    
</dd>
</dl>

<dl>
<dd>

**subaccounts:** `Wavix::Types::APIKeyScopePermission` — Manage subaccounts: list and view them, create, update, and suspend them.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::APIKeys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.api_keys.<a href="/lib/wavix/api_keys/client.rb">delete</a>(id) -> Wavix::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes the API key identified by `id`. Deletion is permanent and revokes the key immediately.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.api_keys.delete(id: 1)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — The unique ID of the API key.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::APIKeys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.api_keys.<a href="/lib/wavix/api_keys/client.rb">update</a>(id, request) -> Wavix::Types::APIKey</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an API key identified by `id`. Only the provided fields are changed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.api_keys.update(
  id: 1,
  active: true,
  restricted: true,
  scopes_enabled: true,
  permitted_ips: %w[192.168.1.1 10.0.0.1],
  label: "Production API Key"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — The unique ID of the API key.
    
</dd>
</dl>

<dl>
<dd>

**active:** `Internal::Types::Boolean` — Indicates whether the API key is active.
    
</dd>
</dl>

<dl>
<dd>

**restricted:** `Internal::Types::Boolean` — Indicates whether the API key is restricted to the listed permitted IPs.
    
</dd>
</dl>

<dl>
<dd>

**scopes_enabled:** `Internal::Types::Boolean` — Indicates whether per-resource scope permissions are enforced for the API key.
    
</dd>
</dl>

<dl>
<dd>

**permitted_ips:** `Internal::Types::Array[String]` — IP addresses allowed to use the API key when restriction is enabled.
    
</dd>
</dl>

<dl>
<dd>

**label:** `String` — Human-readable label for the API key.
    
</dd>
</dl>

<dl>
<dd>

**numbers:** `Wavix::Types::APIKeyScopePermission` — View, buy, release, and configure phone numbers, browse inventory, and manage the cart.
    
</dd>
</dl>

<dl>
<dd>

**trunks:** `Wavix::Types::APIKeyScopePermission` — View, create, update, and delete SIP trunks and their settings.
    
</dd>
</dl>

<dl>
<dd>

**calls:** `Wavix::Types::APIKeyCallsScopePermission` — Access call records and active calls, and control live call actions such as starting, answering, ending, audio playback, DTMF, streaming, and transcription requests.
    
</dd>
</dl>

<dl>
<dd>

**messages:** `Wavix::Types::APIKeyScopePermission` — Access message history and Sender IDs, send messages, manage opt-outs, and create or delete Sender IDs.
    
</dd>
</dl>

<dl>
<dd>

**recordings:** `Wavix::Types::APIKeyScopePermission` — List, download, and delete call recordings.
    
</dd>
</dl>

<dl>
<dd>

**campaigns:** `Wavix::Types::APIKeyScopePermission` — View campaign analytics and Sender ID or Brand status, schedule bulk voice or SMS campaigns, register Brands, and create short links.
    
</dd>
</dl>

<dl>
<dd>

**two_fa:** `Wavix::Types::APIKeyScopePermission` — View 2FA service details and verification logs, trigger OTPs by voice or SMS, and validate verification codes.
    
</dd>
</dl>

<dl>
<dd>

**validator:** `Wavix::Types::APIKeyScopePermission` — View number validation results and trigger single or bulk validation or HLR lookup requests.
    
</dd>
</dl>

<dl>
<dd>

**webhooks:** `Wavix::Types::APIKeyScopePermission` — List, create, and delete webhooks.
    
</dd>
</dl>

<dl>
<dd>

**embeddable:** `Wavix::Types::APIKeyScopePermission` — Manage widget tokens, including listing, viewing, creating, updating, and deleting them.
    
</dd>
</dl>

<dl>
<dd>

**billing:** `Wavix::Types::APIKeyScopePermission` — Access statements, balance, payment methods, usage reports, and billing settings, including payment method updates.
    
</dd>
</dl>

<dl>
<dd>

**account:** `Wavix::Types::APIKeyScopePermission` — View and update account profile information and timezone.
    
</dd>
</dl>

<dl>
<dd>

**subaccounts:** `Wavix::Types::APIKeyScopePermission` — Manage subaccounts: list and view them, create, update, and suspend them.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::APIKeys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## SIP trunks
<details><summary><code>client.sip_trunks.<a href="/lib/wavix/sip_trunks/client.rb">list</a>() -> Wavix::Types::SipTrunkListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of SIP trunks for the authenticated account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sip_trunks.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve. Default `1`.
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Number of records to return per page. Default `25`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SipTrunks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sip_trunks.<a href="/lib/wavix/sip_trunks/client.rb">create</a>(request) -> Wavix::Types::SipTrunkResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a SIP trunk for routing inbound and outbound calls. Returns the trunk with its generated `access_token`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sip_trunks.create(
  label: "My trunk",
  password: "4r=h;EaCB85QNtr2",
  callerid: "13132847320",
  ip_restrict: false,
  didinfo_enabled: true,
  call_restrict: true,
  cost_limit: true,
  channels_restrict: false,
  rewrite_enabled: true,
  transcription_enabled: true,
  transcription_threshold: 10
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Wavix::Types::SipTrunkCreateRequest` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SipTrunks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sip_trunks.<a href="/lib/wavix/sip_trunks/client.rb">get</a>(id) -> Wavix::Types::SipTrunkResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the SIP trunk identified by `id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sip_trunks.get(id: 3107)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — The unique ID of the SIP trunk.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SipTrunks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sip_trunks.<a href="/lib/wavix/sip_trunks/client.rb">update</a>(id, request) -> Wavix::Types::SipTrunkResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replaces the configuration of the SIP trunk identified by `id`. Omitted fields revert to their defaults.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sip_trunks.update(
  id: 3107,
  label: "My trunk",
  password: "4r=h;EaCB85QNtr2",
  callerid: "13132847320",
  ip_restrict: false,
  didinfo_enabled: true,
  call_restrict: true,
  cost_limit: true,
  channels_restrict: false,
  rewrite_enabled: true,
  transcription_enabled: true,
  transcription_threshold: 10
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — The unique ID of the SIP trunk.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Wavix::Types::SipTrunkCreateRequest` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SipTrunks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sip_trunks.<a href="/lib/wavix/sip_trunks/client.rb">delete</a>(id) -> Wavix::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes the SIP trunk identified by `id`. Deletion is permanent and stops call routing through the trunk.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sip_trunks.delete(id: 3107)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — The unique ID of the SIP trunk.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SipTrunks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Cart
<details><summary><code>client.cart.<a href="/lib/wavix/cart/client.rb">get</a>() -> Wavix::Cart::Types::GetCartResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the current purchase cart, including the phone numbers it contains and the documents each requires.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cart.get
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Wavix::Cart::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cart.<a href="/lib/wavix/cart/client.rb">add</a>(request) -> Internal::Types::Array[Object]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds the listed phone numbers to the purchase cart.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cart.add(ids: %w[541139862174 541139862175])
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**ids:** `Internal::Types::Array[String]` — Phone numbers to add to the cart.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Cart::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cart.<a href="/lib/wavix/cart/client.rb">remove</a>(request) -> Wavix::Cart::Types::RemoveCartResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes the listed phone numbers from the purchase cart.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cart.remove(ids: %w[541139862174 541139862175])
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**ids:** `Internal::Types::Array[String]` — Phone numbers to remove from the cart.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Cart::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cart.<a href="/lib/wavix/cart/client.rb">checkout</a>(request) -> Wavix::Cart::Types::CheckoutCartResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Purchases the listed phone numbers from the cart. Activation and monthly fees are deducted from the account balance.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cart.checkout(ids: %w[541139862174 541139862175])
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**ids:** `Internal::Types::Array[String]` — Phone numbers from the cart to purchase.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Cart::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Numbers
<details><summary><code>client.numbers.<a href="/lib/wavix/numbers/client.rb">list</a>() -> Wavix::Types::NumberListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of the phone numbers owned by the authenticated account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.numbers.list(
  city_id: 123,
  search: "256537",
  label: "ALEX",
  label_present: true,
  page: 2,
  per_page: 50
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**city_id:** `Integer` — Filters numbers by the ID of their city or rate center.
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` — Filters numbers by a full or partial phone number.
    
</dd>
</dl>

<dl>
<dd>

**label:** `String` — Filters numbers by `label`.
    
</dd>
</dl>

<dl>
<dd>

**label_present:** `Internal::Types::Boolean` — When `true`, returns only numbers that have a label; when `false`, only numbers without one.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve. Default `1`.
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Number of records to return per page. Default `25`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Numbers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.numbers.<a href="/lib/wavix/numbers/client.rb">delete</a>() -> Wavix::Numbers::Types::DeleteNumbersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Releases the listed phone numbers back to stock. Selection accepts either `ids` (record IDs) or `dids` (phone numbers), but not both.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.numbers.delete(dids: "47832123321,47832123324,478321233215")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**ids:** `Integer` — Record IDs of the phone numbers to release. Mutually exclusive with `dids`.
    
</dd>
</dl>

<dl>
<dd>

**dids:** `String` — Comma-separated phone numbers to release. Mutually exclusive with `ids`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Numbers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.numbers.<a href="/lib/wavix/numbers/client.rb">bulk_update</a>(request) -> Wavix::Numbers::Types::BulkUpdateNumbersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Applies the same changes to every listed phone number. Only the provided fields are changed. Destination and SMS callback changes are applied asynchronously and may not be reflected in the response immediately.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.numbers.bulk_update(ids: [123, 456])
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**ids:** `Internal::Types::Array[Integer]` 

Numbers (by ID) to apply the patch to. The same patch is
applied to every listed number.
    
</dd>
</dl>

<dl>
<dd>

**sms_enabled:** `Internal::Types::Boolean` — Indicates whether SMS is enabled for the phone numbers.
    
</dd>
</dl>

<dl>
<dd>

**destinations:** `Internal::Types::Array[Wavix::Types::NumberDestination]` — Inbound call routing destinations for the phone numbers.
    
</dd>
</dl>

<dl>
<dd>

**sms_relay_url:** `String` — Callback URL for inbound messages.
    
</dd>
</dl>

<dl>
<dd>

**call_recording_enabled:** `Internal::Types::Boolean` — Indicates whether call recording is enabled.
    
</dd>
</dl>

<dl>
<dd>

**transcription_enabled:** `Internal::Types::Boolean` — Indicates whether call transcription is enabled.
    
</dd>
</dl>

<dl>
<dd>

**transcription_threshold:** `Integer` — Minimum call duration in seconds before transcription runs.
    
</dd>
</dl>

<dl>
<dd>

**call_status_url:** `String` — Callback URL for call status updates.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Numbers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.numbers.<a href="/lib/wavix/numbers/client.rb">get</a>(id) -> Wavix::Types::Number</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the phone number identified by `id`, including its destinations, documents, and feature settings.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.numbers.get(id: 123)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — The unique ID of the phone number.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Numbers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.numbers.<a href="/lib/wavix/numbers/client.rb">update</a>(id, request) -> Wavix::Types::Number</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the phone number identified by `id`. Only the provided fields are changed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.numbers.update(id: 123)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — The unique ID of the phone number.
    
</dd>
</dl>

<dl>
<dd>

**sms_enabled:** `Internal::Types::Boolean` — Indicates whether SMS is enabled for the phone number.
    
</dd>
</dl>

<dl>
<dd>

**destinations:** `Internal::Types::Array[Wavix::Types::NumberDestination]` — Inbound call routing destinations for the phone number.
    
</dd>
</dl>

<dl>
<dd>

**sms_relay_url:** `String` — Callback URL for inbound messages.
    
</dd>
</dl>

<dl>
<dd>

**call_recording_enabled:** `Internal::Types::Boolean` — Indicates whether call recording is enabled.
    
</dd>
</dl>

<dl>
<dd>

**transcription_enabled:** `Internal::Types::Boolean` — Indicates whether call transcription is enabled.
    
</dd>
</dl>

<dl>
<dd>

**transcription_threshold:** `Integer` — Minimum call duration in seconds before transcription runs.
    
</dd>
</dl>

<dl>
<dd>

**call_status_url:** `String` — Callback URL for call status updates.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Numbers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CDRs
<details><summary><code>client.cdrs.<a href="/lib/wavix/cdrs/client.rb">list</a>() -> Wavix::Types::CdrListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of call detail records for the authenticated account, within the requested date range.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cdrs.list(
  from: "2023-01-01",
  to: "2023-09-01",
  type: "received",
  from_search: "13524815863",
  to_search: "12565378257",
  sip_trunk: "12321",
  uuid: "99df5ffd-962a-410f-bcce-d08f1f7f328c",
  page: 1,
  per_page: 25
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**from:** `String` — Start of the date range to query, in `YYYY-MM-DD` format. Inclusive.
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — End of the date range to query, in `YYYY-MM-DD` format. Inclusive.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String` — Filters CDRs by call direction. One of `placed` (outbound calls dialed by the account) or `received` (inbound calls answered by the account).
    
</dd>
</dl>

<dl>
<dd>

**disposition:** `Wavix::Types::CallDisposition` — Filters CDRs by call disposition. One of `answered` (the called party answered), `busy` (the called party was busy), `rejected` (the call was declined), `failed` (the call could not be routed), or `all` (no disposition filter).
    
</dd>
</dl>

<dl>
<dd>

**from_search:** `String` — Filters CDRs by originating phone number. Accepts a full or partial number.
    
</dd>
</dl>

<dl>
<dd>

**to_search:** `String` — Filters CDRs by destination phone number. Accepts a full or partial number.
    
</dd>
</dl>

<dl>
<dd>

**sip_trunk:** `String` — Filters outbound CDRs by SIP trunk login. Ignored for inbound calls.
    
</dd>
</dl>

<dl>
<dd>

**uuid:** `String` — Filters CDRs by the unique call ID.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve. Default `1`.
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Number of records to return per page. Default `25`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Cdrs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cdrs.<a href="/lib/wavix/cdrs/client.rb">search</a>(request) -> Wavix::Types::CdrTranscriptionSearchResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Searches call transcriptions for the given keywords or phrases and returns the matching CDRs with their transcriptions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cdrs.search(
  type: "placed",
  from: "2023-08-01",
  to: "2023-08-31",
  page: 1,
  per_page: 50
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**type:** `Wavix::Cdrs::Types::CdrSearchRequestType` — Filters by call type. One of `placed` (outbound calls dialed by the account) or `received` (inbound calls answered by the account).
    
</dd>
</dl>

<dl>
<dd>

**from:** `String` — Start date for call search in `YYYY-MM-DD` format.
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — End date for call search in `YYYY-MM-DD` format.
    
</dd>
</dl>

<dl>
<dd>

**from_search:** `String` — Originating phone number to filter results. Accepts full or partial number.
    
</dd>
</dl>

<dl>
<dd>

**to_search:** `String` — Destination phone number to filter results. Accepts full or partial number.
    
</dd>
</dl>

<dl>
<dd>

**sip_trunk:** `String` — SIP trunk login to filter outbound calls. Ignored for inbound calls.
    
</dd>
</dl>

<dl>
<dd>

**min_duration:** `Integer` — Minimum call duration in seconds.
    
</dd>
</dl>

<dl>
<dd>

**transcription:** `Wavix::Types::TranscriptionFilter` 
    
</dd>
</dl>

<dl>
<dd>

**uuid:** `String` — Call ID.
    
</dd>
</dl>

<dl>
<dd>

**disposition:** `Wavix::Cdrs::Types::CdrSearchRequestDisposition` 

Call disposition to filter results.  If omitted, returns only answered
 calls. Allowed values: `answered`, `busy`, `rejected`,
  `failed`, `all`. Use `all` to return calls
   regardless of their disposition.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Number of records per page.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Cdrs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cdrs.<a href="/lib/wavix/cdrs/client.rb">retranscribe</a>(call_id, request) -> Wavix::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Transcribes the recording of the call identified by `call_id`. Transcription is asynchronous; poll the transcription endpoint for the result.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cdrs.retranscribe(call_id: "bbaa37bf-430a-46da-ade3-c248e407016")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**call_id:** `String` — The unique ID of the call.
    
</dd>
</dl>

<dl>
<dd>

**language:** `Wavix::Types::TranscriptionLanguage` 
    
</dd>
</dl>

<dl>
<dd>

**webhook_url:** `String` — Webhook URL to receive status updates.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Cdrs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cdrs.<a href="/lib/wavix/cdrs/client.rb">transcriptions</a>(call_id) -> Wavix::Types::CdrTranscriptionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the transcription of the recorded call identified by `call_id`. Alias of the `transcription` endpoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cdrs.transcriptions(call_id: "bbaa37bf-430a-46da-ade3-c248e407016")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**call_id:** `String` — The unique ID of the call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Cdrs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cdrs.<a href="/lib/wavix/cdrs/client.rb">get</a>(call_id) -> Wavix::Types::CdrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the call detail record for the call identified by `call_id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cdrs.get(
  call_id: "aa566501-c591-4a8b-b3b9-cc1295398b72",
  show_transcription: true
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**call_id:** `String` — The unique ID of the call.
    
</dd>
</dl>

<dl>
<dd>

**show_transcription:** `Internal::Types::Boolean` — When `true`, includes the call transcription in the response.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Cdrs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cdrs.<a href="/lib/wavix/cdrs/client.rb">list_all</a>() -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Streams matching call detail records as newline-delimited JSON (NDJSON), one record per line, for bulk export.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cdrs.list_all(
  from: "2023-01-01",
  to: "2023-09-01",
  type: "received",
  from_search: "13524815863",
  to_search: "12565378257",
  sip_trunk: "12321",
  uuid: "99df5ffd-962a-410f-bcce-d08f1f7f328c",
  page: 1,
  per_page: 25
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**from:** `String` — Start of the date range to query, in `YYYY-MM-DD` format. Inclusive.
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — End of the date range to query, in `YYYY-MM-DD` format. Inclusive.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String` — Filters CDRs by call direction. One of `placed` (outbound calls dialed by the account) or `received` (inbound calls answered by the account).
    
</dd>
</dl>

<dl>
<dd>

**disposition:** `Wavix::Types::CallDisposition` — Filters CDRs by call disposition. One of `answered` (the called party answered), `busy` (the called party was busy), `rejected` (the call was declined), `failed` (the call could not be routed), or `all` (no disposition filter).
    
</dd>
</dl>

<dl>
<dd>

**from_search:** `String` — Filters CDRs by originating phone number. Accepts a full or partial number.
    
</dd>
</dl>

<dl>
<dd>

**to_search:** `String` — Filters CDRs by destination phone number. Accepts a full or partial number.
    
</dd>
</dl>

<dl>
<dd>

**sip_trunk:** `String` — Filters outbound CDRs by SIP trunk login. Ignored for inbound calls.
    
</dd>
</dl>

<dl>
<dd>

**uuid:** `String` — Filters CDRs by the unique call ID.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve. Default `1`.
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Number of records to return per page. Default `25`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Cdrs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Call recording
<details><summary><code>client.call_recording.<a href="/lib/wavix/call_recording/client.rb">list</a>() -> Wavix::Types::CallRecordingListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of call recordings for the authenticated account, filtered by date range, number, call, or SIP trunk.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_recording.list(
  from_date: "2023-01-01",
  to_date: "2023-12-31",
  from: "123456",
  to: "1987654321",
  call_uuid: "aa566501-c591-4a8b-b3b9-cc1295398b72",
  page: 1,
  per_page: 25
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**from_date:** `String` — Start of the date range to query, in `YYYY-MM-DD` format. Inclusive.
    
</dd>
</dl>

<dl>
<dd>

**to_date:** `String` — End of the date range to query, in `YYYY-MM-DD` format. Inclusive.
    
</dd>
</dl>

<dl>
<dd>

**from:** `String` — Filters recordings by originating phone number. Accepts a full or partial number.
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — Filters recordings by destination phone number. Accepts a full or partial number.
    
</dd>
</dl>

<dl>
<dd>

**call_uuid:** `String` — Filters recordings by the unique call ID.
    
</dd>
</dl>

<dl>
<dd>

**sip_trunks:** `String` — Filters recordings of outbound calls placed through the listed SIP trunk logins.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve. Default `1`.
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Number of records to return per page. Default `25`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::CallRecording::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.call_recording.<a href="/lib/wavix/call_recording/client.rb">get_by_call</a>(call_id) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Redirects to the recording file for the call identified by `call_id`. The download URL is returned in the `Location` header.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_recording.get_by_call(call_id: "aa566501-c591-4a8b-b3b9-cc1295398b72")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**call_id:** `String` — The unique ID of the call whose recording is retrieved.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::CallRecording::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.call_recording.<a href="/lib/wavix/call_recording/client.rb">get</a>(id) -> Wavix::Types::Recording</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the call recording identified by `id`, including its metadata and download URL.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_recording.get(id: 123)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — The unique ID of the call recording.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::CallRecording::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.call_recording.<a href="/lib/wavix/call_recording/client.rb">delete</a>(id) -> Wavix::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes the call recording identified by `id`. Deletion is permanent and removes the recording file.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_recording.delete(id: 123)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — The unique ID of the call recording.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::CallRecording::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Speech Analytics
<details><summary><code>client.speech_analytics.<a href="/lib/wavix/speech_analytics/client.rb">create</a>(request) -> Wavix::SpeechAnalytics::Types::CreateSpeechAnalyticsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Uploads an audio file for transcription. Transcription is asynchronous; Wavix sends a POST callback to `callback_url` when it completes, including the `request_id` returned by this request.

Callback body:
```json
   {
        "request_id": "e865ea07-25af-4fdd-876e-04b0d41d5ebd",
        "status": "completed",
        "error": null
   }
```

- `request_id`: ID of the transcription request.
- `status`: One of `completed` (transcription succeeded) or `failed` (transcription encountered an error).
- `error`: Error description, or `null` when the transcription succeeded.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.speech_analytics.create
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Wavix::SpeechAnalytics::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.speech_analytics.<a href="/lib/wavix/speech_analytics/client.rb">get</a>(request_id) -> Wavix::SpeechAnalytics::Types::GetSpeechAnalyticsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the transcription for the request identified by `request_id`, including transcript, speaker turns, and insights when available.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.speech_analytics.get(request_id: "e865ea07-25af-4fdd-876e-04b0d41d5ebd")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_id:** `String` — The `request_id` of the transcription, returned when the file was uploaded.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SpeechAnalytics::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.speech_analytics.<a href="/lib/wavix/speech_analytics/client.rb">retranscribe</a>(request_id, request) -> Wavix::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Re-runs transcription on the file identified by `request_id`, replacing the existing transcript.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.speech_analytics.retranscribe(
  request_id: "e865ea07-25af-4fdd-876e-04b0d41d5ebd",
  callback_url: "https://you-site.com/webhook"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_id:** `String` — The `request_id` of the transcription, returned when the file was uploaded.
    
</dd>
</dl>

<dl>
<dd>

**callback_url:** `String` — Callback URL for transcription status updates.
    
</dd>
</dl>

<dl>
<dd>

**insights:** `Internal::Types::Boolean` — Indicates whether to enable insights generation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SpeechAnalytics::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Call webhooks
<details><summary><code>client.call_webhooks.<a href="/lib/wavix/call_webhooks/client.rb">list</a>() -> Internal::Types::Array[Wavix::Types::CallWebhookListResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the configured call webhooks for the authenticated account. Wavix sends POST callbacks for `on-call` and `post-call` events.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_webhooks.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Wavix::CallWebhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.call_webhooks.<a href="/lib/wavix/call_webhooks/client.rb">create</a>(request) -> Wavix::Types::CallWebhook</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Registers a callback URL for the `on-call` or `post-call` event. Wavix sends a POST callback to the URL when the event occurs.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_webhooks.create(
  url: "https://you-site.com/webhook",
  event_type: "post-call"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**url:** `String` — Webhook URL to send call events to.
    
</dd>
</dl>

<dl>
<dd>

**event_type:** `Wavix::CallWebhooks::Types::CallWebhooksCreateRequestEventType` 

Allowed values: `on-call`, `post-call`.
 - `on-call`: Sends real-time status updates
  when a call starts, is answered, and ends.

 - `post-call`: Sends a callback after the call ends
  with disposition, duration, and cost.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::CallWebhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.call_webhooks.<a href="/lib/wavix/call_webhooks/client.rb">delete</a>() -> Wavix::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes the call webhook for the given event type. Wavix stops sending callbacks for that event.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_webhooks.delete(event_type: "post-call")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**event_type:** `Wavix::CallWebhooks::Types::DeleteCallWebhooksRequestEventType` — Event type of the webhook to delete. One of `post-call` (callbacks sent after a call ends) or `on-call` (real-time call status callbacks during a call).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::CallWebhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Call control
<details><summary><code>client.call_control.<a href="/lib/wavix/call_control/client.rb">list</a>() -> Wavix::Types::CallListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the calls currently in progress for the authenticated account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_control.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Wavix::CallControl::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.call_control.<a href="/lib/wavix/call_control/client.rb">create</a>(request) -> Wavix::Types::CallCreateResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Places an outbound call. Returns the call with its `uuid` for tracking and control.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_control.create(
  from: "+1234567890",
  to: "+1987654321",
  callback_url: "https://examples.com/callback"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**from:** `String` — Caller ID. Must be an active or verified phone number on the account.
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — Destination number in E.164 format
    
</dd>
</dl>

<dl>
<dd>

**callback_url:** `String` — The callback URL where Wavix sends the call status updates
    
</dd>
</dl>

<dl>
<dd>

**recording:** `Internal::Types::Boolean` — Specifies whether to record the call
    
</dd>
</dl>

<dl>
<dd>

**voicemail_detection:** `Internal::Types::Boolean` — Specifies whether the AMD is turned on for the call
    
</dd>
</dl>

<dl>
<dd>

**tag:** `String` — Call metadata
    
</dd>
</dl>

<dl>
<dd>

**timeout:** `Integer` — The ring timeout, in seconds, before the call is considered unanswered.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::CallControl::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.call_control.<a href="/lib/wavix/call_control/client.rb">get</a>(id) -> Wavix::Types::CallResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the call identified by `id`, including its current event and timestamps.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_control.get(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The `uuid` of the call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::CallControl::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.call_control.<a href="/lib/wavix/call_control/client.rb">delete</a>(id) -> Wavix::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Ends the active call identified by `id` by hanging up.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_control.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The `uuid` of the call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::CallControl::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.call_control.<a href="/lib/wavix/call_control/client.rb">update</a>(id, request) -> Wavix::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the active call identified by `id`. Only the `tag` field can be changed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_control.update(
  id: "id",
  tag: "marketing-campaign"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The `uuid` of the call.
    
</dd>
</dl>

<dl>
<dd>

**tag:** `String` — User-defined label attached to the Call for tracking or reporting.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::CallControl::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.call_control.<a href="/lib/wavix/call_control/client.rb">answer</a>(id, request) -> Wavix::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Answers the inbound call identified by `id`. Optionally starts media streaming on answer.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_control.answer(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The `uuid` of the call.
    
</dd>
</dl>

<dl>
<dd>

**call_recording:** `Internal::Types::Boolean` — Indicates whether the call should be recorded.
    
</dd>
</dl>

<dl>
<dd>

**call_transcription:** `Internal::Types::Boolean` — Indicates whether the call should be transcribed after it ends.
    
</dd>
</dl>

<dl>
<dd>

**stream_url:** `String` — WebSocket URL to stream the call.
    
</dd>
</dl>

<dl>
<dd>

**stream_type:** `Wavix::Types::CallStreamType` — Direction of audio streamed to `stream_url`.
    
</dd>
</dl>

<dl>
<dd>

**stream_channel:** `Wavix::Types::CallStreamChannel` — Audio channel streamed to `stream_url`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::CallControl::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.call_control.<a href="/lib/wavix/call_control/client.rb">collect</a>(id, request) -> Wavix::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Collects DTMF keypad input from the caller on the active call identified by `id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_control.collect(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The `uuid` of the call.
    
</dd>
</dl>

<dl>
<dd>

**max_digits:** `Integer` — Maximum number of digits to collect.
    
</dd>
</dl>

<dl>
<dd>

**timeout:** `Integer` — Timeout for digit collection in seconds.
    
</dd>
</dl>

<dl>
<dd>

**termination_character:** `String` — DTMF character that ends input collection.
    
</dd>
</dl>

<dl>
<dd>

**max_attempts:** `Integer` — Maximum number of attempts.
    
</dd>
</dl>

<dl>
<dd>

**prompt:** `Wavix::CallControl::Types::CallDtmfCollectRequestPrompt` 

Prompt to play before collecting digits.
 Play a prerecorded audio file or use Wavix Text-To-Speech.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::CallControl::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## NumberValidator
<details><summary><code>client.number_validator.<a href="/lib/wavix/number_validator/client.rb">get</a>() -> Wavix::NumberValidator::Types::GetNumberValidatorResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Validates a single phone number and returns line type, carrier, portability, and reachability details.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.number_validator.get(
  phone_number: "971569483322",
  type: "format"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**phone_number:** `String` — The phone number to validate, in E.164 format with or without the leading `+`.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Wavix::Types::PhoneNumberValidationType` — Depth of validation to perform. Accepts a `PhoneNumberValidationType` value.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::NumberValidator::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.number_validator.<a href="/lib/wavix/number_validator/client.rb">create_bulk</a>(request) -> Wavix::Types::NumberValidatorCreateBulkResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Validates a batch of phone numbers. When `async` is `true`, returns a `request_id` to poll for results instead of the validation details.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.number_validator.create_bulk(
  phone_numbers: %w[971501390098 971504359195],
  type: "format",
  async: true,
  force: true
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**phone_numbers:** `Internal::Types::Array[String]` — List of phone numbers to get detailed information about.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Wavix::Types::PhoneNumberValidationType` 
    
</dd>
</dl>

<dl>
<dd>

**async:** `Internal::Types::Boolean` — Indicates whether the request should be executed asynchronously. If `true`, the response will include a `request_uuid` that can be used to poll for results. If `false`, the response will include validation results directly.
    
</dd>
</dl>

<dl>
<dd>

**force:** `Internal::Types::Boolean` — Indicates whether to force a fresh validation instead of returning a previously cached result.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::NumberValidator::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Voice campaigns
<details><summary><code>client.voice_campaigns.<a href="/lib/wavix/voice_campaigns/client.rb">create</a>(request) -> Wavix::Types::VoiceCampaignsCreateResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Launches a voice campaign that places an outbound call using a pre-configured scenario. Track progress with the returned voice campaign `id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.voice_campaigns.create(voice_campaign: {
  callflow_id: 3212,
  caller_id: "13123310912",
  contact: "16729923812"
})
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**voice_campaign:** `Wavix::Types::VoiceCampaignResponse` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::VoiceCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.voice_campaigns.<a href="/lib/wavix/voice_campaigns/client.rb">get</a>(id) -> Wavix::Types::VoiceCampaignsGetResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the voice campaign identified by `id`, including its current status.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.voice_campaigns.get(id: 2321423)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — The unique ID of the voice campaign to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::VoiceCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Link shortener
<details><summary><code>client.link_shortener.<a href="/lib/wavix/link_shortener/client.rb">create</a>(request) -> Wavix::Types::ShortLinkResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a short link that redirects to the target URL and tracks click metrics.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.link_shortener.create(link: "https://your-site.com/long-url")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**link:** `String` — Target URL to shorten.
    
</dd>
</dl>

<dl>
<dd>

**expiration_time:** `String` — Expiration date and time in ISO 8601 format.
    
</dd>
</dl>

<dl>
<dd>

**fallback_url:** `String` — Fallback URL for expired or invalid links.
    
</dd>
</dl>

<dl>
<dd>

**phone:** `String` — Phone number for the short link.
    
</dd>
</dl>

<dl>
<dd>

**utm_campaign:** `String` — UTM campaign name for tracking insights.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::LinkShortener::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Profile
<details><summary><code>client.profile.<a href="/lib/wavix/profile/client.rb">get</a>() -> Wavix::Types::ProfileResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the profile and billing details of the authenticated account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.profile.get
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Wavix::Profile::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.profile.<a href="/lib/wavix/profile/client.rb">update</a>(request) -> Wavix::Types::ProfileResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the profile and billing details of the authenticated account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.profile.update
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**additional_info:** `String` — Additional information associated with the account.
    
</dd>
</dl>

<dl>
<dd>

**contacts:** `String` — Email associated with the account.
    
</dd>
</dl>

<dl>
<dd>

**default_short_link_endpoint:** `String` — Default short link endpoint.
    
</dd>
</dl>

<dl>
<dd>

**first_name:** `String` — Account owner's first name.
    
</dd>
</dl>

<dl>
<dd>

**last_name:** `String` — Account owner's last name.
    
</dd>
</dl>

<dl>
<dd>

**phone:** `String` — Account owner's phone number
    
</dd>
</dl>

<dl>
<dd>

**sms_relay_url:** `String` — Callback URL to forward inbound SMS to.
    
</dd>
</dl>

<dl>
<dd>

**dlr_relay_url:** `String` — Callback URL to forward message delivery reports (DLRs) to.
    
</dd>
</dl>

<dl>
<dd>

**time_zone:** `String` — Timezone configured on the account.
    
</dd>
</dl>

<dl>
<dd>

**job_title:** `String` — Account owner's job title.
    
</dd>
</dl>

<dl>
<dd>

**company_info:** `Wavix::Profile::Types::ProfileUpdateRequestCompanyInfo` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Profile::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## SubAccounts
<details><summary><code>client.sub_accounts.<a href="/lib/wavix/sub_accounts/client.rb">list</a>() -> Wavix::Types::SubAccountsListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of sub-accounts under the authenticated master account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sub_accounts.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**status:** `Wavix::SubAccounts::Types::ListSubAccountsRequestStatus` — Filters sub-accounts by status. One of `enabled` (the sub-account is active) or `disabled` (the sub-account is suspended).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SubAccounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sub_accounts.<a href="/lib/wavix/sub_accounts/client.rb">create</a>(request) -> Wavix::Types::SubOrganizationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a sub-account under the authenticated master account. Returns the sub-account with its generated `api_key`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sub_accounts.create(
  name: "Company",
  default_destinations: {
    sms_endpoint: "https://examples.com/sms",
    dlr_endpoint: "https://examples.com/dlr"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**name:** `String` — Sub-account name.
    
</dd>
</dl>

<dl>
<dd>

**default_destinations:** `Wavix::SubAccounts::Types::SubAccountsCreateRequestDefaultDestinations` — Default webhook URLs for inbound messages and delivery reports.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SubAccounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sub_accounts.<a href="/lib/wavix/sub_accounts/client.rb">get</a>(id) -> Wavix::Types::SubOrganizationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the sub-account identified by `id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sub_accounts.get(id: 123)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — The unique ID of the sub-account.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SubAccounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sub_accounts.<a href="/lib/wavix/sub_accounts/client.rb">update</a>(id, request) -> Wavix::Types::SubOrganizationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replaces the configuration of the sub-account identified by `id`. Omitted fields revert to their defaults.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sub_accounts.update(
  id: 123,
  name: "Updated Company Name",
  status: "enabled",
  default_destinations: {
    sms_endpoint: "https://examples.com/sms",
    dlr_endpoint: "https://examples.com/dlr"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — The unique ID of the sub-account.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — Sub-account name.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Wavix::SubAccounts::Types::SubAccountsUpdateRequestStatus` — Status of the subaccount. One of `enabled` (the subaccount is active and can be used) or `disabled` (the subaccount is suspended).
    
</dd>
</dl>

<dl>
<dd>

**default_destinations:** `Wavix::SubAccounts::Types::SubAccountsUpdateRequestDefaultDestinations` — Default webhook URLs for inbound messages and delivery reports.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SubAccounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Billing Transactions
<details><summary><code>client.billing.transactions.<a href="/lib/wavix/billing/transactions/client.rb">list</a>() -> Wavix::Billing::Transactions::Types::ListTransactionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of billing transactions for the authenticated account within the requested date range.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.billing.transactions.list(
  from_date: "2023-08-01",
  to_date: "2023-08-31",
  details_contains: "monthly",
  payments: true,
  page: 1,
  per_page: 25
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**from_date:** `String` — Start of the date range to query, in `YYYY-MM-DD` format. Inclusive.
    
</dd>
</dl>

<dl>
<dd>

**to_date:** `String` — End of the date range to query, in `YYYY-MM-DD` format. Inclusive.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Integer` — Filters transactions by type. Accepts a `TransactionType` value.
    
</dd>
</dl>

<dl>
<dd>

**details_contains:** `String` — Filters transactions whose `details` contain the given substring.
    
</dd>
</dl>

<dl>
<dd>

**payments:** `Internal::Types::Boolean` — When `true`, returns only account top-up transactions. Defaults to all transaction types.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve. Default `1`.
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Number of records to return per page. Default `25`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Billing::Transactions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Billing Invoices
<details><summary><code>client.billing.invoices.<a href="/lib/wavix/billing/invoices/client.rb">list</a>() -> Wavix::Billing::Invoices::Types::ListInvoicesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the auto-generated financial statements for the authenticated account, paginated and ordered by billing period.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.billing.invoices.list(
  page: 1,
  per_page: 25
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve. Default `1`.
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Number of records to return per page. Default `25`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Billing::Invoices::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.invoices.<a href="/lib/wavix/billing/invoices/client.rb">download</a>(id) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the financial statement identified by `id` as a PDF file.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.billing.invoices.download(id: 1)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — The unique ID of the financial statement to download.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Billing::Invoices::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Buy Countries
<details><summary><code>client.buy.countries.<a href="/lib/wavix/buy/countries/client.rb">list</a>() -> Wavix::Buy::Countries::Types::ListCountriesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a list of countries where phone numbers are available.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.buy.countries.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**text_enabled_only:** `Internal::Types::Boolean` — When `true`, returns only countries that offer text-enabled phone numbers.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Buy::Countries::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Buy Regions
<details><summary><code>client.buy.regions.<a href="/lib/wavix/buy/regions/client.rb">list</a>(country_id) -> Wavix::Buy::Regions::Types::ListRegionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a list of regions (states or provinces) for countries where `has_provinces_or_states` is `true`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.buy.regions.list(country_id: 1892)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**country_id:** `Integer` — The unique ID of the country.
    
</dd>
</dl>

<dl>
<dd>

**text_enabled_only:** `Internal::Types::Boolean` — When `true`, returns only regions that offer text-enabled numbers.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Buy::Regions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Buy Cities
<details><summary><code>client.buy.cities.<a href="/lib/wavix/buy/cities/client.rb">list</a>(country_id) -> Wavix::Buy::Cities::Types::ListCitiesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a list of cities for countries where
 `has_provinces_or_states` is `false`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.buy.cities.list(country_id: 1891)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**country_id:** `Integer` — The unique ID of the country.
    
</dd>
</dl>

<dl>
<dd>

**text_enabled_only:** `Internal::Types::Boolean` — When `true`, returns only cities that offer text-enabled numbers.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Buy::Cities::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Buy RegionCities
<details><summary><code>client.buy.region_cities.<a href="/lib/wavix/buy/region_cities/client.rb">list</a>(country_id, region_id) -> Wavix::Buy::RegionCities::Types::ListRegionCitiesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a list of cities in the specified region for countries where `has_provinces_or_states` is `true`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.buy.region_cities.list(
  country_id: 1891,
  region_id: 821
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**country_id:** `Integer` — The unique ID of the country.
    
</dd>
</dl>

<dl>
<dd>

**region_id:** `Integer` — The unique ID of the region.
    
</dd>
</dl>

<dl>
<dd>

**text_enabled_only:** `Internal::Types::Boolean` — When `true`, returns only cities that offer text-enabled numbers.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Buy::RegionCities::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Buy Numbers
<details><summary><code>client.buy.numbers.<a href="/lib/wavix/buy/numbers/client.rb">list</a>(country_id, city_id) -> Wavix::Buy::Numbers::Types::ListNumbersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of phone numbers available for purchase in the specified city.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.buy.numbers.list(
  country_id: 1,
  city_id: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**country_id:** `Integer` — The unique ID of the country.
    
</dd>
</dl>

<dl>
<dd>

**city_id:** `Integer` — The unique ID of the city.
    
</dd>
</dl>

<dl>
<dd>

**text_enabled_only:** `Internal::Types::Boolean` — When `true`, returns only text-enabled phone numbers.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve. Default `1`.
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Number of records to return per page. Default `25`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Buy::Numbers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CallControl Streams
<details><summary><code>client.call_control.streams.<a href="/lib/wavix/call_control/streams/client.rb">create</a>(call_id, request) -> Wavix::Types::CallStreamResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Starts streaming the media of the call identified by `call_id` to the configured destination. Returns the `stream_id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_control.streams.create(
  call_id: "call_id",
  stream_url: "wss://examples.com/stream",
  stream_type: "oneway",
  stream_channel: "inbound"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**call_id:** `String` — The `uuid` of the call.
    
</dd>
</dl>

<dl>
<dd>

**stream_url:** `String` — WebSocket URL for call streaming
    
</dd>
</dl>

<dl>
<dd>

**stream_type:** `Wavix::Types::CallStreamType` — Direction of audio streamed to `stream_url`.
    
</dd>
</dl>

<dl>
<dd>

**stream_channel:** `Wavix::Types::CallStreamChannel` — Audio channel streamed to `stream_url`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::CallControl::Streams::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.call_control.streams.<a href="/lib/wavix/call_control/streams/client.rb">delete</a>(call_id, id) -> Wavix::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Stops the media stream identified by `id` on the call identified by `call_id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_control.streams.delete(
  call_id: "call_id",
  id: "id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**call_id:** `String` — The `uuid` of the call.
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — The `uuid` of the media stream to stop.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::CallControl::Streams::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CallControl Audio
<details><summary><code>client.call_control.audio.<a href="/lib/wavix/call_control/audio/client.rb">play</a>(id, request) -> Wavix::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Plays an audio prompt into the active call identified by `id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_control.audio.play(
  id: "id",
  audio_file: "https://examples.com/audio.wav"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The `uuid` of the call.
    
</dd>
</dl>

<dl>
<dd>

**audio_file:** `String` — URL of the audio file to play to the call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::CallControl::Audio::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.call_control.audio.<a href="/lib/wavix/call_control/audio/client.rb">stop</a>(id) -> Wavix::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Stops audio playback in the active call identified by `id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.call_control.audio.stop(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The `uuid` of the call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::CallControl::Audio::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Cdrs Transcription
<details><summary><code>client.cdrs.transcription.<a href="/lib/wavix/cdrs/transcription/client.rb">get</a>(call_id) -> Wavix::Types::CdrTranscriptionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the transcription of the recorded call identified by `call_id`, including the transcript, speaker turns, and summary.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cdrs.transcription.get(call_id: "bbaa37bf-430a-46da-ade3-c248e407016")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**call_id:** `String` — The unique ID of the call.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Cdrs::Transcription::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## LinkShortener Metrics
<details><summary><code>client.link_shortener.metrics.<a href="/lib/wavix/link_shortener/metrics/client.rb">list</a>() -> Wavix::Types::ShortLinkMetricsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns per-click metrics for short links, including device, location, and campaign attribution, within the requested date range.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.link_shortener.metrics.list(
  from: "2023-05-01",
  to: "2023-05-31",
  phone: "1872025555",
  utm_campaign: "summer",
  page: 1,
  per_page: 25
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**from:** `String` — Start of the date range to query, in `YYYY-MM-DD` format. Inclusive.
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — End of the date range to query, in `YYYY-MM-DD` format. Inclusive.
    
</dd>
</dl>

<dl>
<dd>

**phone:** `String` — Filters metrics by the phone number associated with the click, in E.164 format.
    
</dd>
</dl>

<dl>
<dd>

**utm_campaign:** `String` — Filters metrics by `utm_campaign` name.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve. Default `1`.
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Number of records to return per page. Default `25`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::LinkShortener::Metrics::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## NumberValidator Results
<details><summary><code>client.number_validator.results.<a href="/lib/wavix/number_validator/results/client.rb">get</a>(request_id) -> Wavix::Types::PhoneValidationBatchResultResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the results of an asynchronous batch validation identified by `request_id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.number_validator.results.get(request_id: "12542c5c-1a17-4d12-a163-5b68543e75f6")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_id:** `String` — The `request_id` returned by the asynchronous bulk validation request.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::NumberValidator::Results::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Numbers Papers
<details><summary><code>client.numbers.papers.<a href="/lib/wavix/numbers/papers/client.rb">upload</a>(request) -> Internal::Types::Array[Wavix::Types::NumberDocument]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Uploads a verification document for one or more phone numbers.
Uploaded files must meet the following requirements:
- Allowed formats: PNG, JPG, JPEG, TIFF, BMP, or PDF
- Maximum file size: 10 MB
- Files can't be password protected
- PDF files must not contain digital signatures
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.numbers.papers.upload
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Wavix::Numbers::Papers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Profile Config
<details><summary><code>client.profile.config.<a href="/lib/wavix/profile/config/client.rb">get</a>() -> Wavix::Profile::Config::Types::GetConfigResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the balance and global limits configured for the authenticated account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.profile.config.get
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Wavix::Profile::Config::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## SmsAndMms SenderIDs
<details><summary><code>client.sms_and_mms.sender_ids.<a href="/lib/wavix/sms_and_mms/sender_ids/client.rb">list</a>() -> Wavix::Types::SenderIDListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the Sender IDs registered for the authenticated account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_and_mms.sender_ids.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Wavix::SmsAndMms::SenderIDs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sms_and_mms.sender_ids.<a href="/lib/wavix/sms_and_mms/sender_ids/client.rb">create</a>(request) -> Wavix::Types::SenderIDDetails</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a Sender ID. Use the 10DLC API to create Sender IDs in the US.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_and_mms.sender_ids.create(
  sender_id: "Wavix",
  type: "numeric",
  countries: ["countries"],
  usecase: "transactional"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sender_id:** `String` — Sender ID name. Can be either an alphanumeric string or a  phone number.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Wavix::Types::SenderIDType` 
    
</dd>
</dl>

<dl>
<dd>

**countries:** `Internal::Types::Array[String]` — Two-letter ISO country codes where the Sender ID is allowlisted.
    
</dd>
</dl>

<dl>
<dd>

**usecase:** `Wavix::SmsAndMms::SenderIDs::Types::SenderIDCreateRequestUsecase` — Primary use case for the Sender ID. One of `transactional` (account or order notifications), `promo` (marketing and promotional messages), or `authentication` (one-time passcodes and verification codes).
    
</dd>
</dl>

<dl>
<dd>

**monthly_volume:** `Wavix::SmsAndMms::SenderIDs::Types::SenderIDCreateRequestMonthlyVolume` — Expected number of messages sent per month from the Sender ID. One of `1-1000`, `1001-20000`, `20001-50000`, `50001-100000`, or `More than 100000`. Each value is the message-count band for the month.
    
</dd>
</dl>

<dl>
<dd>

**samples:** `Internal::Types::Array[String]` — Message samples.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SmsAndMms::SenderIDs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sms_and_mms.sender_ids.<a href="/lib/wavix/sms_and_mms/sender_ids/client.rb">get</a>(id) -> Wavix::Types::SenderIDResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the Sender ID identified by `id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_and_mms.sender_ids.get(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique ID of the Sender ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SmsAndMms::SenderIDs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sms_and_mms.sender_ids.<a href="/lib/wavix/sms_and_mms/sender_ids/client.rb">delete</a>(id) -> Wavix::SmsAndMms::SenderIDs::Types::DeleteSenderIDsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes the Sender ID identified by `id`. Deletion is permanent.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_and_mms.sender_ids.delete(id: "fc34ba88-1eee-476e-b09e-dae63dc441e0")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique ID of the Sender ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SmsAndMms::SenderIDs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## SmsAndMms OptOuts
<details><summary><code>client.sms_and_mms.opt_outs.<a href="/lib/wavix/sms_and_mms/opt_outs/client.rb">list</a>() -> Wavix::Types::OptOutsListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of phone numbers that have opted out of receiving messages from the authenticated account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_and_mms.opt_outs.list(
  sender_id: "MySender",
  campaign_id: "C123456",
  created_after: "2024-01-01",
  created_before: "2024-12-31"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sender_id:** `String` — Filters opt-outs by the Sender ID they apply to.
    
</dd>
</dl>

<dl>
<dd>

**campaign_id:** `String` — Filters opt-outs by the 10DLC campaign ID they apply to.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Returns opt-outs created on or after this date, in `YYYY-MM-DD` format.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Returns opt-outs created on or before this date, in `YYYY-MM-DD` format.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve. Minimum `1`, default `1`.
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Number of records to return per page. Default `25`, maximum `100`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SmsAndMms::OptOuts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sms_and_mms.opt_outs.<a href="/lib/wavix/sms_and_mms/opt_outs/client.rb">create</a>(request) -> Wavix::SmsAndMms::OptOuts::Types::CreateOptOutsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Opts a phone number out of receiving messages from a Sender ID, a 10DLC campaign, or all outbound messages.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_and_mms.opt_outs.create(opt_out: {
  number: "16419252149",
  sender_id: "15072429497"
})
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**opt_out:** `Wavix::Types::OptOut` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SmsAndMms::OptOuts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## SmsAndMms Messages
<details><summary><code>client.sms_and_mms.messages.<a href="/lib/wavix/sms_and_mms/messages/client.rb">list</a>() -> Wavix::SmsAndMms::Messages::Types::ListMessagesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of SMS and MMS messages for the authenticated account, filtered by direction, date, and other criteria.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_and_mms.messages.list(
  sent_after: "2023-04-10",
  sent_before: "2023-04-13",
  type: "outbound",
  from: "15072429497",
  to: "16419252149",
  tag: "campaignX",
  page: 2,
  per_page: 50
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sent_after:** `String` — Returns messages sent on or after this date, in `YYYY-MM-DD` format.
    
</dd>
</dl>

<dl>
<dd>

**sent_before:** `String` — Returns messages sent on or before this date, in `YYYY-MM-DD` format.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String` — Filters messages by direction. One of `inbound` (messages received by the account) or `outbound` (messages sent by the account).
    
</dd>
</dl>

<dl>
<dd>

**from:** `String` — Filters by message sender. For `outbound` messages, the Sender ID used to send the message; for `inbound` messages, the originating phone number.
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — Filters by message recipient. For `outbound` messages, the destination phone number; for `inbound` messages, an SMS-enabled number on the Wavix platform.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Wavix::Types::MessageDeliveryStatus` — Filters messages by delivery status. Accepts a `MessageDeliveryStatus` value.
    
</dd>
</dl>

<dl>
<dd>

**tag:** `String` — Filters messages by `tag`. Supported for outbound messages only.
    
</dd>
</dl>

<dl>
<dd>

**message_type:** `Wavix::SmsAndMms::Messages::Types::ListMessagesRequestMessageType` — Filters messages by type. One of `sms` (text message) or `mms` (multimedia message).
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve. Default `1`.
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Number of records to return per page. Default `25`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SmsAndMms::Messages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sms_and_mms.messages.<a href="/lib/wavix/sms_and_mms/messages/client.rb">send_</a>(request) -> Wavix::Types::SendMessagesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sends an SMS or MMS message. MMS is supported for U.S. numbers only. Track delivery using the returned `message_id` and the message status callback.
**Rate limit**: 20 messages per phone number in 24 hours.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
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
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**from:** `String` — Sender ID. Numeric or alphanumeric.
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — Recipient phone number.
    
</dd>
</dl>

<dl>
<dd>

**message_body:** `Wavix::Types::MessageBody` 
    
</dd>
</dl>

<dl>
<dd>

**callback_url:** `String` — Callback URL for delivery reports.
    
</dd>
</dl>

<dl>
<dd>

**validity:** `Integer` — Message validity period in seconds. Delivery attempts stop after this period expires.
    
</dd>
</dl>

<dl>
<dd>

**tag:** `String` — Tag to group messages, such as for a specific campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SmsAndMms::Messages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sms_and_mms.messages.<a href="/lib/wavix/sms_and_mms/messages/client.rb">get</a>(id) -> Wavix::SmsAndMms::Messages::Types::GetMessagesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the SMS or MMS message identified by `id`, including its delivery status and content.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_and_mms.messages.get(id: "3a525ca2-6909-4c72-9399-905adf7f3a74")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique ID of the message.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SmsAndMms::Messages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sms_and_mms.messages.<a href="/lib/wavix/sms_and_mms/messages/client.rb">list_all</a>() -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Streams matching SMS and MMS messages as newline-delimited JSON (NDJSON), one message per line, for bulk export.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_and_mms.messages.list_all(
  sent_after: "2023-04-10T00:00:00",
  sent_before: "2023-04-13T23:59:59",
  type: "outbound",
  from: "15072429497",
  to: "16419252149",
  tag: "campaignX"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sent_after:** `String` — Returns messages sent on or after this timestamp, in `YYYY-MM-DDTHH:MM:SS` format.
    
</dd>
</dl>

<dl>
<dd>

**sent_before:** `String` — Returns messages sent on or before this timestamp, in `YYYY-MM-DDTHH:MM:SS` format.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String` — Filters messages by direction. One of `inbound` (messages received by the account) or `outbound` (messages sent by the account).
    
</dd>
</dl>

<dl>
<dd>

**from:** `String` — Filters by message sender. For `outbound` messages, the Sender ID used to send the message; for `inbound` messages, the originating phone number.
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — Filters by message recipient. For `outbound` messages, the destination phone number; for `inbound` messages, the SMS-enabled number that received the message.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Wavix::Types::MessageDeliveryStatus` — Filters messages by delivery status. Accepts a `MessageDeliveryStatus` value.
    
</dd>
</dl>

<dl>
<dd>

**tag:** `String` — Filters messages by `tag`. Supported for outbound messages only.
    
</dd>
</dl>

<dl>
<dd>

**message_type:** `Wavix::SmsAndMms::Messages::Types::ListAllMessagesRequestMessageType` — Filters messages by type. One of `sms` (text message) or `mms` (multimedia message).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SmsAndMms::Messages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## SpeechAnalytics File
<details><summary><code>client.speech_analytics.file.<a href="/lib/wavix/speech_analytics/file/client.rb">get</a>(request_id) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the original audio file submitted for the transcription identified by `request_id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.speech_analytics.file.get(request_id: "request_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_id:** `String` — The `request_id` of the transcription, returned when the file was uploaded.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SpeechAnalytics::File::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## SubAccounts Transactions
<details><summary><code>client.sub_accounts.transactions.<a href="/lib/wavix/sub_accounts/transactions/client.rb">list</a>(id) -> Wavix::Types::SubAccountsTransactionsListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of billing transactions for the sub-account identified by `id`, within the requested date range.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sub_accounts.transactions.list(
  id: 123,
  from_date: "2023-01-01",
  to_date: "2023-12-31",
  page: 1,
  per_page: 25
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — The unique ID of the sub-account.
    
</dd>
</dl>

<dl>
<dd>

**from_date:** `String` — Start of the date range to query, in `YYYY-MM-DD` format. Inclusive.
    
</dd>
</dl>

<dl>
<dd>

**to_date:** `String` — End of the date range to query, in `YYYY-MM-DD` format. Inclusive.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Integer` — Filters transactions by type. Accepts a single transaction type code or an array of codes.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve. Default `1`.
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Number of records to return per page. Default `25`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::SubAccounts::Transactions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TenDlc Brands
<details><summary><code>client.ten_dlc.brands.<a href="/lib/wavix/ten_dlc/brands/client.rb">list</a>() -> Wavix::TenDlc::Brands::Types::ListBrandsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of 10DLC Brands for the authenticated account, filtered by date, name, legal name, and status.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.brands.list(
  dba_name: "Brand",
  company_name: "Company",
  entity_type: "PRIVATE_PROFIT",
  status: "VERIFIED",
  country: "US",
  show_deleted: false,
  ein_taxid: "999999999",
  mock: false,
  created_before: "2024-08-22",
  created_after: "2024-08-22",
  page: 1,
  per_page: 25
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**dba_name:** `String` — Filters Brands by `dba_name` (doing-business-as name). Matches partial values.
    
</dd>
</dl>

<dl>
<dd>

**company_name:** `String` — Filters Brands by `company_name` (registered legal name). Matches partial values.
    
</dd>
</dl>

<dl>
<dd>

**entity_type:** `String` — Filters Brands by business entity type, such as `PRIVATE_PROFIT`.
    
</dd>
</dl>

<dl>
<dd>

**status:** `String` — Filters Brands by identity verification status, such as `VERIFIED`.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Filters Brands by registration country, as an ISO 3166-1 alpha-2 code (e.g., `US`).
    
</dd>
</dl>

<dl>
<dd>

**show_deleted:** `Internal::Types::Boolean` — When `true`, includes deleted Brands in the results. Default `false`.
    
</dd>
</dl>

<dl>
<dd>

**ein_taxid:** `String` — Filters Brands by their Employer Identification Number (EIN) or tax ID.
    
</dd>
</dl>

<dl>
<dd>

**mock:** `Internal::Types::Boolean` — When `true`, returns only mock Brands used for testing. Default `false`.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Returns brands created on or before this date, in `YYYY-MM-DD` format.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Returns brands created on or after this date, in `YYYY-MM-DD` format.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve. Default `1`.
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Number of records to return per page. Default `25`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::Brands::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.brands.<a href="/lib/wavix/ten_dlc/brands/client.rb">create</a>(request) -> Wavix::TenDlc::Brands::Types::CreateBrandsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Registers a 10DLC Brand. TCR automatically verifies the brand identity. Only brands with `VERIFIED` or `VETTED_VERIFIED` identity status can register 10DLC Campaigns.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.brands.create(request: {})
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Wavix::Types::TenDlcBrandCreateRequest` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::Brands::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.brands.<a href="/lib/wavix/ten_dlc/brands/client.rb">get</a>(brand_id) -> Wavix::TenDlc::Brands::Types::GetBrandsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the 10DLC Brand identified by `brand_id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.brands.get(brand_id: "BM20QP9")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::Brands::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.brands.<a href="/lib/wavix/ten_dlc/brands/client.rb">update</a>(brand_id, request) -> Wavix::TenDlc::Brands::Types::UpdateBrandsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the 10DLC Brand identified by `brand_id`. Changing identity fields, including `ein_taxid`, `ein_taxid_country`, and `entity_type`, resets the Brand status to `UNVERIFIED` and triggers automatic re-submission. Brands in `VETTED_VERIFIED` status or with active Campaigns cannot be updated.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.brands.update(brand_id: "BM20QP9")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**dba_name:** `String` — Brand name or DBA
    
</dd>
</dl>

<dl>
<dd>

**company_name:** `String` — Legal name of the company
    
</dd>
</dl>

<dl>
<dd>

**entity_type:** `Wavix::TenDlc::Brands::Types::TenDlcBrandUpdateRequestEntityType` — Legal entity type of the company. One of `PRIVATE_PROFIT` (privately held for-profit company), `PUBLIC_PROFIT` (publicly traded for-profit company), `NON_PROFIT` (non-profit organization), or `GOVERNMENT` (government entity).
    
</dd>
</dl>

<dl>
<dd>

**vertical:** `Wavix::TenDlc::Brands::Types::TenDlcBrandUpdateRequestVertical` 

Business segment the Brand operates in. One of:

- `HEALTHCARE` — healthcare.
- `PROFESSIONAL` — professional services.
- `RETAIL` — retail.
- `TECHNOLOGY` — technology.
- `EDUCATION` — education.
- `FINANCIAL` — financial services.
- `NON_PROFIT` — non-profit organizations.
- `GOVERNMENT` — government entities.
- `OTHER` — any segment not listed above.
    
</dd>
</dl>

<dl>
<dd>

**ein_taxid:** `String` — IRS Employee Identification Number (EIN) for US-based or foreign companies with EIN. The numeric portion of Tax ID for companies incorporated in other countries.
    
</dd>
</dl>

<dl>
<dd>

**ein_taxid_country:** `String` — 2-letter ISO country code of the Tax ID issuing country
    
</dd>
</dl>

<dl>
<dd>

**website:** `String` — The website of the business
    
</dd>
</dl>

<dl>
<dd>

**stock_symbol:** `String` — The stock symbol of the Brand. For PUBLIC_PROFIT Brands only.
    
</dd>
</dl>

<dl>
<dd>

**stock_exchange:** `String` — The stock exchange code. For PUBLIC_PROFIT Brands only.
    
</dd>
</dl>

<dl>
<dd>

**first_name:** `String` — The first name of the business contact
    
</dd>
</dl>

<dl>
<dd>

**last_name:** `String` — The last name of the business contact
    
</dd>
</dl>

<dl>
<dd>

**phone_number:** `String` — The support contact telephone in E.164 format
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — The email address of the support contact
    
</dd>
</dl>

<dl>
<dd>

**street_address:** `String` — Street name and house number
    
</dd>
</dl>

<dl>
<dd>

**city:** `String` — The city name
    
</dd>
</dl>

<dl>
<dd>

**state_or_province:** `String` — State or province. For the United States, use 2 character codes.
    
</dd>
</dl>

<dl>
<dd>

**zip:** `String` — The business zip or postal code
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — 2-letter ISO country code the business address
    
</dd>
</dl>

<dl>
<dd>

**mock:** `Internal::Types::Boolean` — Mock flag for testing (optional, defaults to false)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::Brands::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.brands.<a href="/lib/wavix/ten_dlc/brands/client.rb">delete</a>(brand_id) -> Wavix::TenDlc::Brands::Types::DeleteBrandsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a 10DLC Brand. Brands with active campaigns cannot be deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.brands.delete(brand_id: "BM20QP9")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::Brands::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.brands.<a href="/lib/wavix/ten_dlc/brands/client.rb">qualify_usecase</a>(brand_id, use_case) -> Wavix::TenDlc::Brands::Types::QualifyUsecaseBrandsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the qualification results for a 10DLC Brand use case. Includes MNO-specific attributes, restrictions, and fees.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.brands.qualify_usecase(
  brand_id: "BMQFB7X",
  use_case: "AGENTS_FRANCHISES"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**use_case:** `Wavix::TenDlc::Brands::Types::QualifyUsecaseBrandsRequestUseCase` — Name of the use case to qualify the Brand for.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::Brands::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TenDlc BrandAppeals
<details><summary><code>client.ten_dlc.brand_appeals.<a href="/lib/wavix/ten_dlc/brand_appeals/client.rb">list</a>(brand_id) -> Internal::Types::Array[Wavix::Types::TenDlcBrandAppeal]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the identity verification appeals submitted for the 10DLC Brand identified by `brand_id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.brand_appeals.list(brand_id: "BM20QP9")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::BrandAppeals::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.brand_appeals.<a href="/lib/wavix/ten_dlc/brand_appeals/client.rb">create</a>(brand_id, request) -> Wavix::TenDlc::BrandAppeals::Types::CreateBrandAppealsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Submits an appeal for 10DLC brand identity verification. Provide any additional documentation to support the appeal. Use `appeal_category` to specify the appeal type:
- `VERIFY_TAX_ID` — Use if the brand is UNVERIFIED due to a tax ID mismatch. Applies to private companies, public companies, non-profits, and government entities.
- `VERIFY_NON_PROFIT` — Use if a non-profit brand is UNVERIFIED or VERIFIED but missing tax-exempt status.
- `VERIFY_GOVERNMENT` — Use if a government brand is UNVERIFIED or VERIFIED but missing government entity status.      
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.brand_appeals.create(
  brand_id: "BM20QP9",
  appeal_categories: ["VERIFY_TAX_ID"],
  evidence: ["855dff49-c097-4645-3983-08dcb9856232"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**appeal_categories:** `Internal::Types::Array[String]` — List of appeal categories. Allowed values: `VERIFY_TAX_ID`, `VERIFY_NON_PROFIT`, `VERIFY_GOVERNMENT`
    
</dd>
</dl>

<dl>
<dd>

**evidence:** `Internal::Types::Array[String]` — List of evidence IDs associated with the appeal.
    
</dd>
</dl>

<dl>
<dd>

**explanation:** `String` — Appeal comment or justification.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::BrandAppeals::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TenDlc BrandEvidence
<details><summary><code>client.ten_dlc.brand_evidence.<a href="/lib/wavix/ten_dlc/brand_evidence/client.rb">list</a>(brand_id) -> Wavix::Types::ListBrandEvidenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the evidence files uploaded for the 10DLC Brand identified by `brand_id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.brand_evidence.list(brand_id: "B6AI7PA")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::BrandEvidence::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.brand_evidence.<a href="/lib/wavix/ten_dlc/brand_evidence/client.rb">upload</a>(brand_id, request) -> Wavix::TenDlc::BrandEvidence::Types::UploadBrandEvidenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Uploads a supporting evidence file for the 10DLC Brand identified by `brand_id`. Supported formats include `.jpg`, `.png`, and `.pdf`. Maximum size is 10 MB.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.brand_evidence.upload(brand_id: "B6AI7PA")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::BrandEvidence::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.brand_evidence.<a href="/lib/wavix/ten_dlc/brand_evidence/client.rb">get</a>(brand_id, id) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the Brand evidence file identified by the evidence ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.brand_evidence.get(
  brand_id: "brand_id",
  id: "id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — The unique ID of the Brand evidence file.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::BrandEvidence::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.brand_evidence.<a href="/lib/wavix/ten_dlc/brand_evidence/client.rb">delete</a>(brand_id, id) -> Wavix::TenDlc::BrandEvidence::Types::DeleteBrandEvidenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes the Brand evidence file identified by the evidence ID. Deletion is permanent.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.brand_evidence.delete(
  brand_id: "B6AI7PA",
  id: "191eb205-8357-4d71-b8da-160a25a000d7"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — The unique ID of the Brand evidence file.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::BrandEvidence::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TenDlc BrandVettings
<details><summary><code>client.ten_dlc.brand_vettings.<a href="/lib/wavix/ten_dlc/brand_vettings/client.rb">list</a>(brand_id) -> Internal::Types::Array[Wavix::Types::TenDlcBrandVetting]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the external vettings for the 10DLC Brand identified by `brand_id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.brand_vettings.list(brand_id: "B6AI7PA")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::BrandVettings::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.brand_vettings.<a href="/lib/wavix/ten_dlc/brand_vettings/client.rb">create</a>(brand_id, request) -> Wavix::Types::TenDlcBrandVetting</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Requests external vetting for a 10DLC Brand. Supported providers: `AEGIS`, `CV`, `WMC`. Supported classes: `STANDARD`, `ENHANCED`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.brand_vettings.create(
  brand_id: "B6AI7PA",
  evp_id: "AEGIS",
  vetting_class: "STANDARD"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**evp_id:** `String` — Code identifying the external vetting provider to perform the vetting.
    
</dd>
</dl>

<dl>
<dd>

**vetting_class:** `String` — Class of vetting to request, such as `STANDARD` or `ENHANCED`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::BrandVettings::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.brand_vettings.<a href="/lib/wavix/ten_dlc/brand_vettings/client.rb">import</a>(brand_id, request) -> Wavix::Types::TenDlcBrandVetting</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Imports an existing external vetting record into the 10DLC Brand identified by `brand_id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.brand_vettings.import(
  brand_id: "B6AI7PA",
  evp_id: "AEGIS",
  vetting_id: "13d8e00c-3cb4-4dc0-9e26-d5057fa938d9",
  vetting_token: "3oDcE1vq8OR43claMa6Thu/7V4vzZywAfKRgiJnXDjlw+08wpWbGqOssAXKgeZibHCLaGgXvU/yPb7kISeeb5qGdisGRLdhPnSNpvRR82RnCWYNpTp92orlJWjTJU8ZGmNxL5MwK0tt/9SxCha36iTtPV2+4vND8xCPe5suItuQTonG4A3Yi6F1LMqihgwdesRjxJnKqcE7Thcv9ug1NyNPYEZQvPugFj2F2DdU6jFZcOWgXsnE7ucZ+xNaNX9LkF9if3v0hrcviG9L8bUUrpPBGr02txP0i+cPBTLbj4Rq1Ox83R+WUx1gnoXHCIU1ByDGWvQq2Ef4qxGVOwPJHJbja1BovxKBk4YJxiz8OSO68QAIEfxuPTpj5eZz7KEFtFmBIVaVmxBDe4b8Tpl01C2rek7xgPzXaoURvh7CQVnVmJL00DTWKvyOmUOQQW901XEcgcJ7VWgfIvxhIMuXEXXtVDGNowmEc9JQXXYHVlGuN5QicSbApkwwqRZI7TQ4lsS66zCfqomIIJyBNRJpl+8sGwsa2J2h6fEkAD77J9zdUgIKXMFamHbvRadCKMZNIbMrkOC7PuOjZdSiWKh5A8FSjzkv3PlN2hRDqkaODEoodp5pTQeBtNe37+uAMOuHNfsZXlwvfMgCZjiZJ9HQNSLhJBUq7/IvT/EzszUk4HPTj/WFSbT1YrrkDi+zrB20ZDY9lZFWxN1hlYQoNcanDAAWPmw/yW1+8DroL5WIMGsXX3WFGOG7eWB1GHgFQsziAeRQl78u1qOvsRMN08+GrkASBJwqwy5l7xCesUKqbz3O0QA/dwzzsWIDvFPavZpjqMBSjRTurQLFahAaGmdY0BX/Ii+s2+OxfaHQIa1lgucm0P7GPKeZvLX/8boO01Onr/87ra+NX7ABvQb+SXvwsg+Bm5CziWB6DMKDKRD/KQjHxpjIY35UwSEW7G4ixux7ufizXttthHfPJWd/rWFhfYigFhVLgIPCR12smwFVuZwM7ujvY2CIM0X4E0dsX9uVHkgYmqRIdNf5vshpmRuIcHsXZpTJP/tD7zQM6m214c5xkJSfAVIaD7WzRYS4eVL+R3z4u+6n5p6FjuWSjSzuEffUai3HCWjes4JbtDSjIwoG0tOMtBukgPbreH+pjXcvnhU+1QhCV2aIdG6C3FmaI5Uoo/mthJyiFAThwtOpxQ5YkdsRunqVVEFYZfMNEn4Ig2clCFrLOm46JB2wPcLGP2MoH5RqajYzQ6IV8IXIFQVzG0C7HoHsBkVp+GrpnH6N0FCKR+fpbGjigM2lLf4pYBhChUY4ao9hvV1hd8ikS6QoasvDLPytBBa1YAwbSa8d7YdwO6fXfQqetfS8S9gbHD0zxazw5p9Lp5fXFmajDNkD2voYNMzOHJMMHG/49pWV2"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**evp_id:** `String` — Code identifying the external vetting provider that issued the vetting.
    
</dd>
</dl>

<dl>
<dd>

**vetting_id:** `String` — Unique identifier of the vetting request to import.
    
</dd>
</dl>

<dl>
<dd>

**vetting_token:** `String` — Token issued by the vetting provider that uniquely identifies the vetting result to import.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::BrandVettings::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TenDlc BrandVettingAppeals
<details><summary><code>client.ten_dlc.brand_vetting_appeals.<a href="/lib/wavix/ten_dlc/brand_vetting_appeals/client.rb">list</a>(brand_id) -> Internal::Types::Array[Wavix::Types::TenDlcBrandVettingAppeal]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the external vetting appeals for the 10DLC Brand identified by `brand_id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.brand_vetting_appeals.list(brand_id: "BMQFB7X")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::BrandVettingAppeals::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.brand_vetting_appeals.<a href="/lib/wavix/ten_dlc/brand_vetting_appeals/client.rb">create</a>(brand_id, request) -> Wavix::TenDlc::BrandVettingAppeals::Types::CreateBrandVettingAppealsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Submits an appeal for an external vetting of the 10DLC Brand identified by `brand_id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.brand_vetting_appeals.create(
  brand_id: "B6AI7PA",
  appeal_categories: ["VERIFY_TAX_ID"],
  evidence: ["855dff49-c097-4645-3983-08dcb9856232"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**appeal_categories:** `Internal::Types::Array[String]` — List of appeal categories. Allowed values: `VERIFY_TAX_ID`, `VERIFY_NON_PROFIT`, `VERIFY_GOVERNMENT`, `LOW_SCORE`.
    
</dd>
</dl>

<dl>
<dd>

**evidence:** `Internal::Types::Array[String]` — List of evidence IDs associated with the appeal.
    
</dd>
</dl>

<dl>
<dd>

**explanation:** `String` — Appeal comment or justification.
    
</dd>
</dl>

<dl>
<dd>

**evp_id:** `String` — EVP ID.
    
</dd>
</dl>

<dl>
<dd>

**vetting_id:** `String` — Vetting ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::BrandVettingAppeals::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TenDlc Campaigns
<details><summary><code>client.ten_dlc.campaigns.<a href="/lib/wavix/ten_dlc/campaigns/client.rb">list</a>() -> Wavix::TenDlc::Campaigns::Types::ListCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of 10DLC Campaigns for the authenticated account, filtered by date, status, and use case.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.campaigns.list(
  name: "Name",
  usecase: "2FA",
  status: "APPROVED",
  mock: true,
  created_before: "2024-08-22",
  created_after: "2024-08-22",
  page: 1,
  per_page: 25
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**name:** `String` — Filters Campaigns by name. Matches partial values.
    
</dd>
</dl>

<dl>
<dd>

**usecase:** `String` — Filters Campaigns by use case.
    
</dd>
</dl>

<dl>
<dd>

**status:** `String` — Filters Campaigns by status.
    
</dd>
</dl>

<dl>
<dd>

**mock:** `Internal::Types::Boolean` — When `true`, returns only mock Campaigns used for testing. Default `false`.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Returns Campaigns created on or before this date, in `YYYY-MM-DD` format.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Returns Campaigns created on or after this date, in `YYYY-MM-DD` format.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve. Default `1`.
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Number of records to return per page. Default `25`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.campaigns.<a href="/lib/wavix/ten_dlc/campaigns/client.rb">list_by_brand</a>(brand_id) -> Wavix::TenDlc::Campaigns::Types::ListByBrandCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of 10DLC Campaigns associated with the 10DLC Brand identified by `brand_id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.campaigns.list_by_brand(
  brand_id: "BM20QP9",
  name: "Name",
  usecase: "2FA",
  status: "APPROVED",
  mock: true,
  created_before: "2024-08-22",
  created_after: "2024-08-22",
  page: 1,
  per_page: 25
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — Filters Campaigns by name. Matches partial values.
    
</dd>
</dl>

<dl>
<dd>

**usecase:** `String` — Filters Campaigns by use case.
    
</dd>
</dl>

<dl>
<dd>

**status:** `String` — Filters Campaigns by status.
    
</dd>
</dl>

<dl>
<dd>

**mock:** `Internal::Types::Boolean` — When `true`, returns only mock Campaigns used for testing. Default `false`.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Returns Campaigns created on or before this date, in `YYYY-MM-DD` format.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Returns Campaigns created on or after this date, in `YYYY-MM-DD` format.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve. Default `1`.
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` — Number of records to return per page. Default `25`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.campaigns.<a href="/lib/wavix/ten_dlc/campaigns/client.rb">create</a>(brand_id, request) -> Wavix::TenDlc::Campaigns::Types::CreateCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Registers a 10DLC Campaign under the 10DLC Brand identified by `brand_id`. The Brand must have a verified identity status.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.campaigns.create(
  brand_id: "BM20QP9",
  affiliate_marketing: false,
  age_gated: false,
  auto_renewal: false,
  direct_lending: false,
  embedded_links: false,
  embedded_phones: false,
  embedded_link_sample: "https://site.com/verify",
  description: "Our campaign aims to …",
  optin_workflow: "Our SMS ...",
  help: true,
  help_keywords: "help",
  help_message: "For help, please visit www.site.com. To opt-out, reply STOP.",
  optin: true,
  optin_keywords: "begin,start",
  optin_message: "You are now opted-in for help please reply HELP, to stop please reply STOP",
  optout: true,
  optout_keywords: "stop,quit,unsubscribe",
  optout_message: "You are now opted out and will receive no further messages",
  name: "My first campaign",
  sample1: "Your verification code is XXXXXX",
  sample2: "XXXX is your verification code",
  sample3: "Your code is XXXXXX, valid for 10 minutes",
  sample4: "Use code XXXXXX to confirm your login",
  sample5: "XXXXXX is your one-time passcode",
  mock: false,
  usecase: "2FA",
  privacy_policy: "https://site.com/privacy-policy",
  terms_conditions: "https://site.com/terms-and-conditions"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**affiliate_marketing:** `Internal::Types::Boolean` — Indicates whether the Campaign is used for affiliate marketing.
    
</dd>
</dl>

<dl>
<dd>

**age_gated:** `Internal::Types::Boolean` — Indicates whether the Campaign messages contain age-gated content.
    
</dd>
</dl>

<dl>
<dd>

**auto_renewal:** `Internal::Types::Boolean` — Indicates whether the Campaign is automatically renewed at the end of each billing period.
    
</dd>
</dl>

<dl>
<dd>

**direct_lending:** `Internal::Types::Boolean` — Indicates whether the Campaign messages contain direct lending content.
    
</dd>
</dl>

<dl>
<dd>

**embedded_links:** `Internal::Types::Boolean` — Indicates whether the Campaign messages contain embedded links.
    
</dd>
</dl>

<dl>
<dd>

**embedded_phones:** `Internal::Types::Boolean` — Indicates whether the Campaign messages contain embedded phone numbers.
    
</dd>
</dl>

<dl>
<dd>

**embedded_link_sample:** `String` — Sample of an embedded link used in Campaign messages.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — Description of the Campaign and its messaging purpose.
    
</dd>
</dl>

<dl>
<dd>

**optin_workflow:** `String` — Description of the workflow through which subscribers opt in to the Campaign.
    
</dd>
</dl>

<dl>
<dd>

**help:** `Internal::Types::Boolean` — Indicates whether the Campaign provides a help system that subscribers can trigger with a keyword such as HELP or INFO.
    
</dd>
</dl>

<dl>
<dd>

**help_keywords:** `String` — Comma-separated list of help keywords. Keywords are case-insensitive.
    
</dd>
</dl>

<dl>
<dd>

**help_message:** `String` — Acknowledgement sent when a subscriber texts a help keyword.
    
</dd>
</dl>

<dl>
<dd>

**optin:** `Internal::Types::Boolean` — Indicates whether the Campaign requires subscribers to opt in before receiving messages.
    
</dd>
</dl>

<dl>
<dd>

**optin_keywords:** `String` — Comma-separated list of opt-in keywords. Keywords are case-insensitive.
    
</dd>
</dl>

<dl>
<dd>

**optin_message:** `String` — Acknowledgement sent when a subscriber texts an opt-in keyword.
    
</dd>
</dl>

<dl>
<dd>

**optout:** `Internal::Types::Boolean` — Indicates whether the Campaign provides an opt-out system that subscribers can trigger with a keyword such as STOP or QUIT.
    
</dd>
</dl>

<dl>
<dd>

**optout_keywords:** `String` — Comma-separated list of opt-out keywords. Keywords are case-insensitive.
    
</dd>
</dl>

<dl>
<dd>

**optout_message:** `String` — Acknowledgement sent when a subscriber texts an opt-out keyword.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — Display name of the Campaign.
    
</dd>
</dl>

<dl>
<dd>

**sample1:** `String` — Sample message demonstrating the content sent through the Campaign.
    
</dd>
</dl>

<dl>
<dd>

**sample2:** `String` — Sample message demonstrating the content sent through the Campaign.
    
</dd>
</dl>

<dl>
<dd>

**sample3:** `String` — Sample message demonstrating the content sent through the Campaign.
    
</dd>
</dl>

<dl>
<dd>

**sample4:** `String` — Sample message demonstrating the content sent through the Campaign.
    
</dd>
</dl>

<dl>
<dd>

**sample5:** `String` — Sample message demonstrating the content sent through the Campaign.
    
</dd>
</dl>

<dl>
<dd>

**mock:** `Internal::Types::Boolean` — Indicates whether the Campaign is a mock campaign used for testing. Mock campaigns cannot send production traffic.
    
</dd>
</dl>

<dl>
<dd>

**usecase:** `String` — Registered use case for the Campaign, such as `2FA` or `MARKETING`.
    
</dd>
</dl>

<dl>
<dd>

**privacy_policy:** `String` — URL of the Campaign privacy policy.
    
</dd>
</dl>

<dl>
<dd>

**terms_conditions:** `String` — URL of the Campaign terms and conditions.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.campaigns.<a href="/lib/wavix/ten_dlc/campaigns/client.rb">get</a>(brand_id, campaign_id) -> Wavix::TenDlc::Campaigns::Types::GetCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the 10DLC Campaign identified by `campaign_id` under the Brand identified by `brand_id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.campaigns.get(
  brand_id: "BM20QP9",
  campaign_id: "CKLCK95"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**campaign_id:** `String` — The unique ID of the 10DLC Campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.campaigns.<a href="/lib/wavix/ten_dlc/campaigns/client.rb">update</a>(brand_id, campaign_id, request) -> Wavix::TenDlc::Campaigns::Types::UpdateCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the 10DLC Campaign identified by `campaign_id`. Only the provided fields are changed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.campaigns.update(
  brand_id: "BM20QP9",
  campaign_id: "CKLCK95"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**campaign_id:** `String` — The unique ID of the 10DLC Campaign.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — Display name of the Campaign.
    
</dd>
</dl>

<dl>
<dd>

**usecase:** `Wavix::TenDlc::Campaigns::Types::TenDlcCampaignUpdateRequestUsecase` — Registered use case for the Campaign. One of `CUSTOMER_CARE` (customer support messaging), `MARKETING` (promotional content), `ACCOUNT_NOTIFICATION` (account-related alerts), `FRAUD_ALERT` (fraud and suspicious-activity warnings), `PUBLIC_SERVICE_ANNOUNCEMENT` (public-interest notices), or `SECURITY_ALERT` (security-related warnings).
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — Description of the Campaign and its messaging purpose.
    
</dd>
</dl>

<dl>
<dd>

**embedded_links:** `Internal::Types::Boolean` — Indicates whether the Campaign messages contain embedded links.
    
</dd>
</dl>

<dl>
<dd>

**embedded_phones:** `Internal::Types::Boolean` — Indicates whether the Campaign messages contain embedded phone numbers.
    
</dd>
</dl>

<dl>
<dd>

**age_gated:** `Internal::Types::Boolean` — Indicates whether the Campaign messages contain age-gated content.
    
</dd>
</dl>

<dl>
<dd>

**direct_lending:** `Internal::Types::Boolean` — Indicates whether the Campaign messages contain direct lending content.
    
</dd>
</dl>

<dl>
<dd>

**optin:** `Internal::Types::Boolean` — Indicates whether the Campaign requires subscribers to opt in before receiving messages.
    
</dd>
</dl>

<dl>
<dd>

**optout:** `Internal::Types::Boolean` — Indicates whether the Campaign provides an opt-out system that subscribers can trigger with a keyword.
    
</dd>
</dl>

<dl>
<dd>

**help:** `Internal::Types::Boolean` — Indicates whether the Campaign provides a help system that subscribers can trigger with a keyword.
    
</dd>
</dl>

<dl>
<dd>

**sample1:** `String` — Sample message demonstrating the content sent through the Campaign.
    
</dd>
</dl>

<dl>
<dd>

**sample2:** `String` — Sample message demonstrating the content sent through the Campaign.
    
</dd>
</dl>

<dl>
<dd>

**sample3:** `String` — Sample message demonstrating the content sent through the Campaign.
    
</dd>
</dl>

<dl>
<dd>

**sample4:** `String` — Sample message demonstrating the content sent through the Campaign.
    
</dd>
</dl>

<dl>
<dd>

**sample5:** `String` — Sample message demonstrating the content sent through the Campaign.
    
</dd>
</dl>

<dl>
<dd>

**optin_workflow:** `String` — Description of the workflow through which subscribers opt in to the Campaign.
    
</dd>
</dl>

<dl>
<dd>

**help_message:** `String` — Acknowledgement sent when a subscriber texts a help keyword.
    
</dd>
</dl>

<dl>
<dd>

**optin_message:** `String` — Acknowledgement sent when a subscriber texts an opt-in keyword.
    
</dd>
</dl>

<dl>
<dd>

**optout_message:** `String` — Acknowledgement sent when a subscriber texts an opt-out keyword.
    
</dd>
</dl>

<dl>
<dd>

**auto_renewal:** `Internal::Types::Boolean` — Indicates whether the Campaign is automatically renewed at the end of each billing period.
    
</dd>
</dl>

<dl>
<dd>

**optin_keywords:** `String` — Comma-separated list of opt-in keywords. Keywords are case-insensitive.
    
</dd>
</dl>

<dl>
<dd>

**help_keywords:** `String` — Comma-separated list of help keywords. Keywords are case-insensitive.
    
</dd>
</dl>

<dl>
<dd>

**optout_keywords:** `String` — Comma-separated list of opt-out keywords. Keywords are case-insensitive.
    
</dd>
</dl>

<dl>
<dd>

**terms_conditions:** `String` — URL of the Campaign terms and conditions.
    
</dd>
</dl>

<dl>
<dd>

**privacy_policy:** `String` — URL of the Campaign privacy policy.
    
</dd>
</dl>

<dl>
<dd>

**embedded_link_sample:** `String` — Sample of an embedded link used in Campaign messages.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.campaigns.<a href="/lib/wavix/ten_dlc/campaigns/client.rb">delete</a>(brand_id, campaign_id) -> Wavix::TenDlc::Campaigns::Types::DeleteCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a 10DLC Campaign. Associated phone numbers cannot be used as Sender IDs once the Campaign is deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.campaigns.delete(
  brand_id: "BM20QP9",
  campaign_id: "CKLCK95"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**campaign_id:** `String` — The unique ID of the 10DLC Campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.campaigns.<a href="/lib/wavix/ten_dlc/campaigns/client.rb">nudge</a>(brand_id, campaign_id, request) -> Wavix::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Requests action on a pending or rejected 10DLC Campaign. Use `nudge_intent` to specify the action: 
- `REVIEW`: Request review for a pending Campaign. - `APPEAL_REJECTION`: Appeal a rejected Campaign.
Note:
- The Campaign must be at least 72 hours old.
- Only one nudge request per Campaign is allowed every 24 hours.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.campaigns.nudge(
  brand_id: "B9FXYNH",
  campaign_id: "CSJ4TV0",
  nudge_intent: "REVIEW",
  description: "Please review the campaign."
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**campaign_id:** `String` — The unique ID of the 10DLC Campaign.
    
</dd>
</dl>

<dl>
<dd>

**nudge_intent:** `String` 

Nudge intent. Allowed values: `REVIEW`, `APPEAL_REJECTION`. 
Use `nudge_intent` to specify the action: - `REVIEW`: Request review for a pending Campaign. - `APPEAL_REJECTION`: Appeal a rejected Campaign.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — Description of the nudge request.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TenDlc Subscriptions
<details><summary><code>client.ten_dlc.subscriptions.<a href="/lib/wavix/ten_dlc/subscriptions/client.rb">list</a>() -> Internal::Types::Array[Wavix::Types::TenDlcEventSubscription]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the 10DLC event subscriptions for the authenticated account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.subscriptions.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::Subscriptions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.subscriptions.<a href="/lib/wavix/ten_dlc/subscriptions/client.rb">create</a>(request) -> Wavix::TenDlc::Subscriptions::Types::CreateSubscriptionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Registers a callback URL to receive Wavix 10DLC event notifications.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.subscriptions.create(
  subscription_category: "brand",
  url: "https://webhook.url"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Wavix::Types::TenDlcEventSubscription` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::Subscriptions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.subscriptions.<a href="/lib/wavix/ten_dlc/subscriptions/client.rb">delete</a>() -> Wavix::TenDlc::Subscriptions::Types::DeleteSubscriptionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes the 10DLC event subscription for the specified event category.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.subscriptions.delete(subscription_category: "number")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**subscription_category:** `String` — Event category to unsubscribe from.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::Subscriptions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TenDlc CampaignNumbers
<details><summary><code>client.ten_dlc.campaign_numbers.<a href="/lib/wavix/ten_dlc/campaign_numbers/client.rb">link</a>(brand_id, campaign_id, number) -> Wavix::TenDlc::CampaignNumbers::Types::LinkCampaignNumbersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Links a phone number to a 10DLC Campaign. Wavix automatically creates a Sender ID once the number is approved.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.campaign_numbers.link(
  brand_id: "B9FXYNH",
  campaign_id: "CSJ4TV0",
  number: "17029641104"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**campaign_id:** `String` — The unique ID of the 10DLC Campaign.
    
</dd>
</dl>

<dl>
<dd>

**number:** `String` — The phone number to link to the Campaign, in E.164 format.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::CampaignNumbers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.campaign_numbers.<a href="/lib/wavix/ten_dlc/campaign_numbers/client.rb">unlink</a>(brand_id, campaign_id, number) -> Wavix::TenDlc::CampaignNumbers::Types::UnlinkCampaignNumbersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unlinks a phone number from a 10DLC Campaign. The associated Sender ID is also deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.campaign_numbers.unlink(
  brand_id: "B9FXYNH",
  campaign_id: "CSJ4TV0",
  number: "17029641104"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**campaign_id:** `String` — The unique ID of the 10DLC Campaign.
    
</dd>
</dl>

<dl>
<dd>

**number:** `String` — The phone number to unlink from the Campaign, in E.164 format.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::CampaignNumbers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ten_dlc.campaign_numbers.<a href="/lib/wavix/ten_dlc/campaign_numbers/client.rb">list</a>(brand_id, campaign_id) -> Wavix::TenDlc::CampaignNumbers::Types::ListCampaignNumbersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the phone numbers linked to the 10DLC Campaign identified by `campaign_id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ten_dlc.campaign_numbers.list(
  brand_id: "B9FXYNH",
  campaign_id: "CSJ4TV0"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**brand_id:** `String` — The unique ID of the 10DLC Brand.
    
</dd>
</dl>

<dl>
<dd>

**campaign_id:** `String` — The unique ID of the 10DLC Campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TenDlc::CampaignNumbers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TwoFa Verification
<details><summary><code>client.two_fa.verification.<a href="/lib/wavix/two_fa/verification/client.rb">create</a>(request) -> Wavix::TwoFa::Verification::Types::CreateVerificationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a 2FA verification and sends a one-time password (OTP) to the destination phone number over the selected channel. Requires a 2FA service configured in the Wavix portal; the service is reused to generate and validate OTPs.

The verification proceeds through three steps:
1. Create a verification to generate and send an OTP.
2. Resend the OTP on the same verification if needed.
3. Validate the OTP through the check endpoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.two_fa.verification.create(
  service_id: "7204a030201211ee9fb47d093f2f127c",
  to: "447919433768",
  channel: "sms"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**service_id:** `String` — Unique Wavix 2FA Service ID. Available on the Wavix portal.
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — End user's phone number to which the verification code will be sent. The phone number must be in E.164 format.
    
</dd>
</dl>

<dl>
<dd>

**channel:** `String` — Channel used to deliver the verification code. One of `sms` (sent as a text message) or `voice` (read aloud over a phone call).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TwoFa::Verification::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.two_fa.verification.<a href="/lib/wavix/two_fa/verification/client.rb">resend</a>(session_id, request) -> Wavix::TwoFa::Verification::Types::ResendVerificationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Resends the OTP for the verification identified by `session_id` over the specified channel. Previously sent codes are invalidated.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.two_fa.verification.resend(
  session_id: "2953d4308f2e11ecb75fcdafd6d2d687",
  channel: "sms"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**session_id:** `String` — The unique ID of the 2FA verification session.
    
</dd>
</dl>

<dl>
<dd>

**channel:** `Wavix::TwoFa::Verification::Types::TwoFactorVerificationResendRequestChannel` — Channel used to resend the verification code. One of `sms` (sent as a text message) or `voice` (read aloud over a phone call).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TwoFa::Verification::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.two_fa.verification.<a href="/lib/wavix/two_fa/verification/client.rb">check</a>(session_id, request) -> Wavix::TwoFa::Verification::Types::CheckVerificationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Validates the OTP submitted by the end user against the verification identified by `session_id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.two_fa.verification.check(
  session_id: "2953d4308f2e11ecb75fcdafd6d2d687",
  code: "123456"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**session_id:** `String` — The unique ID of the 2FA verification session.
    
</dd>
</dl>

<dl>
<dd>

**code:** `String` — The code entered by an end user
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TwoFa::Verification::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.two_fa.verification.<a href="/lib/wavix/two_fa/verification/client.rb">cancel</a>(session_id) -> Wavix::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancels the 2FA verification identified by `session_id`. No further codes are sent, and previously sent codes can no longer be validated. A new verification is required to send another code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.two_fa.verification.cancel(session_id: "2953d4308f2e11ecb75fcdafd6d2d687")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**session_id:** `String` — The unique ID of the 2FA verification session.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TwoFa::Verification::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TwoFa Sessions
<details><summary><code>client.two_fa.sessions.<a href="/lib/wavix/two_fa/sessions/client.rb">list</a>(service_id) -> Internal::Types::Array[Wavix::Types::ListSessionsResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the 2FA verifications for the service identified by `service_id`, within the requested date range.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.two_fa.sessions.list(
  service_id: "7204a030201211ee9fb47d093f2f127c",
  from: "2022-01-01",
  to: "2022-01-31"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**service_id:** `String` — The unique ID of the 2FA service.
    
</dd>
</dl>

<dl>
<dd>

**from:** `String` — Start of the date range to query, in `YYYY-MM-DD` format. Inclusive.
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — End of the date range to query, in `YYYY-MM-DD` format. Inclusive.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TwoFa::Sessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TwoFa Events
<details><summary><code>client.two_fa.events.<a href="/lib/wavix/two_fa/events/client.rb">list</a>(session_id) -> Internal::Types::Array[Wavix::Types::TwoFactorVerificationEvent]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the lifecycle events of the 2FA verification identified by `session_id`, such as number lookup and code delivery.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.two_fa.events.list(session_id: "8753d4308f2e11ecb75fcdafd6d2d690")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**session_id:** `String` — The unique ID of the 2FA verification session.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::TwoFa::Events::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Webrtc Tokens
<details><summary><code>client.webrtc.tokens.<a href="/lib/wavix/webrtc/tokens/client.rb">list</a>() -> Wavix::Types::WebRtcTokensListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of active Wavix Embeddable widget tokens for the authenticated account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webrtc.tokens.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Wavix::Webrtc::Tokens::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webrtc.tokens.<a href="/lib/wavix/webrtc/tokens/client.rb">create</a>(request) -> Wavix::Types::WebRtcTokenResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a Wavix Embeddable widget token that authenticates a browser-based softphone session. The token expires after `ttl` seconds.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webrtc.tokens.create(
  sip_trunk: "my-sip-trunk",
  payload: {},
  ttl: 3600
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sip_trunk:** `String` — Name of the SIP trunk the token authenticates against.
    
</dd>
</dl>

<dl>
<dd>

**payload:** `Internal::Types::Hash[String, Object]` — Arbitrary client-defined data to associate with the token.
    
</dd>
</dl>

<dl>
<dd>

**ttl:** `Integer` — Time to live in seconds. Pass `null` for no expiration.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Webrtc::Tokens::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webrtc.tokens.<a href="/lib/wavix/webrtc/tokens/client.rb">get</a>(id) -> Wavix::Types::WebRtcToken</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the Wavix Embeddable widget token identified by `id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webrtc.tokens.get(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The UUID of the widget token to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Webrtc::Tokens::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webrtc.tokens.<a href="/lib/wavix/webrtc/tokens/client.rb">update</a>(id, request) -> Wavix::Types::WebRtcToken</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the `payload` carried by the Wavix Embeddable widget token identified by `id`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webrtc.tokens.update(
  id: "id",
  payload: {}
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The UUID of the widget token to update.
    
</dd>
</dl>

<dl>
<dd>

**payload:** `Internal::Types::Hash[String, Object]` — Arbitrary client-defined data to associate with the token, replacing the existing payload.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Webrtc::Tokens::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webrtc.tokens.<a href="/lib/wavix/webrtc/tokens/client.rb">delete</a>(id) -> Wavix::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes the Wavix Embeddable widget token identified by `id`. The token can no longer authenticate widget sessions, and any active session using it ends.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webrtc.tokens.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The UUID of the widget token to delete.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Wavix::Webrtc::Tokens::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

