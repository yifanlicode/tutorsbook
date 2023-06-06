class TutorsController < ApplicationController
  before_action :set_tutor, only: %i[ show edit update destroy ]
  before_action :authenticate_member!, except: [:index, :show]
  before_action :correct_member, only: [:edit, :update, :destroy]


  # GET /tutors or /tutors.json
  def index
    @tutors = current_member.tutors
  end

  # GET /tutors/1 or /tutors/1.json
  def show
  end

  # GET /tutors/new
  def new
    @tutor = current_member.tutors.build
  end

  # GET /tutors/1/edit
  def edit
  end

  # POST /tutors or /tutors.json
  def create
    @tutor = current_member.tutors.build(tutor_params)

    respond_to do |format|
      if @tutor.save
        format.html { redirect_to @tutor, notice: 'tutor was successfully created.' }
        format.json { render :show, status: :created, location: @tutor }
      else
        format.html { render :new }
        format.json { render json: @tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutors/1 or /tutors/1.json
  def update
    respond_to do |format|
      if @tutor.update(tutor_params)
        format.html { redirect_to tutor_url(@tutor), notice: "tutor was successfully updated." }
        format.json { render :show, status: :ok, location: @tutor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutors/1 or /tutors/1.json
  def destroy
    @tutor.destroy
    respond_to do |format|
      format.html { redirect_to tutors_url, notice: "tutor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_member
    @tutor = current_member.tutors.find_by(id: params[:id])
    redirect_to tutors_path, notice: "Not Authorized To Edit This tutor" if @tutor.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutor
      @tutor = Tutor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tutor_params
      params.require(:tutor).permit(:first_name, :last_name, :email, :phone, :birthday_date,:school_name)
    end
end
