class AddressesController < ApplicationController
  def index
    @student = Student.find(params[:student_id])
  end

  def new
    @student = Student.find(params[:student_id])
    @address = @student.addresses.new
  end

  def create
    @student = Student.find(params[:student_id])
    @address = Address.new(address_params)
    @address.student_id = @student.id
    @address.save

    redirect_to student_address_path(@student, @address)
  end

  private

  def address_params
    params.require(:address).permit(:description, :street_address, :city, :state, :zipcode)
  end
end
