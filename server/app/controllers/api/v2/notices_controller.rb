class Api::V2::NoticesController < ApplicationController
  before_action :set_notice, only: [:show, :edit, :update, :destroy]

  # GET /notices
  # GET /notices.json
  def index
    @notices = Notice.all
  end

  # GET /notices/1
  # GET /notices/1.json
  def show
  end

  # GET /notices/new
  def new
    @notice = Notice.new
  end

  # GET /notices/1/edit
  def edit
  end
  
  def redirect
    #redirect_to 'https://google.com/'
      #redirect_to 'kyutechapp://notice?id=9'
    @id = params[:id]
    @notice = Notice.find_by(:id => @id)

  end
  def webPage
    redirect_to 'https://db.jimu.kyutech.ac.jp/cgi-bin/cbdb/db.cgi?page=DBRecord&did=391&qid=all&vid=24&rid=50&Head=&hid=&sid=n&rev=0&ssid=3-693-26272-g181'

  end
  def twitter
    @id = params[:id]
    @notice = Notice.find_by(:id => @id)
    render json: @notice

  end
  # POST /notices
  # POST /notices.json
  def create
    @notice = Notice.new(notice_params)

    respond_to do |format|
      if @notice.save
        format.html { redirect_to @notice, notice: 'Notice was successfully created.' }
        format.json { render :show, status: :created, location: @notice }
      else
        format.html { render :new }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notices/1
  # PATCH/PUT /notices/1.json
  def update
    respond_to do |format|
      if @notice.update(notice_params)
        format.html { redirect_to @notice, notice: 'Notice was successfully updated.' }
        format.json { render :show, status: :ok, location: @notice }
      else
        format.html { render :edit }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notices/1
  # DELETE /notices/1.json
  def destroy
    @notice.destroy
    respond_to do |format|
      format.html { redirect_to notices_url, notice: 'Notice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notice
      @notice = Notice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notice_params
      params.require(:notice).permit(:title, :detail, :category_id, :department_id, :campus_id, :date, :period_time, :grade_id, :place, :subject, :teacher, :before, :after, :web_url, :note)
    end
end