class LeansController < ApplicationController
  before_action :set_lean, only: [:show, :edit, :update, :destroy]

  # GET /leans
  # GET /leans.json
  def index
    @leans = Lean.all
  end

  # GET /leans/1
  # GET /leans/1.json
  def show
  end

  # GET /leans/new
  def new
    @lean = Lean.new
  end

  # GET /leans/1/edit
  def edit
  end

  # POST /leans
  # POST /leans.json
  def create
    @lean = Lean.new(lean_params)

    respond_to do |format|
      if @lean.save
        format.html { redirect_to @lean, notice: 'Lean was successfully created.' }
        format.json { render :show, status: :created, location: @lean }
      else
        format.html { render :new }
        format.json { render json: @lean.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leans/1
  # PATCH/PUT /leans/1.json
  def update
    respond_to do |format|
      if @lean.update(lean_params)
        format.html { redirect_to @lean, notice: 'Lean was successfully updated.' }
        format.json { render :show, status: :ok, location: @lean }
      else
        format.html { render :edit }
        format.json { render json: @lean.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leans/1
  # DELETE /leans/1.json
  def destroy
    @lean.destroy
    respond_to do |format|
      format.html { redirect_to leans_url, notice: 'Lean was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lean
      @lean = Lean.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lean_params
      params.require(:lean).permit(:date, :name, :age)
    end
end
