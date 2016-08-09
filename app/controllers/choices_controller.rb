class ChoicesController < ApplicationController
  before_action :set_choice, only: [:show, :edit, :update, :destroy]

 def index
    @choices = choice.all
  end

  # GET /policies/1
  # GET /policies/1.json
  def show
    @choice = Choice.find(params[:id])
  end

  # GET /policies/new
  def new
    @choice = Choice.new
  end

  # GET /policies/1/edit
  def edit
    @choice = Choice.find(params[:id])
  end

  # POST /policies
  # POST /policies.json
  def create
    @choice = Choice.new(choice_params)
    @choice.save
    redirect_to choices_path
  end

  # PATCH/PUT /policies/1
  # PATCH/PUT /policies/1.json
  def update
    @choice = Choice.find(params[:id])
    @choice.update_attributes(choice_params)
    redirect_to choice_path(@choice)
  end

  # DELETE /policies/1
  # DELETE /policies/1.json
  def destroy
    choice = Choice.find(params[:id])
    @choice.destroy
    redirect_to choices_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choice
      @choice = Choice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def choice_params
      params.require(:choice).permit(:name, :left, :right)
    end
end
