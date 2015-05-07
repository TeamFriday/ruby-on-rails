class UserSignupsController < ApplicationController
  before_action :set_user_signup, only: [:show, :edit, :update, :destroy]

  # GET /user_signups
  # GET /user_signups.json
  def index
    @user_signups = UserSignup.all
  end

  # GET /user_signups/1
  # GET /user_signups/1.json
  def show
  end

  # GET /user_signups/new
  def new
    @user_signup = UserSignup.new
  end

  # GET /user_signups/1/edit
  def edit
  end

  # POST /user_signups
  # POST /user_signups.json
  def create
    @user_signup = UserSignup.new(user_signup_params)

    respond_to do |format|
      if @user_signup.save
        format.html { redirect_to @user_signup, notice: 'User signup was successfully created.' }
        format.json { render :show, status: :created, location: @user_signup }
      else
        format.html { render :new }
        format.json { render json: @user_signup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_signups/1
  # PATCH/PUT /user_signups/1.json
  def update
    respond_to do |format|
      if @user_signup.update(user_signup_params)
        format.html { redirect_to @user_signup, notice: 'User signup was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_signup }
      else
        format.html { render :edit }
        format.json { render json: @user_signup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_signups/1
  # DELETE /user_signups/1.json
  def destroy
    @user_signup.destroy
    respond_to do |format|
      format.html { redirect_to user_signups_url, notice: 'User signup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_signup
      @user_signup = UserSignup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_signup_params
      params.require(:user_signup).permit(:name, :phone_no, :email, :password, :user_type)
    end
end
