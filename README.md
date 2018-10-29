## OPNsense SCP-Backup

Action and script to backup config.xml over scp with a cron job in GUI.

## Usage

### `actions_scp-backup.conf`

Must be placed in `/usr/local/opnsense/service/conf/actions.d/`

Replace `{USER}` with an user that has the appropriate ssh key to access the backup host.

Execute `$ service configd restart` afterwards.

### `scp-backup.sh`

Must be placed in `/usr/home/scp-backup.sh` (or change the path in `actions_scp-backup.conf`).

Replace `{USERID}` with the ID of the user `{USER}` for accessing the backup host `{HOST}`.