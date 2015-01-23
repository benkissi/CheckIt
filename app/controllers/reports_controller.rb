class ReportsController < ApplicationController
before_action :set_report, only: [:show, :edit, :update, :destroy]
before_action :authenticate_admin, except: [:create]	

	def new
		@report=Report.new
	end

	def create
		@report = Report.new(report_params)
		@report.product_id = params[:product_id]
		
		if @report.save
			flash[:notice] = "Report was successfully created."
			redirect_to welcome_check_path

		else
			render reports_create_path
		end
	end

	def show
	end

	def index
		@report=Report.all
	end

	def destroy
    @report.destroy
    respond_to do |format|
      format.html { redirect_to reports_url, notice: 'Report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

	private

	def set_report
		@report = Report.find(params[:id])
	end

	def report_params
		params.require(:report).permit(:pharmacy_name,:pharmacy_location,:pharmacy_landmark,:additional_info,:number,:email, :product_id)
	end

	
end
