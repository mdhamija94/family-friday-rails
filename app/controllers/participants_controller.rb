class ParticipantsController < ApplicationController

    def new
        render :new
    end

    def create
        names = participant_params[:name].split("\r\n")

        names.each { |name| Participant.create!(name: name) }

        redirect_to participants_url
    end

    def index
        @participants = Participant.all

        render :index
    end

    def generate_groups
        @groups = Participant.group_generator

        render :groups
    end

    private

    def participant_params
        params.require(:participant).permit(:name)
    end

end
