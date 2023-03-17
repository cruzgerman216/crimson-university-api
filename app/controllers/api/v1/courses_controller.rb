# frozen_string_literal: true

module Api
    module V1
      class CoursesController < Api::V1::ApplicationController
        skip_before_action :authenticate, only: %i[list]
  
        def list
          render_success(payload: CourseBlueprint.render_as_hash(Course.all, view: :normal), status: 200)
        end
  
      end
    end
  end
  