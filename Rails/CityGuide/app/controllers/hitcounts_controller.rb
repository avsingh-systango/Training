class HitcountsController < ApplicationController
  before_action :set_hitcount, only: [:show, :edit, :update, :destroy]

  # GET /hitcounts
  # GET /hitcounts.json
  def index
    @hitcounts = Hitcount.all
  end

  # GET /hitcounts/1
  # GET /hitcounts/1.json
  def show
  end

  # GET /hitcounts/new
  def new
    @hitcount = Hitcount.new
  end

  # GET /hitcounts/1/edit
  def edit
  end

  # POST /hitcounts
  # POST /hitcounts.json
  def create
    @hitcount = Hitcount.new(hitcount_params)

    respond_to do |format|
      if @hitcount.save
        format.html { redirect_to @hitcount, notice: 'Hitcount was successfully created.' }
        format.json { render :show, status: :created, location: @hitcount }
      else
        format.html { render :new }
        format.json { render json: @hitcount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hitcounts/1
  # PATCH/PUT /hitcounts/1.json
  def update
    respond_to do |format|
      if @hitcount.update(hitcount_params)
        format.html { redirect_to @hitcount, notice: 'Hitcount was successfully updated.' }
        format.json { render :show, status: :ok, location: @hitcount }
      else
        format.html { render :edit }
        format.json { render json: @hitcount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hitcounts/1
  # DELETE /hitcounts/1.json
  def destroy
    @hitcount.destroy
    respond_to do |format|
      format.html { redirect_to hitcounts_url, notice: 'Hitcount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hitcount
      @hitcount = Hitcount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hitcount_params
      params.require(:hitcount).permit(:user_id, :hitable_id, :hitable_type)
    end
end
