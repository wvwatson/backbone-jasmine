require 'generators/backbone_jasmine'

module BackboneJasmine
  module Generators
    class ModelGenerator < Base

      argument :model_name, :type => :string, :banner => 'model_name'

      def generate_model_test

        template "model_no_collection.js", "spec/javascripts/models/#{model_name}_spec.js"
      end

      private

    end
  end
end
