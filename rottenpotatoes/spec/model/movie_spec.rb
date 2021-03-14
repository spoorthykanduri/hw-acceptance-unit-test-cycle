require 'rails_helper'

describe Movie do

    describe ".same_directors" do

       it "should find movies by the same director" do
           movie1 = Movie.create! :director => "Chris Nolan"
           movie2 = Movie.create! :director => "Chris Nolan"
           expect(movie1.same_directors).to include(movie2)
       end

        it "should find not movies by different director" do
           movie1 = Movie.create! :director => "Chris Nolan"
           movie2 = Movie.create! :director => "Tarantino"
           expect(movie1.same_directors).not_to include(movie2)
       end

    end
end 