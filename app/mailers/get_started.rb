class GetStarted < ActionMailer::Base
  default from: "getstarted@esupplyportal.co.uk"

  def getstarted(enquiry)
  	@enquiry = enquiry
  	mail(to: "callumshorty@hotmail.com", subject: 'eSupplyPortal.co.uk Enquiry | READ IT')
  end
end
