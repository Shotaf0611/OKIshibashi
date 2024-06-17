class SakesController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
        def index
            @sakes = Sake.all
        end
      
      def new
        @sake = Sake.new
      end
    
      def create
        @sake = Sake.new(sake_params)

        @sake.user_id = current_user.id

        if @sake.save!
            redirect_to action: 'index'
        else 
            redirect_to action: 'new'
        end
      end
      
      def show
        @sake = Sake.find(params[:id])
      end
      
      def edit
        @sake = Sake.find(params[:id])
      end
      
      def update
        sake = Sake.find(params[:id])
        if sake.update(sake_params)
          redirect_to :action => "show", :id => sake.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        sake = Sake.find(params[:id])
        sake.destroy
        redirect_to action: :index
      end

      def morning
        if params[:search] == nil
          @sakes= Sake.all
        elsif params[:search] == ''
          @sakes= Sake.all
        else
          #部分検索
          @sakes = Sake.where("area LIKE ? ",'%' + params[:search] + '%')
      end
    end

      def friend
        if params[:search] == nil
          @sakes= Sake.all
        elsif params[:search] == ''
          @sakes= Sake.all
        else
          #部分検索
          @sakes = Sake.where("area LIKE ? ",'%' + params[:search] + '%')
      end
    end

      def parte
        if params[:search] == nil
          @sakes= Sake.all
        elsif params[:search] == ''
          @sakes= Sake.all
        else
          #部分検索
          @sakes = Sake.where("area LIKE ? ",'%' + params[:search] + '%')
      end
    end

      private
      def sake_params
        params.require(:sake).permit(:shop_name, :area, :genre, :cost, :level, :ovarall, :time, :text, :image,:category)
      end
end
