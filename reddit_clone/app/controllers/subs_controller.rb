class SubsController < ApplicationController
    def edit
        @sub = Sub.find(params[:id])
        render :edit 
    end

    def index 
        @subs = Sub.all 
        render :index 
    end 

    def update
        @sub = Sub.find(params[:id])

        if @sub.update(sub_params)
            redirect_to sub_url(@sub)
        else
            render :edit
        end
    end

    def new 
        @sub = Sub.new
        render :new 
    end

    def create 
        @sub = Sub.new(sub_params)

        if @sub.save
            redirect_to subs_url
        else
            render :new 
        end
    end

    private 

    def sub_params
        params.require(:sub).permit(:title, :description)
    end
end
