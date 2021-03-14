require 'rails_helper'

describe MoviesController do

    describe "similar" do
        context "When specified movie has a director" do
           it "should find movies with the same director" do

           @movie_id = "9999"
           @movie = double('Alien', :director => 'Ridley Scott')

           expect(Movie).to receive(:find).with(@movie_id).and_return(@movie)
           expect(@movie).to receive(:same_directors)

           get :similar,  :id => @movie_id

           expect(response).to render_template(:similar)

            end

       end
       
       context "When specified movie has no director" do

           it "should redirect to the movies page" do

           @movie_id = "9999"
           @movie = double('pulp fiction').as_null_object
           expect(Movie).to receive(:find).with(@movie_id).and_return(@movie)
           get :similar, :id => @movie_id
           expect(response).to redirect_to(movies_path)

           end

       end
    end

end 

       
    