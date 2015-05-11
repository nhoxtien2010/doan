class ThongtintksController < ApplicationController
  before_action :set_thongtintk, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @thongtintks = Thongtintk.all
    respond_with(@thongtintks)
  end

  def show
    respond_with(@thongtintk)
  end

  def new
    @thongtintk = Thongtintk.new
    respond_with(@thongtintk)
  end

  def edit
  end

  def create
    @thongtintk = Thongtintk.new(thongtintk_params)
    @thongtintk.save
    respond_with(@thongtintk)
  end

  def update
    @thongtintk.update(thongtintk_params)
    respond_with(@thongtintk)
  end

  def destroy
    @thongtintk.destroy
    respond_with(@thongtintk)
  end

  private
    def set_thongtintk
      @thongtintk = Thongtintk.find(params[:id])
    end

    def thongtintk_params
      params.require(:thongtintk).permit(:hinhanh, :email, :ten, :tuoi, :diachi, :sdt, :gioitinh, :taikhoan_id)
    end
end
