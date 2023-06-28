class ArticlsController < ApplicationController
  before_action :set_articl, only: %i[ show edit update destroy ]

  # GET /articls or /articls.json
  def index
    @articls = Articl.all
  end

  # GET /articls/1 or /articls/1.json
  def show
  end

  # GET /articls/new
  def new
    @articl = Articl.new
  end

  # GET /articls/1/edit
  def edit
  end

  # POST /articls or /articls.json
  def create
    @articl = Articl.new(articl_params)

    respond_to do |format|
      if @articl.save
        format.html { redirect_to articl_url(@articl), notice: "Articl was successfully created." }
        format.json { render :show, status: :created, location: @articl }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @articl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articls/1 or /articls/1.json
  def update
    respond_to do |format|
      if @articl.update(articl_params)
        format.html { redirect_to articl_url(@articl), notice: "Articl was successfully updated." }
        format.json { render :show, status: :ok, location: @articl }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @articl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articls/1 or /articls/1.json
  def destroy
    @articl.destroy

    respond_to do |format|
      format.html { redirect_to articls_url, notice: "Articl was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articl
      @articl = Articl.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def articl_params
      params.require(:articl).permit(:title, :description)
    end
end
