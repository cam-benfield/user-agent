class ModernBrowsersController < ApplicationController

  
  
    def index
      @modernBrowsers = ModernBrowser.all
      @browser = Browser.new(request.env["HTTP_USER_AGENT"])  
    end
  
    def show
      @modernBrowser = ModernBrowser.find(params[:id])
      @browser = Browser.new(request.env["HTTP_USER_AGENT"])  
    end
  
    def new
      @modernBrowser = ModernBrowser.new
    end
  
    def edit
      @modernBrowser = ModernBrowser.find(params[:id])
    end
  
    def create
      @modernBrowser = ModernBrowser.new(modern_browser_params)
  
      if @modernBrowser.save
        redirect_to @modernBrowser
      else
        render 'new'
      end
    end
  
    def update
      @modernBrowser = ModernBrowser.find(params[:id])
  
      if @modernBrowser.update(modern_browser_params)
        redirect_to @modernBrowser
      else
        render 'edit'
      end
    end
  
    def destroy
      @modernBrowser = ModernBrowser.find(params[:id])
      @modernBrowser.destroy
  
      redirect_to modern_browsers_path
    end

    private
    def modern_browser_params
      params.require(:modern_browser).permit(:name, :company, :information)
    end
  end
  