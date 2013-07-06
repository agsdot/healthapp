class FitnessesController < ApplicationController
  # GET /fitnesses
  # GET /fitnesses.json
  def index
    @fitnesses = Fitness.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fitnesses }
    end
  end

  # GET /fitnesses/1
  # GET /fitnesses/1.json
  def show
    @fitness = Fitness.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fitness }
    end
  end

  # GET /fitnesses/new
  # GET /fitnesses/new.json
  def new
    @fitness = Fitness.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fitness }
    end
  end

  # GET /fitnesses/1/edit
  def edit
    @fitness = Fitness.find(params[:id])
  end

  # POST /fitnesses
  # POST /fitnesses.json
  def create
    @fitness = Fitness.new(params[:fitness])

    respond_to do |format|
      if @fitness.save
        format.html { redirect_to @fitness, notice: 'Fitness was successfully created.' }
        format.json { render json: @fitness, status: :created, location: @fitness }
      else
        format.html { render action: "new" }
        format.json { render json: @fitness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fitnesses/1
  # PUT /fitnesses/1.json
  def update
    @fitness = Fitness.find(params[:id])

    respond_to do |format|
      if @fitness.update_attributes(params[:fitness])
        format.html { redirect_to @fitness, notice: 'Fitness was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fitness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fitnesses/1
  # DELETE /fitnesses/1.json
  def destroy
    @fitness = Fitness.find(params[:id])
    @fitness.destroy

    respond_to do |format|
      format.html { redirect_to fitnesses_url }
      format.json { head :no_content }
    end
  end
end
