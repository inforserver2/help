class UsertestsController < ApplicationController
  before_action :set_usertest, only: [:show, :edit, :update, :destroy]

  # GET /usertests
  # GET /usertests.json
  def index
    @usertests = Usertest.all
  end

  # GET /usertests/1
  # GET /usertests/1.json
  def show
  end

  # GET /usertests/new
  def new
    @usertest = Usertest.new
  end

  # GET /usertests/1/edit
  def edit
  end

  # POST /usertests
  # POST /usertests.json
  def create
    @usertest = Usertest.new(usertest_params)

    respond_to do |format|
      if @usertest.save
        format.html { redirect_to @usertest, notice: 'Usertest was successfully created.' }
        format.json { render :show, status: :created, location: @usertest }
      else
        format.html { render :new }
        format.json { render json: @usertest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usertests/1
  # PATCH/PUT /usertests/1.json
  def update
    respond_to do |format|
      if @usertest.update(usertest_params)
        format.html { redirect_to @usertest, notice: 'Usertest was successfully updated.' }
        format.json { render :show, status: :ok, location: @usertest }
      else
        format.html { render :edit }
        format.json { render json: @usertest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usertests/1
  # DELETE /usertests/1.json
  def destroy
    @usertest.destroy
    respond_to do |format|
      format.html { redirect_to usertests_url, notice: 'Usertest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usertest
      @usertest = Usertest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usertest_params
      params.require(:usertest).permit(:name, :age)
    end
end
