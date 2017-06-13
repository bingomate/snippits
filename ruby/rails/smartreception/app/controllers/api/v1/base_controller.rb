module Api

  module V1

    class BaseController < ApplicationController

      # Remove check of the CSRF token that is embedded in forms.  The
      # API has no forms, and therefore no token.
      skip_before_action :verify_authenticity_token

      rescue_from ActiveRecord::RecordNotFound do |exception|
        render json: {'error' => 'Requested object not found.'},
               status: 401
      end

    end

  end

end
