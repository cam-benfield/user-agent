class VisitorsController < ApplicationController
    def index
        @browser = Browser.new(request.env["HTTP_USER_AGENT"])
        @visitor = Visitor.new
        end
      
        def show
          @browser = Browser.new(request.env["HTTP_USER_AGENT"])
          @visitor = Visitor.find(params[:id])
        end
      
        def new
          @browser = Browser.new(request.env["HTTP_USER_AGENT"])
          @visitor = Visitor.new
        end
      
        def create
          @visitor = Visitor.new(visitor_params)
      
          if @visitor.save
            redirect_to @visitor
          else
            render 'new'
          end
        end
      
        def update
          @visitor = Visitor.find(params[:id])
      
          if @visitor.update(visitor_params)
            redirect_to @visitor
          else
            render 'edit'
          end
        end
      
        def destroy
          @visitor = Visitor.find(params[:id])
          @visitor.destroy
      
          redirect_to visitors_path
        end
      
        private
          def visitor_params
            params.require(:visitor).permit(:name, :agent, :addons, :url)
          end
      end
