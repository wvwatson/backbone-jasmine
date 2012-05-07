require 'generators/backbone_jasmine'

module BackboneJasmine
  module Generators
    class CollectionGenerator < Base

      argument :collection_name, :type => :string, :banner => 'collection_name'

      def generate_collection_test

        template "collection_without_model.js", "spec/javascripts/collections/#{collection_name}_spec.js"
      end

      private
      def class_name
        collection_name.camelize
      end

      def instance_name
        collection_name.camelize(:lower)
      end
    end
  end
end
