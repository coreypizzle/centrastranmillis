class ApplicationsController < ApplicationController
  def new
    @application = Application.new
  end

  def create
    @application = Application.new(params[:application])
    respond_to do |format|
      if @application.save
        ApplicationMailer.application_email(@application).deliver
      else

      end
  #  @application.request = request
   # if @application.deliver
   #   flash.now[:error] = nil
    #  flash.now[:notice] = 'Thank you for your message!'
    #else
   #   flash.now[:error] = 'Cannot send message.'
    #  render :new
   # end
  end
end
