class WelcomeController < ApplicationController
	def index
	end

	def check
	end


	def input
		@input = params[:input]
		@code = Code.find_by(params[code: :@input])
		@product= @code.product

		if Code.exists?(:code => @input)
			flash[:notice] = "Product is original."
			render :verified
		# redirect_to welcome_verified_path(@code)
		else
			redirect_to welcome_not_verified_path(@code)
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
