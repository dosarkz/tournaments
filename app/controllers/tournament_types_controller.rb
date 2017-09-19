class TournamentTypesController < ApplicationController
  before_action :set_tournament_type, only: [:show, :edit, :update, :destroy]

  # GET /tournament_types
  # GET /tournament_types.json
  def index
    @tournament_types = TournamentType.all
  end

  # GET /tournament_types/1
  # GET /tournament_types/1.json
  def show
  end

  # GET /tournament_types/new
  def new
    @tournament_type = TournamentType.new
  end

  # GET /tournament_types/1/edit
  def edit
  end

  # POST /tournament_types
  # POST /tournament_types.json
  def create
    @tournament_type = TournamentType.new(tournament_type_params)

    respond_to do |format|
      if @tournament_type.save
        format.html { redirect_to @tournament_type, notice: 'Tournament type was successfully created.' }
        format.json { render :show, status: :created, location: @tournament_type }
      else
        format.html { render :new }
        format.json { render json: @tournament_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tournament_types/1
  # PATCH/PUT /tournament_types/1.json
  def update
    respond_to do |format|
      if @tournament_type.update(tournament_type_params)
        format.html { redirect_to @tournament_type, notice: 'Tournament type was successfully updated.' }
        format.json { render :show, status: :ok, location: @tournament_type }
      else
        format.html { render :edit }
        format.json { render json: @tournament_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tournament_types/1
  # DELETE /tournament_types/1.json
  def destroy
    @tournament_type.destroy
    respond_to do |format|
      format.html { redirect_to tournament_types_url, notice: 'Tournament type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament_type
      @tournament_type = TournamentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tournament_type_params
      params.require(:tournament_type).permit(:name)
    end
end
