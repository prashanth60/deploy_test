class PunchInOutsController < ApplicationController
  before_action :set_punch_in_out, only: [:show, :edit, :update, :destroy]

  # GET /punch_in_outs
  # GET /punch_in_outs.json
  def index
    @punch_in_outs = PunchInOut.all
  end

  # GET /punch_in_outs/1
  # GET /punch_in_outs/1.json
  def show
  end

  # GET /punch_in_outs/new
  def new
    @punch_in_out = PunchInOut.new
  end

  # GET /punch_in_outs/1/edit
  def edit
  end

  # POST /punch_in_outs
  # POST /punch_in_outs.json
  def create
    @punch_in_out = PunchInOut.new(punch_in_out_params)

    respond_to do |format|
      if @punch_in_out.save
        format.html { redirect_to @punch_in_out, notice: 'Punch in out was successfully created.' }
        format.json { render :show, status: :created, location: @punch_in_out }
      else
        format.html { render :new }
        format.json { render json: @punch_in_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /punch_in_outs/1
  # PATCH/PUT /punch_in_outs/1.json
  def update
    respond_to do |format|
      if @punch_in_out.update(punch_in_out_params)
        format.html { redirect_to @punch_in_out, notice: 'Punch in out was successfully updated.' }
        format.json { render :show, status: :ok, location: @punch_in_out }
      else
        format.html { render :edit }
        format.json { render json: @punch_in_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /punch_in_outs/1
  # DELETE /punch_in_outs/1.json
  def destroy
    @punch_in_out.destroy
    respond_to do |format|
      format.html { redirect_to punch_in_outs_url, notice: 'Punch in out was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_punch_in_out
      @punch_in_out = PunchInOut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def punch_in_out_params
      params.require(:punch_in_out).permit(:user_id, :check_in, :check_out)
    end
end
