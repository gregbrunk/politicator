class UsersController < ApplicationController
  before_action :logged_in?, only: [:show, :edit, :update, :destroy, :new_survey]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = current_user
    
  end

  # GET /users/new
  def new
    # @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.create(user_params)
    login(@user) # <-- login the user
    redirect_to "/users/#{@user.id}" # <-- go to show
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to profile_path
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  def new_survey
    @user = current_user
    @policies = Policy.all
    render :new_survey
  end

  def create_survey
    answer1 = params[:policy_1]
    answer2 = params[:policy_2]
    answer3 = params[:policy_3]
    answer4 = params[:policy_4]
    answer5 = params[:policy_5]
    answer6 = params[:policy_6]
    answer7 = params[:policy_7]
    answer8 = params[:policy_8]
    answer9 = params[:policy_9]
    answer10 = params[:policy_10]
    answer11 = params[:policy_11]
    answer12 = params[:policy_12]
    
    choice1 = Choice.new()
      choice1.choice = answer1
      choice1.policy_id = 1
      choice1.user_id = current_user.id
    choice1.save

    choice2 = Choice.new()
      choice2.choice = answer2
      choice2.policy_id = 2
      choice2.user_id = current_user.id
    choice2.save

    choice3 = Choice.new()
      choice3.choice = answer3
      choice3.policy_id = 3
      choice3.user_id = current_user.id
    choice3.save

    choice4 = Choice.new()
      choice4.choice = answer4
      choice4.policy_id = 4
      choice4.user_id = current_user.id
    choice4.save
    
    choice5 = Choice.new()
      choice5.choice = answer5
      choice5.policy_id = 5
      choice5.user_id = current_user.id
    choice5.save
    
    choice6 = Choice.new()
      choice6.choice = answer6
      choice6.policy_id = 6
      choice6.user_id = current_user.id
    choice6.save

    choice7 = Choice.new()
      choice7.choice = answer7
      choice7.policy_id = 7
      choice7.user_id = current_user.id
    choice7.save

    choice8 = Choice.new()
      choice8.choice = answer8
      choice8.policy_id = 8
      choice8.user_id = current_user.id
    choice8.save

    choice9 = Choice.new()
      choice9.choice = answer9
      choice9.policy_id = 9
      choice9.user_id = current_user.id
    choice9.save

    choice10 = Choice.new()
      choice10.choice = answer10
      choice10.policy_id = 10
      choice10.user_id = current_user.id
    choice10.save

    choice11 = Choice.new()
      choice11.choice = answer11
      choice11.policy_id = 11
      choice11.user_id = current_user.id
    choice11.save

    choice12 = Choice.new()
      choice12.choice = answer12
      choice12.policy_id = 12
      choice12.user_id = current_user.id
    choice12.save
  end

  def results
    @policies = Policy.all
    @user = current_user
    @choices = @user.choices
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :location, :party, :email, :profile_pic, :password)
    end
end
