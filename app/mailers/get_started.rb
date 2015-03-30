class GetStarted < ActionMailer::Base
  default from: "getstarted@esupplyportal.co.uk"

  def getstarted(enquiry)
  	@enquiry = enquiry
  	mail(to: "enquiries@besleyandcopp.co.uk", subject: 'eSupplyPortal.co.uk Enquiry | READ IT')
  end
end
