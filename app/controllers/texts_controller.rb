class TextsController < ApplicationController
  before_action :set_text, only: [:show, :update, :destroy]

  # GET /texts
  def index
    @texts = Text.all

    render json: @texts
  end

  # GET /texts/1
  def show
    render json: @text
  end

  # POST /texts
  def create
    @text = Text.new(text_params)

    if @text.save
      render json: @text, status: :created, location: @text
    else
      render json: @text.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /texts/1
  def update
    if @text.update(text_params)
      render json: @text
    else
      render json: @text.errors, status: :unprocessable_entity
    end
  end

  # DELETE /texts/1
  def destroy
    @text.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text
      @text = Text.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def text_params
      params.require(:text).permit(:title, :content, :project_id)
    end
end
