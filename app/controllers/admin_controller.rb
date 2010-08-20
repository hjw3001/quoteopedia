class AdminController < ApplicationController
  def index
    @count = Quotation.count

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quotations }
    end
  end

end
