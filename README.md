# Purpose
* RestClient gem usage for practice making REST requests
* Created as part of TheOdinProject curriculum

# Ruby Version
* Ruby 2.5.1

# System dependencies
* Rails 5.2.1
* Pry
* Rest-Client
* Others listed in Gemfile

# Installation

    git clone https://github.com/ParamagicDev/rest_tester.git
    cd /path/to/rest_tester
    gem install bundler
    bundle install

# Usage

* After following the installation:

      rails server

* Then in another terminal but still in root directory:

      ruby app/script/ruby_tester.rb

* This will bring up a pry REPL in the CLI
* Avaiable commands are listed
* Only GET REST requests supported
* Examines the localhost:3000 via RestClient
