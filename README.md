# Enjoei QA Tech Challenge
---

## Project Folder Structure :open_file_folder:

```
Enjoei QA Challenge/
├─ features/
│  ├─ data/
│  ├─ steps_definitions/
│  │  ├─ max_price/
│  ├─ support/
│  ├─ pages/
│  ├─ reports/
│  ├─ specs/
│  │  ├─ follow/
│  │  ├─ max_price/
├─ readme_pictures

````
---

## Challenge 1 🎯

The first challenge consists in an automation of the Max Price feature.

### Installation Guide: ⚙️

First, you must have Chromedriver downloaded and added to your path.

You can download Chromedriver for your O.S [here](https://chromedriver.chromium.org/) and add the chromedriver to your path following [this tutorial](https://www.browserstack.com/guide/run-selenium-tests-using-selenium-chromedriver).

To run theses tests, you must have Ruby installed on your machine. Any version after the 2.5 will do. You can follow the tutorial at [Ruby official download page](https://www.ruby-lang.org/en/). 

After having it installed, download bundler, running on your terminal:

```ruby
gem install budler
```
After installing bundler, choose the folder where you want to download the project and run:

```git
git clone https://github.com/gdealmeida1885/

```
Navigate to the folder that you downloaded and install the dependencies:

```ruby
cd /ENJOEI_QA_CHALLENGE
bundle install
```

Once the dependecies are installed sucessfully, run the command below to start the testing:

```ruby
cucumber --format html -o features\reports\report.html
```

When the test execution have finished, you wil find the execution report on the Reports folder.

---

## Challenge 2 🎯

The challenge 2 consisted of writing Follow feature in gherkin sintax, a feature which consists of users following/unfollowing each other.

The challenge is at the specs/follow folder.

---

## Bugs :beetle:

While testing the app, I stumbled accros a weird behaviour which may be a possible bug.

1) I've created two accounts to automate the challenge 2 (their credentials are at data/credentials.yml) and after that, using the "account a", I've tried to follow the account b. The bug that happened is that it took me more than 5 minutes until the website started to show on "user b" followers list the first follower.
Also, after a while, the tab "follwers" started counting that the "user a" had a new follower, but when clicking on it, the tab refreshed to 0 followers.
I've got a few evidences of it, showing the "User B" trying to follow "User A" and nothing happening.
[Evidence 1](readme_pictures/evidence1.png). [Evidence 2](readme_pictures/evidence2.png).
Due to this issue, I wasn't able to automate the challenge two, since it would be impractical to make Capybara to wait 5 minutes until checking if the users are following each other.
