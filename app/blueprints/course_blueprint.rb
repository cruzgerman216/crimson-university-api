# frozen_string_literal: true

# Defines the JSON blueprint for the Token model
class CourseBlueprint < Blueprinter::Base
    identifier :id
    fields :title, :description

    view :normal do
        association :students, blueprint: UserBlueprint
        fields :students, :professor
      end
  end
  