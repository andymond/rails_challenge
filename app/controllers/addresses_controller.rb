class AddressesController < ApplicationController
  def index
    @student = Student.find(params[:student_id])
  end

  def new
    @student = Student.find(params[:student_id])
    @address = @student.addresses.new
  end

end
