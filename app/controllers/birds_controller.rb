class BirdsController < ApplicationController
    def index
        bird = Bird.all
        render json: bird
    end

    def show
        bird = Bird.find_by(id: params[:id])
        if bird
            render json: bird
        else 
            render json: { error: 'Bird not found' }, status: :not_found
        end
    end
end

