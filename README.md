<h1 align="center">Tech Battle</h1>

[![Build Status](https://travis-ci.com/domw30/tech-battle.svg?branch=master)](https://travis-ci.com/domw30/tech-battle)

[Project Wall](https://github.com/domw30/tech-battle/projects/1) - Card Wall used to organise tasks and prioritise work.

### Installation 
First, clone this repository:
```
$ git clone git@github.com:domw30/tech-battle.git
```
Once cloned, change into the tech-battle directory and run the commands below:
```
$ bundle install
```
To ensure it works run the rspec tests:
```
$ rspec
```
To start the server:
```
$ rackup -p 3000
```
Visit localhost:3000 page in your browser to use the application:
```
http://localhost:3000
```

### Using Tech Battle
1. Follow this link to the deployed version of Tech Battle:
[Tech Battle](https://tech-battle.herokuapp.com/)

### Technologies
The project used the following technologies/software:
* Ruby
* Rubocop
* RSpec (testing)
* Capybara (testing)
* Sinatra
* Selenium Webdriver
* Travis CI
* Heroku CD
* CSS
* HTML

### Approach
Developer / Git Workflow - Branch, PR, Merge, CI, CD.
Agile Process - User Story, Domain Model, Project Wall.
```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```

### Acknowledgements
Dominic White | Makers Academy
