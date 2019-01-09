class QrsController < ApplicationController
  before_action :set_qr, only: [:show, :edit, :update, :destroy]

  # GET /qrs
  # GET /qrs.json
  def index
    @qrs = Qr.all
  end

  # GET /qrs/1
  # GET /qrs/1.json
  def show
    require 'rqrcode'
    require 'rqrcode_png'
    require 'chunky_png' # to_data_urlはchunky_pngのメソッド

    content = 'Hello World'
    size    = 3           # 1..40
    level   = :h            # l, m, q, h

    qr = RQRCode::QRCode.new(content, size: size, level: level)
    # png変換->リサイズ->base64エンコード
    @qr_base64 = qr.to_img.resize(200, 200).to_data_url
  end

  # GET /qrs/new
  def new
    @qr = Qr.new
  end

  # GET /qrs/1/edit
  def edit
  end

  # POST /qrs
  # POST /qrs.json
  def create
    @qr = Qr.new(qr_params)

    respond_to do |format|
      if @qr.save
        format.html { redirect_to @qr, notice: 'Qr was successfully created.' }
        format.json { render :show, status: :created, location: @qr }
      else
        format.html { render :new }
        format.json { render json: @qr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qrs/1
  # PATCH/PUT /qrs/1.json
  def update
    respond_to do |format|
      if @qr.update(qr_params)
        format.html { redirect_to @qr, notice: 'Qr was successfully updated.' }
        format.json { render :show, status: :ok, location: @qr }
      else
        format.html { render :edit }
        format.json { render json: @qr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qrs/1
  # DELETE /qrs/1.json
  def destroy
    @qr.destroy
    respond_to do |format|
      format.html { redirect_to qrs_url, notice: 'Qr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qr
      @qr = Qr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qr_params
      params.require(:qr).permit(:name, :path)
    end
end
