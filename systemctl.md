# Services

- Start a service: `systemctl start [service]`
- Stop a service: `systemctl stop [service]`
- Restart a service: `systemctl restart [service]`
- Show status of a service: `systemctl status [service]`
- Enable a service to start on boot: `systemctl enable [service]`
- Disable a service from starting on boot: `systemctl disable [service]`
- Reload service configuration: `systemctl reload [service]`
- Check if a service is active: `systemctl is-active [service]`
- Check if a service is enabled: `systemctl is-enabled [service]`
- Check if a service has failed: `systemctl is-failed [service]`

## Timers

- List all timers: `systemctl list-timers`
- Start a timer: `systemctl start [timer]`
- Stop a timer: `systemctl stop [timer]`
- Show status of a timer: `systemctl status [timer]`
- Enable a timer to start on boot: `systemctl enable [timer]`
- Disable a timer from starting on boot: `systemctl disable [timer]`
- Check if a timer is active: `systemctl is-active [timer]`
- Check if a timer is enabled: `systemctl is-enabled [timer]`
- Check if a timer has failed: `systemctl is-failed [timer]`

### Sockets

- List all sockets: `systemctl list-sockets`
- Start a socket: `systemctl start [socket]`
- Stop a socket: `systemctl stop [socket]`
- Show status of a socket: `systemctl status [socket]`
- Enable a socket to start on boot: `systemctl enable [socket]`
- Disable a socket from starting on boot: `systemctl disable [socket]`
- Check if a socket is active: `systemctl is-active [socket]`
- Check if a socket is enabled: `systemctl is-enabled [socket]`
- Check if a socket has failed: `systemctl is-failed [socket]`

### Units in General

- Reload systemd manager configuration: `systemctl daemon-reload`
- List active units: `systemctl list-units`
- List installed unit files: `systemctl list-unit-files`
- Show properties of a unit: `systemctl show [unit]`
- Mask a unit (disable and symlink to /dev/null): `systemctl mask [unit]`
- Unmask a unit: `systemctl unmask [unit]`
