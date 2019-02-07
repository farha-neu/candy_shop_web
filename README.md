# Candy Shop

Candy shop is a web application built using Ruby on Rails v5.2.2.

## Deployed Link: <a href="https://candyshops.herokuapp.com/">Candy Shop</a>

## Functionality
<ul>
    <li>Each candy immediately enters the shop as an unshelved candy.</li>
    <li>A shop is able to remove or add a shelf.</li>
    <li>It is possible to move a candy from the list of unshelved candies to a shelf and vice versa. </li>
    <li>A shop is able to list all of the candies it stocks on its shelves.</li>
    <li>When a new shelf is initialized, it is immediately be added to a shop.</li>
</ul>

## Steps to Configure Candy Shop on Local Machine
1. <a href="https://rubyinstaller.org/downloads/">Download and install Ruby on Rails</a> on the local development machine.
Choose Ruby+DevKit 2.5.3-1
2. Test that Ruby is installed by typing the command `ruby -v` at the command line. A command prompt should appear showing the version number of installed Ruby.
3. With Rubygems loaded, you can install all of Rails and its dependencies using the following command through the command line `gem install rails`. Use this command to check the rails version: `rails -v`
3. Download and install <a href="http://www.mysqltutorial.org/install-mysql/">MySQL</a>.

## Getting Started
1. Clone this git repository using the steps mentioned on the link below: https://help.github.com/articles/cloning-a-repository/.
2. Open a terminal and navigate to inside the project folder on terminal. 
3. Type `bundle install` on command prompt and hit enter. 
4. Configure database:
* Open the file database.yml located inside config folder. Modify `username` and `password` fields on lines 16 and 17 to use yours. 
* Create two databases named `candy_shop_web_development` and `candy_shop_web_test`.
* Navigate to inside the project folder on terminal. Type `rails db:migrate` and hit enter. This will create all database tables.
* Type `rails server` on command prompt. Once the server loads, hit the following URL on your browser: `http://localhost:3000`.


