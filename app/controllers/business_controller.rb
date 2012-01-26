class BusinessController < ApplicationController
  def index
  	@business = Business.find(:all)
      respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @business.to_xml }
		end	
  end

  def create
  end

  def read
		#@business = Business.near([37.4848, 126.895], params[:dist])
		#Example: http://api.bridginggood.com/business/read.xml?lat=37.4848&lng=126.895&dist=0.1
		#NOTE: dist must be in miles
		@business = Business.near([params[:lat], params[:lng]], params[:dist])
			respond_to do |format|
			format.html
			format.xml { render :xml => @business.to_xml }		
		end
  end

  def update
  end

  def delete
  end

end
