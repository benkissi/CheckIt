class GeneratorController < ApplicationController
	def gen
		@code=SecureRandom.hex(3)
	end
	
end
