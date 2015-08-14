class FlickrapiController < ApplicationController
  def index
    gon.api_key = "d6184e5aa13323594b23114ae5093d07";
    # if params[:flickrapi]
    #   @keysearch = params[:flickrapi][:name];
    # end
    # if !Keyword.find_by_key(@keysearch)
    #   Keyword.create(:key => @keysearch);
    # end
    @alltags = Keyword.pluck(:key);

  end

  def show
    gon.api_key = "d6184e5aa13323594b23114ae5093d07";
    @keysearch = params[:flickrapi][:name];
    if !Keyword.find_by_key(@keysearch)
      Keyword.create(:key => @keysearch);
    end
    @alltags = Keyword.pluck(:key); 
  end

  def new
  end

  def edit
  end

  def delete
  end
end
