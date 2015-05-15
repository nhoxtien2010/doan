class SanvandongsController < ApplicationController
  before_action :set_sanvandong, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sanvandongs = Sanvandong.all
    respond_with(@sanvandongs)
  end

  def show
    respond_with(@sanvandong)
  end

  def new
    @sanvandong = Sanvandong.new
    respond_with(@sanvandong)
  end

  def edit
  end

  def create
    @sanvandong = Sanvandong.new(sanvandong_params)
    @sanvandong.save
    respond_with(@sanvandong)
  end

  def update
    @sanvandong.update(sanvandong_params)
    respond_with(@sanvandong)
  end

  def destroy
    @sanvandong.destroy
    respond_with(@sanvandong)
  end

  private
    def set_sanvandong
      @sanvandong = Sanvandong.find(params[:id])
    end

    def sanvandong_params
      params.require(:sanvandong).permit(:soghe, :diachi, :thongtinthem, :doibong_id, :ten, :hinhanh)
    end
end
