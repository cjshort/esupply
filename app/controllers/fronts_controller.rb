class FrontsController < ApplicationController
  def index
  end

  def features
  end

  def getstarted
    @enquiry = Getstated.new
  end

  def getstartedcreate
    @enquiry = Getstated.create(contact_params)
    if @enquiry.save
     # GetStarted.getstarted(@enquiry).deliver
    else
      redirect_to :back, alert: "We had a problem sending your email, please contact us at sales@besleyandcopp.co.uk"
    end
  end

  def contact_params
    params.require(:getstated).permit(:fullname, :phonenumber, :emailaddress, :franchisename, :franchisewebsite)
  end

  def casestudyservicemaster
  end

  def casestudybosch
  end

  def casestudythebestof
  end
end
