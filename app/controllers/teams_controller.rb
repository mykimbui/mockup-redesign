class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @navbardark = true

    @team = Team.find(params[:id])
    authorize @team

    total_score = 0
    @team.team_challenges.each do |team_challenge|
      if !team_challenge.answer.nil?
        if team_challenge.answer.status == Answer::COMPLETED
          total_score += team_challenge.challenge.score
        end
      end
    end
    @total_score = total_score

    # @users = @team.users
    @team_challenges = @team.team_challenges
    @team_answers = @team.answers
    @team_challenges.each do |team_challenge|
     @hash = Gmaps4rails.build_markers(team_challenge.challenge) do |challenge, marker|
      marker.lat challenge.latitude
      marker.lng challenge.longitude
      # marker.infowindow render_to_string(partial: "/challenges/question", locals: { challenge: challenge })
    end
  end

    #@user = current_user

    @challenges = Challenge.where.not(latitude: nil, longitude: nil)
    list_challenges = []
    @challenges.each do |list|
      list_challenges << [list.latitude, list.longitude, @team.id, list.id]
    end


    @coordinates_challenges = list_challenges

    #order all the selected challenge by answer.status
    @team_challenges_not_completed = @team_challenges.joins(:answer).where(answers: {status:'not_completed'})
    @team_challenges_pending = @team_challenges.joins(:answer).where(answers: {status:'pending'})
    @team_challenges_completed = @team_challenges.joins(:answer).where(answers: {status:'completed'})
    @team_challenges_not_answered = @team_challenges - (@team_challenges_not_completed + @team_challenges_pending + @team_challenges_completed)
  end

  def new
    @team = Team.new
    authorize @team
  end

  def create
    # raise
    # @city = City.find(params[:city_id])

    @team = Team.new(team_params)
    # @team.city = @city

    @team.save
    Rails.logger.info('save team')
    authorize @team
    Rails.logger.info('authorized team')

    # create memner from currentuser
    Member.create(user: current_user, team: @team)
    Rails.logger.info('created member')

    redirect_to team_path(@team)
  end

  def edit
    @team = Team.find(params[:id])
    authorize @team
  end

  def update
    @team = Team.find(params[:id])
    authorize @team
    @team.update(team_params)
    redirect_to team_path(@team)
  end

  def destroy
    @team = Team.find(params[:id])
    authorize @team
    @team.destroy
    redirect_to user_path(current_user)
  end

  def team_answers
    @team = Team.find(params[:team_id])
    @team_answers = @team.answers
    authorize @team
  end


  private

  def team_params
    params.require(:team).permit(:title, :team_picture, :start_date, :end_date, :city, :team_picture_cache, :id, :city_id )

  end
end
