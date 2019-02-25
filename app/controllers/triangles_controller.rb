class TrianglesController < ApplicationController
  before_action :set_triangle, only: [:show, :edit, :update, :destroy]

  # GET /triangles
  # GET /triangles.json
  def index
    @triangles = Triangle.all
  end

  # GET /triangles/1
  # GET /triangles/1.json
  def show
  end

  # GET /triangles/new
  def new
    @triangle = Triangle.new
  end

  # GET /triangles/1/edit
  def edit
  end

  # POST /triangles
  # POST /triangles.json
  def create
    @triangle = Triangle.new(triangle_params)

    respond_to do |format|
      if @triangle.save
        format.html { redirect_to @triangle, notice: 'Triangle was successfully created.' }
        format.json { render :show, status: :created, location: @triangle }
      else
        format.html { render :new }
        format.json { render json: @triangle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /triangles/1
  # PATCH/PUT /triangles/1.json
  def update
    respond_to do |format|
      if @triangle.update(triangle_params)
        format.html { redirect_to @triangle, notice: 'Triangle was successfully updated.' }
        format.json { render :show, status: :ok, location: @triangle }
      else
        format.html { render :edit }
        format.json { render json: @triangle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /triangles/1
  # DELETE /triangles/1.json
  def destroy
    @triangle.destroy
    respond_to do |format|
      format.html { redirect_to triangles_url, notice: 'Triangle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_triangle
      @triangle = Triangle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def triangle_params
      params.require(:triangle).permit(:side)
    end
end
