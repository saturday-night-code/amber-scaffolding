<p align="center"><img src="https://avatars.githubusercontent.com/u/87999310" alt="saturday night code logo" width="122px" style="border-radius: 10px"/></p>

<h1 align="center">amber-scaffolding</h1>

A CRUD(Create, Read, Update, Delete) using Amber Generate in Crystal.

## What was used?

- [Amber](https://amberframework.org/)
- [Amber - Directory Structure](https://docs.amberframework.org/amber/guides/directory-structure)
- [Amber Generate Scaffolding - RESTful](https://docs.amberframework.org/amber/cli/generate#scaffolding)

## :runner: To run this project?

First, you need to have installed Crystal and Amber.

<details>
  <summary>Install: Crystal</summary>

  For Debian/Ubuntu based system:

  1. `sudo apt-get update`
  2. Install Crystal: `curl https://dist.crystal-lang.org/apt/setup.sh | sudo bash` and `sudo apt-get install build-essential crystal`

  After installation, run: `crystal --version` to verify that it was correctly installed.
  
  For Windows 10:
  1. The Crystal compiler doesn’t run on Windows yet, but it can be used with WSL (use linux installation guide in this case).
</details>

<details>
  <summary>Install: Amber</summary>

  For Debian/Ubuntu based system:

  3. Install Amber: 
     1. `sudo apt-get install libreadline-dev libsqlite3-dev libpq-dev libmysqlclient-dev libssl-dev libyaml-dev libpcre3-dev libevent-dev`
     2. `curl -L https://github.com/amberframework/amber/archive/stable.tar.gz | tar xz`
     3. `cd amber-stable/` and `shards install`, finally: `make install`
  
  About Amber installation on other Linux Distributions: [Amber - Installation](https://docs.amberframework.org/amber/guides/installation)
  
  For Windows 10:
  1. As the Crystal compiler doesn't run on Windows yet, Amber doesn't either.
</details>

<details>
  <summary>Create: New project using Amber</summary>

  1. Create new Amber project: `amber new projectName` and `cd projectName`
  2. Install dependencies: `shards install`
  3. Install Node dependencies: `npm install`
</details>

<details>
  <summary>Create: CRUD using Amber Generate Scaffolding</summary>

  1. First, you need to have installed  [Docker Compose](https://docs.docker.com/compose/install/) and readed the [Amber - Docker Usage Guide](https://docs.amberframework.org/amber/guides/docker#usage).
  2. If you have an [error using Docker Compose Up on Amber](https://github.com/amberframework/amber/issues/1160), use: `sudo docker-compose up -d db`
  3. In project root folder, run: `amber g scaffold ClassName attr_name:attr_type attr2_name:attr_type attr3_name:attr_type`
     1. Verify [available Data Types](https://docs.amberframework.org/amber/guides/models/jennifer/migrations#data-types-and-mappings).
  4. Run the migration: 
     1. Only migration: `amber db migrate`
     2. Migration and Create DB: `amber db create migrate`
</details>

Run Amber project: `amber watch`

Use `amber routes` to see all routes in your project.

## Contributing

1. Fork it (<https://github.com/saturday-night-code/CR_amsca/fork>)
2. Create your feature branch (`git checkout -b CR_amsca-Type-feature`)
3. Commit your changes (`git commit -am 'Type: some feature'`)
   1. Available Types (replace in Type): Add|Fix|Review
4. Push to the branch (`git push origin CR_amsca-Type-feature`)
5. Create a new Pull Request
