require 'generators/backbone_jasmine'

module BackboneJasmine
  module Generators
    class InstallGenerator < Base

      def generate_install
        copy_file "jasmine-html.js", "spec/javascripts/support/jasmine-html.js"
        copy_file "jasmine-jquery-1.3.1.js", "spec/javascripts/support/jasmine-jquery-1.3.1.js"
        copy_file "jasmine-sinon.js", "spec/javascripts/support/jasmine-sinon.js"
        copy_file "jasmine.yml", "spec/javascripts/support/jasmine.yml"
        copy_file "jasmine_config.rb", "spec/javascripts/support/jasmine_config.rb"
        copy_file "jasmine_runner.rb", "spec/javascripts/support/jasmine_runner.rb"
        copy_file "sinon-1.1.1.js", "spec/javascripts/support/sinon-1.1.1.js"
        puts <<-EOS

        You'll need to insert the following lines into your application.js file between //=require jquery_ujs and //=require_tree .

          //= require underscore
          //= require backbone
          //
          //= require <your optional main backbone application file> 
          //
          //= require_tree ./models
          //= require_tree ./collections
          //= require_tree ./views
          //= require_tree ./routers
          //= require_tree ../templates
        EOS
      end

      private
    end
  end
end
