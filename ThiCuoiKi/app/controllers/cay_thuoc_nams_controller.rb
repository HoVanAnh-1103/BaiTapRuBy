class CayThuocNamsController < ApplicationController
  def index
    @demo = params[:demo]
    @cay_thuoc_nams = CayThuocNam.has_keyword(@demo)
    #lấy dữ liệu
   
  end
  def show
    #lấy dữ liệu chi tiết
    @cay_thuoc_nams = CayThuocNam.find(params[:id])
  end
  def new
    @cay_thuoc_nams = CayThuocNam.new
  end

  def create
    @cay_thuoc_nams= CayThuocNam.new(cay_thuoc_nam_params)

    if @cay_thuoc_nams.save
      redirect_to @cay_thuoc_nams
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @cay_thuoc_nams= CayThuocNam.find(params[:id])
  end

  def update
    @cay_thuoc_nams= CayThuocNam.find(params[:id])

    if @cay_thuoc_nams.update(cay_thuoc_nam_params)
      redirect_to @cay_thuoc_nams
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @cay_thuoc_nams = CayThuocNam.find(params[:id])
    @cay_thuoc_nams.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def cay_thuoc_nam_params
      params.require(:cay_thuoc_nam).permit(:ten, :chitiet, :giathanh, :soluong,  :maula, :duoctinh, :luuy, :noitrong)
    end
end
