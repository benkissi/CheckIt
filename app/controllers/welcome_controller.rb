class WelcomeController < ApplicationController
	def index
	end

	def check
	end


	def input
		@input = params[:input]
		@code = Code.find_by(params[code: :@input])
		@product= @code.product

		respond to do |format|
		    if Code.exists?(:code => @input)
			format.html {render :verified}
			format.json {render :verified}
		# redirect_to welcome_verified_path(@code)
		    else
			format.html {redirect_to welcome_not_verified_path(@code)}
			format.json {render json: welcome_not_verified_path(@code)}
		    end
	    end
	end

	def verified
	end

	def not_verified
		@report=Report.new
		@pro=Product.all
	end

	def about
	end

end
