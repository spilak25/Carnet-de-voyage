class TripsController < ApplicationController

    def index
        @trips = Trip.all
    end


    def new
        @trip = Trip.new
    end
    

    def create
        @trip = Trip.new(trip_params)
    end
    

    def edit
        
    end
    

    def update
        if @trip.update(trip_params)
        redirect_to trips_path, notice: 'Le voyage a été mis à jour avec succès.'
        else
        render :edit
        end
    end
    
    
    def destroy
        @trip.destroy
        redirect_to trips_path, notice: 'Le voyage a été supprimé avec succès.'
    end
    
    private
    
    def set_trip
        @trip = Trip.find(params[:id])
    end
    
    
    def trip_params
        params.require(:trip).permit(:destination, :description, :start_date, :end_date)
    end
end
