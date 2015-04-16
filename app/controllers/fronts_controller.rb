class FrontsController < ApplicationController
  def index
     set_meta_tags :site => 'eSupply Portal', :title => 'Home', :reverse => true
  end

  def features
    set_meta_tags :site => 'eSupply Portal', :title => 'Features', :reverse => true
  end

  def getstarted
    set_meta_tags :site => 'eSupply Portal', :title => 'Get Started', :reverse => true
    @enquiry = Getstated.new
  end

  def getstartedcreate
    @enquiry = Getstated.create(contact_params)
    if @enquiry.save
      GetStarted.getstarted(@enquiry).deliver
      redirect_to :back, alert: "Your enquiry has been delivered, a member of our team will be in touch shortly."
    else
      redirect_to :back, alert: "We had a problem sending your email, please contact us at sales@besleyandcopp.co.uk"
    end
  end

  def contact_params
    params.require(:getstated).permit(:fullname, :phonenumber, :emailaddress, :franchisename, :franchisewebsite)
  end

  def casestudyservicemaster
    set_meta_tags :site => 'eSupply Portal', :title => 'ServiceMaster', :reverse => true
  end

  def casestudybosch
    set_meta_tags :site => 'eSupply Portal', :title => 'BOSCH', :reverse => true
  end

  def casestudythebestof
    set_meta_tags :site => 'eSupply Portal', :title => 'thebestof', :reverse => true
  end
end
