# Systemd Services

## Overview

Systemd is a system and service manager for Linux operating systems. It provides a standard process for controlling what programs run when a Linux system boots up and are currently running.

## Types of Services

Systemd categorizes services into several types based on their behavior and how they are started and stopped. The main types of services are:

1. **Simple**
2. **Forking**
3. **Oneshot**

### 1. Simple

A `simple` service is the default service type. The main process of the service is the one that is specified in `ExecStart`. This type is used when the service does not fork or spawn child processes.

#### Example:

```ini
[Unit]
Description=Simple Service Example

[Service]
Type=simple
ExecStart=/usr/bin/my-simple-service

[Install]
WantedBy=multi-user.target
```

### 2. Forking

A `forking` service is used when the service daemonizes itself (i.e., forks into the background). Systemd will consider the service started when the original process exits.

#### Example:

```ini
[Unit]
Description=Forking Service Example

[Service]
Type=forking
ExecStart=/usr/bin/my-forking-service

[Install]
WantedBy=multi-user.target
```

### 3. Oneshot

A `oneshot` service is used for tasks that are meant to be run once and then exit, such as scripts or short-lived services. This type is typically used for services that do not stay running.

#### Example:

```ini
[Unit]
Description=Oneshot Service Example

[Service]
Type=oneshot
ExecStart=/usr/bin/my-oneshot-service
RemainAfterExit=true

[Install]
WantedBy=multi-user.target
```
