class BaivietsController < ApplicationController
  before_action :set_baiviet, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @baiviets = Baiviet.all
    respond_with(@baiviets)
  end

  def show
    respond_with(@baiviet)
  end

  def new
    @baiviet = Baiviet.new
    respond_with(@baiviet)
  end

  def edit
  end

  def create
    @baiviet = Baiviet.new(baiviet_params)
    @baiviet.save
    respond_with(@baiviet)
  end

  def update
    @baiviet.update(baiviet_params)
    respond_with(@baiviet)
  end

  def destroy
    @baiviet.destroy
    respond_with(@baiviet)
  end

  private
    def set_baiviet
      @baiviet = Baiviet.find(params[:id])
    end

    def baiviet_params
      params.require(:baiviet).permit(:tieude, :noidung, :taikhoan_id)
    end
end
