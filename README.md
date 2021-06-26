# Cake day!

![license](https://img.shields.io/github/license/stealthyV1per/cake-day?style=flat-square)
![latest-version](https://img.shields.io/github/v/release/stealthyV1per/cake-day?include_prereleases&style=flat-square)

🎂 A discord bot to remember all those birthdays

## Overview

Cake day is a fully modular bot - meaning all features and commands can be enabled/disabled to your liking, making it completely customizable.
The main focus of Cake day is to remember all the birthdays in your community and remember everyone when its their cake day, to wish them a happy birthday.
You can either [invite] the official bot it to your server or host the bot yourself.

## Installation

### Starting the bot

Simply create a file named `token.txt` and paste your bots token in it.
Then start your bot using `docker-compose up -d`.
*You might want to pass the `--build` option to rebuild the container*

This will create a Docker container, that will run in the background.

### First time database initialization

After starting the bot for the first time, you have to initialize trhe database for the bot to function properly.

Simply dump the database schema into your `database` service using:
```shell
docker-compose exec -T database mysql -hdatabase -uroot < schema.sql
```

If for any reason the database and / or the table already exists, they won't be overridden.

### Stopping the bot

To stop the bot, simply run `docker-compose down`.
This will shut the bot and its database down.

Don't worry, as long as you don't delete the `database` folder, your data is saved.

## License

Released under the [Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0) license.

[invite]: https://discord.com/oauth2/authorize?client_id=793932485125865482&scope=bot&permissions=8
