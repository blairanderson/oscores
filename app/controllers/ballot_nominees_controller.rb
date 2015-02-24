class BallotNomineesController < ApplicationController
  before_action :set_ballot_nominee, only: [:show, :edit, :update, :destroy]

  # GET /ballot_nominees
  # GET /ballot_nominees.json
  def index
    @ballot_nominees = BallotNominee.all
  end

  # GET /ballot_nominees/1
  # GET /ballot_nominees/1.json
  def show
  end

  # GET /ballot_nominees/new
  def new
    @ballot_nominee = BallotNominee.new
  end

  # GET /ballot_nominees/1/edit
  def edit
  end

  # POST /ballot_nominees
  # POST /ballot_nominees.json
  def create
    @ballot_nominee = BallotNominee.new(ballot_nominee_params)

    respond_to do |format|
      if @ballot_nominee.save
        format.html { redirect_to @ballot_nominee, notice: 'Ballot nominee was successfully created.' }
        format.json { render :show, status: :created, location: @ballot_nominee }
      else
        format.html { render :new }
        format.json { render json: @ballot_nominee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ballot_nominees/1
  # PATCH/PUT /ballot_nominees/1.json
  def update
    respond_to do |format|
      if @ballot_nominee.update(ballot_nominee_params)
        format.html { redirect_to @ballot_nominee, notice: 'Ballot nominee was successfully updated.' }
        format.json { render :show, status: :ok, location: @ballot_nominee }
      else
        format.html { render :edit }
        format.json { render json: @ballot_nominee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ballot_nominees/1
  # DELETE /ballot_nominees/1.json
  def destroy
    @ballot_nominee.destroy
    respond_to do |format|
      format.html { redirect_to ballot_nominees_url, notice: 'Ballot nominee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ballot_nominee
      @ballot_nominee = BallotNominee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ballot_nominee_params
      params.require(:ballot_nominee).permit(:video_id, :category_key, :bn_type, :nominee, :nominee_description, :ballot_id)
    end
end
