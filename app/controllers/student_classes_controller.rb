class StudentClassesController < ApplicationController
    def create
        @student = Student.find(params[:student_id])
        @studentclass = @student.studentclasses.create(studentclass_params)
        #@student.create_studentclass(params[:studentclass])
        redirect_to student_path(@student)
        puts ""
    end
    
    private
      def studentclass_params
        params.require(:studentclass).permit(:name)
      end

end

