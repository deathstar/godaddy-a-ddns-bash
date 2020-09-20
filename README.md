godaddy-a-ddns-bash
===================

### About
This script uses the GoDaddy API to automatically update the A record for your domain to your external IP address. If you are already using a Dynamic DNS service for the CNAME www record, that should work for your domain only if the client types: www.your-domain.com. This script will update the A record for your domain so that when clients type your-domain.com, it will forward them to the right location.

### Directions
Please see https://techmasterdesign.com/forum/viewtopic.php?f=2&t=955 for directions.

### Compatability
This script will work with crontab so you can schedule it to run whenever you want.
