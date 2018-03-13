class LexemesController < ApplicationController
  before_action :set_lexeme, only: [:show, :update, :destroy]

  # GET /lexemes
  def index
    @lexemes = Lexeme.all

    render json: @lexemes
  end

  # GET /lexemes/1
  def show
    render json: @lexeme
  end

  # POST /lexemes
  def create
    @lexeme = Lexeme.new(lexeme_params)

    if @lexeme.save
      render json: @lexeme, status: :created, location: @lexeme
    else
      render json: @lexeme.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lexemes/1
  def update
    if @lexeme.update(lexeme_params)
      render json: @lexeme
    else
      render json: @lexeme.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lexemes/1
  def destroy
    @lexeme.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lexeme
      @lexeme = Lexeme.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lexeme_params
      params.require(:lexeme).permit(:name, :project_id)
    end
end
