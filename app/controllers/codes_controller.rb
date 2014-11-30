class CodesController < ApplicationController
	def index
	  	@codes = Code.all
	end

	def show

	end

	def new
	    # @admin_current = current_admin.codes.build(code_params)
	    
	end

	# def generate
	  	
	# end

	def generate
		@product = Product.find(params[:id])
		#@code = @product.codes.build(params[:code])
		#@code.code = SecureRandom.hex(6)
		
		if @code = @product.codes.create!(:code => SecureRandom.hex(6))
		flash[:notice] = "Code was successfully created."
		redirect_to product_url(@product)
            
        else
        flash[:notice] = "Code could not be created."
        redirect_to product_url(@product)
        end
    
		# render plain: @code.code
		# redirect_to product_url(@code.product)
		# @code = Code.new(code_params)
		# @code.product_id = Product.find(params[:product_id])
		

		
		
        # @code = @product.codes.create(code_params)
        # render plain: @code
	    # redirect_to product_codes_path(params[:product_id => @code.product_id, :code => @code.code)
	   
    end 
    

end   
