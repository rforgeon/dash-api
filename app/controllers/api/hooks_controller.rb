class Api::HooksController < ApplicationController
  #before_action :authenticate_user!

  def ride_event_callback
    render json: params['event']['pickup']
    #
    # # If the body contains the pickup parameter...
    # if params[:pickup]
    #   #if parmas['event_id'].isUnique
    #   # Create a new Survey object based on the received parameters...
    #   lyftRide = LyftMetric.new(:ride_id => params[:ride_id])
    #
    #   #lyftRide.user_id = current_user.id ##not sure how to capture this
    #   lyftRide.eta_seconds = params[:destination][:eta_seconds]
    #   # lyftRide.pickup_time = params[:pickup][:time]
    #   # lyftRide.ride_type = params[:ride_type]
    #   # lyftRide.primetime_percentage = params[:primetime_percentage]
    #
    #   lyftRide.save
    #
    # end
    #
    # if params['dropoff']
    #   lyftRide = Lyft_Metric.find_by ride_id: params['ride_id']
    #
    #   lyftRide.dropoff_time = params['dropoff']['time']
    #   #actualRideSeconds = ((lyftRide.dropoff_time.to_datetime - lyftRide.pickup_time.to_datetime) * 24 * 60 * 60).to_i
    #   #lyftRide.eta_dif_seconds = actualRideSeconds - lyftRide.eta_seconds
    #
    #   lyftRide.save
    #
    # end
    #
    # # The webhook doesn't require a response but let's make sure
    # # we don't send anything
    # render :nothing => true
   end


end
