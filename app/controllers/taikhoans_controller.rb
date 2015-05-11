class TaikhoansController < ApplicationController
  before_action :set_taikhoan, only: [:show, :edit, :update, :destroy]

  # GET /taikhoans
  # GET /taikhoans.json
  def index
    @taikhoans = Taikhoan.all
  end

  # GET /taikhoans/1
  # GET /taikhoans/1.json
  def show
  end

  # GET /taikhoans/new
  def new
    @taikhoan = Taikhoan.new
  end

  # GET /taikhoans/1/edit
  def edit
  end

  # POST /taikhoans
  # POST /taikhoans.json
  def create
    @taikhoan = Taikhoan.new(taikhoan_params)

    respond_to do |format|
      if @taikhoan.save
        format.html { redirect_to @taikhoan, notice: 'Taikhoan was successfully created.' }
        format.json { render :show, status: :created, location: @taikhoan }
      else
        format.html { render :new }
        format.json { render json: @taikhoan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taikhoans/1
  # PATCH/PUT /taikhoans/1.json
  def update
    respond_to do |format|
      if @taikhoan.update(taikhoan_params)
        format.html { redirect_to @taikhoan, notice: 'Taikhoan was successfully updated.' }
        format.json { render :show, status: :ok, location: @taikhoan }
      else
        format.html { render :edit }
        format.json { render json: @taikhoan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taikhoans/1
  # DELETE /taikhoans/1.json
  def destroy
    @taikhoan.destroy
    respond_to do |format|
      format.html { redirect_to taikhoans_url, notice: 'Taikhoan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taikhoan
      @taikhoan = Taikhoan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taikhoan_params
      params.require(:taikhoan).permit(:usernam, :password)
    end
end
