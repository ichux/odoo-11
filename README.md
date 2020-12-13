## Odoo 11
Set up Odoo 11 with local network

## SETUP POSTGRESQL
1. Follow the setup process outlined at https://github.com/ichux/outdocks/tree/master/postgresql
2. `cp .env.example .env`
3. alter the variable in .env that was created above to taste
4. Create Odoo DB: `make odoodb`

## DOCKER INITIALIZATION GUIDELINE
* Follow the process in the Makefile: make [up/down/bash/logs]
