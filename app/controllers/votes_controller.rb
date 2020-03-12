class VotesController < ApplicationController

 http_basic_authenticate_with name:"admin", password: "secret", only: [:index]

 def new
 end

 def index
  @votes = Vote.all
 end

 def show
   @vote = Vote.find(params[:id])
 end

 def create
   @vote = Vote.new(vote_params)
   @vote.save
   redirect_to @vote
 end

 private
  def vote_params
    params.require(:vote).permit(:Full_name,:Ruby_African_Network,:African_Ruby_Community,
                                 :Ruby_African_Community,:African_Ruby_Association,
                                 :Nairuby,:Suggestion)

  end

end
