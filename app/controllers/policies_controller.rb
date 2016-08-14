class PoliciesController < ApplicationController
  before_action :set_policy, only: [:show, :edit, :update, :destroy]

  # GET /policies
  def index
    @policies = Policy.all
  end

  # GET /policies/1
  def show
    @policy = Policy.find(params[:id])
  end

  # GET /policies/new
  def new
    @policy = Policy.new
  end

  # GET /policies/1/edit
  def edit
    @policy = Policy.find(params[:id])
  end

  # POST /policies
  def create
    @policy = Policy.new(policy_params)
    @policy.save
    redirect_to policies_path
  end

  # PATCH/PUT /policies/1
  def update
    @policy = Policy.find(params[:id])
    @policy.update_attributes(policy_params)
    redirect_to policy_path(@policy)
  end

  # DELETE /policies/1
  def destroy
    policy = Policy.find(params[:id])
    @policy.destroy
    redirect_to policies_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policy
      @policy = Policy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def policy_params
      params.require(:policy).permit(:name, :left, :right)
    end
end
