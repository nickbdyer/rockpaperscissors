Rock, Paper, Scissors
=====================

[![Code Climate](https://codeclimate.com/github/nickbdyer/rockpaperscissors/badges/gpa.svg)](https://codeclimate.com/github/nickbdyer/rockpaperscissors)

Week 3 Challenge at Makers Academy

Your task is to provide a Rock, Paper, Scissors game for them so they can play on the web with the following features:

- [x] the marketeer has to enter their name before the game
- [x] the marketeer will be presented the choices (rock, paper and scissors)
- [x] the marketeer can choose one option
- [x] the game will choose a random option
- [x] a winner will be declared
- [ ] Bonus 1: Change the game so that two marketeers can play against each other ( yes there are two of them ).
- [ ] Bonus 2: Rock, Paper, Scissors, Spock, Lizard. Use the special rules ( you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock )

Basic Rules
-----------
Rock beats Scissors
Scissors beats Paper
Paper beats Rock

Methodology
-----------

Contrary to previous projects, rather than start by creating a domain model and CRC cards. Since this is a web application, I am going to build this project from the point of view of the user, such that my Cucumber Features and Scenarios will drive the project development. BDD.



Domain Model
------------

**Rock**, **Paper**, **Scissors** is a game with two **players**, one human, the other can either be **AI** or **human**. The object of the **game** is for each player to make a *selection* of either **Rock**, **Paper** or **Scissors**. Simulataneously, or outside of view, the opponent must also make a *selection*. The *winner* is the **player** whos selection 'beats' the others. Rock beats scissors, paper beats rock, scissors beats paper. It may also be fun to make the game *repeat*, with a **counter** to show who is winning overall. 

Running the Program
-------------------

```sh
$ rackup
```
Navigate to http://localhost:9292/

Lessons Learned
---------------

- The limitations of having a page refresh to allow multiple players has become
  apparent. 
- Although my logic works, a better solution has since been presented to us
  using a hash of hashes. Hashes have always seem a little daunting, but at the
  time of writing this that was changed.
