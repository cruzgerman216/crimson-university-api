module Students 
    module Crud 
        def self.new_student(params) 
            student = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone: params[:phone], password: params[:password], password_confirmation: params[:password_confirmation], role_ids: [3])

            if student.save
                return ServiceContract.success(student)
            else 
                return ServiceContract.error(student.errors.full_messages)
            end

        end
    end
end

