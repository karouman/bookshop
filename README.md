# Bookshop
Training to learn Ruby on Rails development.

## Basic features
- register [ Authentication / Session ]
- select a library (location) / Google Map Integration
- see all available books
- "rent" a book for a certain duration
- see when a book should be back
- each book should be link to one or multiple genres
- search book by genre

## Screenshots
![libraries](https://raw.githubusercontent.com/username/projectname/branch/path/to/img.png)
![books](https://raw.githubusercontent.com/username/projectname/branch/path/to/img.png)
![book](https://raw.githubusercontent.com/username/projectname/branch/path/to/img.png)
![user](https://raw.githubusercontent.com/username/projectname/branch/path/to/img.png)
![genre](https://raw.githubusercontent.com/username/projectname/branch/path/to/img.png)

# Getting started
- Start docker (mac): `$ open -a docker`
- Edit `config/en..' to add your own Google Map API Key [optional]
- Build docker imaga: `$ docker build --a bookshop:1.0`
- Run docker container: `$ docker run --publish 8000:3000 bookshop:1.0`
- Browse Bookshop webapp with your favorit web browser: `$ open http://localhost:8000`

# Development
## 3rd part services
```shell
$ ruby -v
ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-darwin19]
$ node -v
v12.16.2
$ rails -v
Rails 6.0.3.2
$ postgres --version
postgres (PostgreSQL) 12.4
```

Install bundle `$ bundle install`

## Database
Open `config/database.yml` and edit configuration to use development database. You should create the database: 'bookshop_development'.

## Settings / Google MAP Api key [OPTIONNAL]
Run `$ rails g config:install` eg.: [https://github.com/rubyconfig/config](https://github.com/rubyconfig/config).

- Edit `config/settings.local.yml'
```
api:
  googlemap: "YOUR_GOOGLE_MAP_API_KEY"
```

- Init database: `$ rails db:migrate`
- Add sample data for development: `$ rails db:seed`

## Start rails server
`$ rails server`, then use your favorit web browser to `http:/localhost:3000/`
