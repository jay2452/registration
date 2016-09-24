class EventCatagoriesController < ApplicationController
  before_action :set_event_catagory, only: [:show, :edit, :update, :destroy]

  # GET /event_catagories
  # GET /event_catagories.json
  def index
    @event_catagories = EventCatagory.all
  end

  # GET /event_catagories/1
  # GET /event_catagories/1.json
  def show
  end

  # GET /event_catagories/new
  def new
    @event_catagory = EventCatagory.new
  end

  # GET /event_catagories/1/edit
  def edit
  end

  # POST /event_catagories
  # POST /event_catagories.json
  def create
    @event_catagory = EventCatagory.new(event_catagory_params)

    respond_to do |format|
      if @event_catagory.save
        format.html { redirect_to @event_catagory, notice: 'Event catagory was successfully created.' }
        format.json { render :show, status: :created, location: @event_catagory }
      else
        format.html { render :new }
        format.json { render json: @event_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_catagories/1
  # PATCH/PUT /event_catagories/1.json
  def update
    respond_to do |format|
      if @event_catagory.update(event_catagory_params)
        format.html { redirect_to @event_catagory, notice: 'Event catagory was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_catagory }
      else
        format.html { render :edit }
        format.json { render json: @event_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_catagories/1
  # DELETE /event_catagories/1.json
  def destroy
    @event_catagory.destroy
    respond_to do |format|
      format.html { redirect_to event_catagories_url, notice: 'Event catagory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_catagory
      @event_catagory = EventCatagory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_catagory_params
      params.require(:event_catagory).permit(:event_id, :catagory_id)
    end
end
