class ImageelementsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        imageelements = Imageelement.all
        render json:  imageelements
    end

    def show
        imageelement = Imageelement.find_by(id: params[:id])
         render json:imageelement
     
     end

    def create
        imageelement = Imageelement.create!(imageelement_params)
        render json: imageelement, status: :created
      end

    def update
        imageelement = Imageelement.find_by(id: params[:id])
        imageelement.img_src.attach(imageelement_params[:img_src])
        imageelement.update(imageelement_params)
        render json: imageelement
      end

    def destroy
    imageelement = Imageelement.find_by(id: params[:id])
    imageelement.destroy
    head :no_content
    end

    private

        def render_not_found_response
            render json: { error: "Art piece not found" }, status: :not_found
        end
    
        def render_unprocessable_entity_response(invalid)
            render json: { errors: invalid.record.errors }, status: :unprocessable_entity
        end

        def imageelement_params
            params.permit(:img_src :artpiece, :brandofwine)
        end
end
