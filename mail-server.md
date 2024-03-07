# Mail Server Records

## MX (Mail Exchange) Record

An MX (Mail Exchange) record is a type of DNS record that specifies the mail servers responsible for receiving email on behalf of a domain.

```markdown
- **Name/Host:** @ or your domain (e.g., example.com)
- **Type:** MX
- **Priority:** A numeric value indicating the priority of the mail server. Lower values are preferred.
- **Mail Server:** The domain name of the mail server handling email for the domain.
```

Example:

```markdown
| Name/Host | Type | Priority | Mail Server        |
|-----------|------|----------|--------------------|
| @         | MX   | 10       | mail.example.com   |
| @         | MX   | 20       | backup.mail.com    |
```

## SPF (Sender Policy Framework) Record

An SPF (Sender Policy Framework) record is a DNS record that specifies the authorized mail servers for sending email on behalf of a domain.

```markdown
- **Name/Host:** @ or your domain (e.g., example.com)
- **Type:** TXT
- **Value:** A string defining the SPF policy, including authorized mail servers and actions to take on unauthorized emails.
```

Example:

```markdown
| Name/Host | Type | Value                                       |
|-----------|------|---------------------------------------------|
| @         | TXT  | "v=spf1 mx include:_spf.example.com -all"   |
```

## DKIM (DomainKeys Identified Mail) Record

A DKIM (DomainKeys Identified Mail) record is a DNS record that enables email recipients to verify the authenticity of received emails.

```markdown
- **Name/Host:** _domainkey or a subdomain (e.g., dkim._domainkey.example.com)
- **Type:** TXT
- **Value:** The public key used for DKIM email signing.
```

Example:

```markdown
| Name/Host                   | Type | Value                                                         |
|-----------------------------|------|---------------------------------------------------------------|
| dkim._domainkey.example.com | TXT  | "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC..." |
```

## DMARC (Domain-based Message Authentication, Reporting, and Conformance) Record

A DMARC (Domain-based Message Authentication, Reporting, and Conformance) record is a DNS record that combines DKIM and SPF, providing policies for email authentication and reporting.

```markdown
- **Name/Host:** _dmarc or your domain (e.g., _dmarc.example.com)
- **Type:** TXT
- **Value:** A string defining the DMARC policy, including how to handle failed authentication and reporting preferences.
```

Example:

```markdown
| Name/Host            | Type | Value                                   |
|----------------------|------|-----------------------------------------|
| _dmarc.example.com   | TXT  | "v=DMARC1; p=quarantine; rua=mailto:..." |
```
