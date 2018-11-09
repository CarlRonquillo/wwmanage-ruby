class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def new
		
	end

	def show
		@project = Project.find(params[:id])
	end

	def create
		#render plain: params[:project].inspect
		@project = Project.new(project_params)

		@project.save
		redirect_to @project
	end

	private def project_params
		params.require(:project).permit(
			:ProjectName,
			:Description,
			:VisionObjective,
			:Country,
			:City,
			:ArrivalCity,
			:EstimatedCost,
			:RequestedProjectFunds,
			:IndividualCostPerDay,
			:Duration,
			:YouthTeamsAccepted,
			:ApprovalDate,
			:ExpirationDate,
			:CreatedDate,
			:ModifiedDate,
			:FKRegionID,
			:FKFieldID,
			:FKDistrictID,
			:FKSiteCoordinatorID
			)
	end
end
