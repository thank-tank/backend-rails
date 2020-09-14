# ThankTank Backend

This application is the migration from Django to Ruby on Rails

## License
All source code is available under the MIT License. See [LICENSE.md](LICENSE.md) for details.

## Getting Started
To deploy locally, clone the repo and install the gem dependencies:
```
$ bundle install --without production
```
Migrate the database
```
$ rails db:migrate
```
Run tests
```
$ rails test
```
Run the app in a local server:
```
$ rails server
```

## Production Details
The Ruby on Rails application is running on a Heroku dyno at [thanktank.app](https://thanktank.app).
