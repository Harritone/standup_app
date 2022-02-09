class StandupsController < ApplicationController
  before_action :set_standup, only: %i[ show edit update destroy ]

  def index
    @standups = Standup.all
  end

  def show
  end

  def new
    @standup = Standup.new
  end

  def edit
  end

  def create
    @standup = Standup.new(standup_params)

    respond_to do |format|
      if @standup.save
        format.html { redirect_to standup_url(@standup), notice: "Standup was successfully created." }
        format.json { render :show, status: :created, location: @standup }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @standup.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @standup.update(standup_params)
        format.html { redirect_to standup_url(@standup), notice: "Standup was successfully updated." }
        format.json { render :show, status: :ok, location: @standup }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @standup.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @standup.destroy

    respond_to do |format|
      format.html { redirect_to standups_url, notice: "Standup was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_standup
      @standup = Standup.find(params[:id])
    end

    def standup_params
      params.require(:standup).permit(:user_id, :standup_date)
    end
end
