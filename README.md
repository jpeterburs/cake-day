# Cake day!

🎂 A discord bot to remember all those birthdays

## Overview

Cake day is a fully modular bot - meaning all features and commands can be enabled/disabled to your liking, making it completely customizable.
The main focus of Cake day is to remember all the birthdays in your community and remember everyone when its their cake day, to wish them a happy birthday.
You can either [invite] the official bot it to your server or host the bot yourself.

## Installation

Simply create a file named `token.txt` and paste your bots token in it.
Then start your bot using `docker-compose up -d`.
*You might want to pass the `--build` option to rebuild the container*

This will create a Docker container, that will run in the background
To stop the demon, simply run `docker-compose down`.

## License

Released under the [Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0) license.

[invite]: https://discord.com/oauth2/authorize?client_id=793932485125865482&scope=bot&permissions=8
