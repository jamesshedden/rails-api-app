class OptionsController < ApplicationController
  before_action :set_option, only: [:show, :update, :destroy]

  # GET /options
  # GET /options.json
  def index
    @options = Option.all

    render json: @options
  end

  # GET /options/1
  # GET /options/1.json
  def show
    render json: @option
  end

  # POST /options
  # POST /options.json
  def create
    @option = Option.new(option_params)

    if @option.save
      render json: @option, status: :created, location: @option
    else
      render json: @option.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /options/1
  # PATCH/PUT /options/1.json
  def update
    @option = Option.find(params[:id])

    if @option.update(option_params)
      head :no_content
    else
      render json: @option.errors, status: :unprocessable_entity
    end
  end

  # DELETE /options/1
  # DELETE /options/1.json
  def destroy
    @option.destroy

    head :no_content
  end

  private

    def set_option
      @option = Option.find(params[:id])
    end

    def option_params
      params.require(:option).permit(:title, :collection_id)
    end
end
