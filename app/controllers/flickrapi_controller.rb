class FlickrapiController < ApplicationController
  def index
    gon.api_key = ENV['FLICKR_API'];
    @keysearch = nil;
    @alltags = Keyword.pluck(:key);

  end

  def show
    gon.api_key = ENV['FLICKR_API'];
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
