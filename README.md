# backbone-jasmine
Installs generators for use with backbone and rails.

## Installation

Add this line to your application's Gemfile:

    gem 'backbone-jasmine'
    gem 'backbone-on-rails'
    gem 'jasmine', :git => "git://github.com/pivotal/jasmine-gem.git", :ref => "34c1529c3f7"

The jasmine git reference is needed because the current version of jasmine seems to have problems with the asset pipeline.  The reference fixes this problem.

You should then execute:

    $ bundle

Or install it yourself as:

    $ gem install backbone-jasmine

## Usage

### To create a basic directory structure

    rails g backbone_jasmine:install

Follow the instructions listed during the install.  You'll need to edit your application.js file
If you have any weird js that is not in your asset pipeline, you'll need to add it to your jasmine.yml file manually
Right now there only models and collections are generated.  More to come.

    Rails g 

will print all of your generator commands, including those for backbone_jasmine

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
