# frozen_string_literal: true

module Api
    module V1
      class StudentsController < Api::V1::ApplicationController
  
        def create
            # Step 1
                # Get Result 
                result = Students::Crud.new_student(params)
            # Step 2
                # return error response if result was unsuccessful 
                return render_error(errors: result.errors, status: 400) unless result.success? 
            # Step 3
                # if result was successful 
            # define a payload
            payload = {
                student: result.payload
            }
                # Step 4
            # return successful response
            render_success(payload: payload, status: :ok)
        end
      end
    end
  end
  