class VongdausController < ApplicationController
  before_action :set_vongdau, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @vongdaus = Vongdau.all
    respond_with(@vongdaus)
  end

  def show
    respond_with(@vongdau)
  end

  def new
    @vongdau = Vongdau.new
    respond_with(@vongdau)
  end

  def edit
  end

  def create
    @vongdau = Vongdau.new(vongdau_params)
    @vongdau.save
    respond_with(@vongdau)
  end

  def update
    @vongdau.update(vongdau_params)
    respond_with(@vongdau)
  end

  def destroy
    @vongdau.destroy
    respond_with(@vongdau)
  end

  private
    def set_vongdau
      @vongdau = Vongdau.find(params[:id])
    end

    def vongdau_params
      params.require(:vongdau).permit(:stt, :sotrandathidau, :thoigianbatdau, :thoigianketthuc)
    end
end
