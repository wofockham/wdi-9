class SneakiesController < ApplicationController

  # GET /
  def landing
  end

  # GET /sneakies
  # GET /sneakies.json
  def index
    @sneakies = Sneaky.all
  end

  # GET /sneakies/1
  # GET /sneakies/1.json
  def show
    @sneaky = Sneaky.find(params[:id])
  end

  # GET /sneakies/new
  def new
    @sneaky = Sneaky.new
  end

  # GET /sneakies/1/edit
  def edit
    @sneaky = Sneaky.find(params[:id])
  end

  # POST /sneakies
  # POST /sneakies.json
  def create
    @sneaky = Sneaky.new(sneaky_params)

    respond_to do |format|
      if @sneaky.save
        format.html { redirect_to @sneaky, notice: 'Sneaky was successfully created.' }
        format.json { render :show, status: :created, location: @sneaky }
      else
        format.html { render :new }
        format.json { render json: @sneaky.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sneakies/1
  # PATCH/PUT /sneakies/1.json
  def update
    @sneaky = Sneaky.find(params[:id])

    respond_to do |format|
      if @sneaky.update(sneaky_params)
        format.html { redirect_to @sneaky, notice: 'Sneaky was successfully updated.' }
        format.json { render :show, status: :ok, location: @sneaky }
      else
        format.html { render :edit }
        format.json { render json: @sneaky.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sneakies/1
  # DELETE /sneakies/1.json
  def destroy
    @sneaky = Sneaky.find(params[:id])
    @sneaky.destroy
    respond_to do |format|
      format.html { redirect_to sneakies_url, notice: 'Sneaky was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def sneaky_params
      params.require(:sneaky).permit(:content)
    end
end
