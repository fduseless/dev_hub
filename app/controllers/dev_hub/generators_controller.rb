require "rails/generators"

module DevHub
  class GeneratorsController < ApplicationController
    def index
      @namespace = params[:namespace]
      @generators = list_generators
      @generator = find_generator(@namespace)
      # klass.arguments klass.class_options
    end

    protected

    def list_generators
      Rails::Generators.sorted_groups
    end

    def invoke(generator, args)
      Rails::Generators.invoke generator, args, behavior: :invoke, destination_root: Rails::Command.root
    end

    def find_generator(namespace)
      names = namespace.to_s.split(":")
      Rails::Generators.find_by_namespace(names.pop, names.any? && names.join(":"))
    end

    helper_method :generator_component, :generator_nav_component

    def generator_component(generator: , namespace: )
      DevHub::GeneratorComponent.new(generator: generator, namespace: namespace)
    end

    def generator_nav_component
      DevHub::GeneratorNavComponent.new(generators: @generators)
    end
  end
end
