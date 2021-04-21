# Sample project to import dat and show on web

##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [2.7.2](https://github.com/organization/project-name/blob/master/.ruby-version#L1)
- Rails [6.1.3](https://github.com/organization/project-name/blob/master/Gemfile#L12)

```bash
git clone git@github.com:kamalpanhwar/score_board.git
```

##### 2. Create database.yml file

I am using defualt configuration, so if your postgres is set accordingly then it will work. But if you ahve any changed, please edit `config/database.yml`.

```bash
vim config/database.yml
```

##### 3. Create and setup the database

Run the following commands to create and setup the database.

```ruby
bundle exec rake db:create
bundle exec rake db:setup
```

##### 4. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```

And now you can visit the site with the URL http://localhost:3000


##### 5. Running test cases

You can run tests using following command line.
```
rspec 
```

Time start: 10:10
Time End:  12:45 



References
[Football score board reading terms](https://howtheyplay.com/team-sports/abbrev-GA-GF-GS-GD-MP-Caps-meaning-soccer)
[Stack over flow question of csv file test](https://stackoverflow.com/questions/35340693/how-to-test-csv-import-with-rspec)
[Tailwind installation issue of Postcss8/7](https://railsbytes.com/templates/XbBsG6)

