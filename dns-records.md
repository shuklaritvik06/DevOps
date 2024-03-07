# DNS Records

## 1. **A (Address) Record:**

- **Purpose:** Resolves a domain name to an IPv4 address.
- **Example:**

```plaintext
example.com.    IN   A     192.168.1.1
```

## 2. **AAAA (IPv6 Address) Record:**

- **Purpose:** Resolves a domain name to an IPv6 address.
- **Example:**

```plaintext
example.com.    IN   AAAA  2001:0db8:85a3:0000:0000:8a2e:0370:7334
```

## 3. **CNAME (Canonical Name) Record:**

- **Purpose:** Alias of one domain to another (canonical) domain.
- **Example:**
  
```plaintext
www.example.com.  IN  CNAME  example.com.
```

## 4. **MX (Mail Exchange) Record:**

- **Purpose:** Specifies mail servers responsible for receiving emails for the domain.
- **Example:**

  ```plaintext
  example.com.    IN   MX  10  mail.example.com.
  ```

## 5. **TXT (Text) Record:**

- **Purpose:** Holds text information. Commonly used for DNS-based authentication, such as SPF, DKIM, and DMARC records.
- **Example:**

  ```plaintext
  example.com.    IN   TXT  "v=spf1 mx -all"
  ```

## 6. **PTR (Pointer) Record:**

- **Purpose:** Used for reverse DNS lookups to map an IP address to a domain name.
- **Example:**

  ```plaintext
  1.1.168.192.in-addr.arpa.  IN  PTR  example.com.
  ```

## 7. **NS (Name Server) Record:**

- **Purpose:** Specifies authoritative DNS servers for the domain.
- **Example:**

  ```plaintext
  example.com.    IN   NS  ns1.example.com.
  ```

## 8. **SOA (Start of Authority) Record:**

- **Purpose:** Contains authoritative information about the domain, including the primary DNS server, the email of the domain administrator, domain serial number, timers, and more.
- **Example:**

  ```plaintext
  example.com.    IN   SOA  ns1.example.com. admin.example.com. (
                             2022030701 ; Serial
                             3600       ; Refresh
                             1800       ; Retry
                             1209600    ; Expire
                             3600 )     ; Minimum TTL
  ```

## 9. **SRV (Service) Record:**

- **Purpose:** Specifies the location of servers for specified services.
- **Example:**

  ```plaintext
  _sip._tcp.example.com.  IN  SRV  10  60  5060  sipserver.example.com.
  ```

## 10. **CAA (Certification Authority Authorization) Record:**

- **Purpose:** Specifies which certificate authorities (CAs) are allowed to issue certificates for a domain.
- **Example:**

  ```plaintext
  example.com.    IN   CAA  0 issue "letsencrypt.org"
  ```
