require 'rails_helper'


describe "showing the Movie" do
  it "show the movie's details" do
   visit = "http://www.example.com/movies/1"
     expect(page).to have_text('Iron-Man')
     expect(page).to have_text("rating :PG-13")
     expect(page).to have_text("total_gross :$318,412,101.00")
     expect(page).to have_text("released_on :2008-05-02")
     expect(page).to have_text('Strak builds an armored suit to fight the throes of evil')
  end
end
