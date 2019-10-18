require 'rails_helper'
describe "viewing the list of movies" do
  it "show the movies" do

    movie1 = Movie.create(title:"Iron-Man",rating: "PG-13",total_gross: 318412101.00,description: "tony Strak builds an armored suit to fight the throes of evil",released_on:"2008-05-02")

    movie2 = Movie.create(title:"Superman",rating: "PG",total_gross: 134218018.00,description: "clerk kant gross up to be the greatest super-hero",released_on:"1978-12-15")

    movie3 = Movie.create(title:"Spider-Man",rating: "PG-13",total_gross: 403706375.00,description: "Peter parker gets bitten by a genetically modified spider",released_on:"2002-05-03")
    visit 'http://example.com/movies'

    visit = "http://www.example.com/movies"
     expect(page).to have_text('3 movies')
     expect(page).to have_text('Iron-Man')
     expect(page).to have_text("rating :PG-13")
     expect(page).to have_text("total_gross :$318,412,101.00")
     expect(page).to have_text("released_on :2008-05-02")
     expect(page).to have_text('Strak builds an armored suit to fight the throes of evil')

  end
end
