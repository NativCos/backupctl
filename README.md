# Подсистема бэкапа операционной системы

### install
#### настроить сервер
настроить на сервере файлы:
- /etc/ssh/sshd_config
    ```
    ClientAliveInterval 10
    ClientAliveCountMax 30
    ```
- ~/.ssh/authorized_keys
    ```
    command="borg serve --restrict-to-path /mnt/backups/borg 2>>/var/log/borg/desktop.log",restrict,no-pty,no-agent-forwarding,no-port-forwarding <<rsa pub key>> root@desktop

    ```

### supports
- Manjaro
