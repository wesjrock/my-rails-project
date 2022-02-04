# Rails Challenge

Make a contact list rails application only using Models.
- A user can have many contacts.
- A contact can have multiple phone numbers.
- Validate its attributes and make migrations (attributes marked with * must be unique and mandatory).

- User
  - name*
  - age
  - biography

- Contact
  - name*
  - birth date

- Phone
  - number*
  - phone type* (home/work/other)
  - main* (boolean)


# Required
1. Install Ruby (version 3.1.0) and Ruby Gems
```
https://rvm.io
https://rubygems.org/pages/download
```
2. Install bundler
```
$ gem install bundler
```
3. Clone this repository and then Extract it
```
$ git clone git@github.com:wesjrock/my-rails-project.git
```
4. Install dependencies:
```
$ 'bundle install'
```

# Running rails server
Go to root directory and run:

```
$ rails server
```

# Adding data and checking the database
```
$ rails console
$ User.create!(name: "Paul", age: "25", bio: "Paul is a client from England")
$ User.find_by(name: "Paul").contacts.create!(name: "Patricia")
$ Contact.find_by(name: "Patricia").phones.create!(number: "5550103", phone_type: "home", main: "1")
$ User.all
$ Contact.all
$ Phone.all
```
