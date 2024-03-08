# How DNS Resolving Works

DNS is like the phonebook of the internet. It helps your computer find the actual location (IP address) of a website when you type in its friendly name (domain).

## 1. **You Type a Web Address**

When you type a web address like "www.example.com" into your browser and hit Enter, your computer needs to figure out the actual location of that website.

## 2. **Request to DNS Server**

Your computer sends a request to a DNS server. This server is like a directory service for domain names.

```markdown
Request: "Hey DNS server, where can I find www.example.com?"
```

## 3. **Root DNS Servers**

The DNS server may not know the exact location but will guide your request to the root DNS servers. These servers know the locations of the authoritative DNS servers for top-level domains (like .com, .org).

```markdown
Root DNS: "For .com, go ask the .com authoritative DNS server."
```

## 4. **Top-Level Domain (TLD) DNS Server**

Now your request reaches the TLD DNS server for ".com," and it directs your request to the authoritative DNS server for "example.com."

```markdown
TLD DNS: "For example.com, check with the authoritative DNS server for details."
```

## 5. **Authoritative DNS Server**

The authoritative DNS server for "example.com" knows the IP address of the website.

```markdown
Authoritative DNS: "www.example.com is at IP address 203.0.113.45."
```

## 6. **IP Address Returned**

The IP address is sent back to your computer.

```markdown
Response: "Hey, the IP address of www.example.com is 203.0.113.45."
```

## 7. **Accessing the Website**

Now that your computer knows the IP address, it can connect to the web server hosting **www.example.com** and retrieve the webpage.

