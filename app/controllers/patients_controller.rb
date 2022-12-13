class PatientsController < ApplicationController
  def index
    @patients = Patient.all
    
    render json: @patients
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      render json: @patient, status: :created
      return
    else
      render status: :bad_request
    end
  end

  def update
    @patient = Patient.find(params[:id])

    if @patient.update(patient_params)
      render json: @patient
    else
      render status: :bad_request
    end
  end

  def destroy
    @patient = Patient.find(params[:id])

    @patient.destroy

    render status: :no_content
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :document, :health_system_id, :birthday, :insurance_plan)
  end

end
