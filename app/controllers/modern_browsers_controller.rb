class ModernBrowsersController < ApplicationController
    def index
      @modernBrowsers = ModernBrowser.all
    end
  
    def show
      @modernBrowser = ModernBrowser.find(params[:id])
    end
  
    def new
      @modernBrowser = ModernBrowser.new
    end
  
    def edit
      @modernBrowser = ModernBrowser.find(params[:id])
    end
  
    def create
      @modernBrowser = ModernBrowser.new(article_params)
  
      if @modernBrowser.save
        redirect_to @modernBrowser
      else
        render 'new'
      end
    end
  
    def update
      @modernBrowser = ModernBrowser.find(params[:id])
  
      if @modernBrowser.update(browser_params)
        redirect_to @modernBrowser
      else
        render 'edit'
      end
    end
  
    def destroy
      @modernBrowser = ModernBrowser.find(params[:id])
      @modernBrowser.destroy
  
      redirect_to browsers_path
    end

    private
    def browser_params
      params.require(:browser).permit(:name, :company, :information)
    end
  end
  