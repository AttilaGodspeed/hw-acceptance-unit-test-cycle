Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then /^the director of "(.*)" should be "(.*)"$/ do |title_value, director_value|
  movie = Movie.find_by_title(title_value)
  expect(movie.director).to eq director_value
end

#Then /I should see "(.*)" before "(.*)"/ do |movie_title1, movie_title2|
#  body = page.body
#  location_of_movie_title1_in_body = body.index(move_title1)
#  location_of_movie_title2_in_body = body.index(move_title2)
#  loc1 = location_of_movie_title1_in_body
#  loc2 = location_of_movie_title2_in_body
#  if loc1 == nil || loc2 == nil
#    fail "One or both search parameters not found!"
#  else
#    expect(loc1<loc2).to eq true
#  end
#end

#Given /the following movies exist:$/ do |movies_table|
#  movies_table.hashes.each do |hash| 
#    Movie.create!(title: hash['title'], rating: hash['rating'], release_date: hash['release_date'], director: hash['director']) 
#    end
#  end 
  
#Then /^the director of "(.*)" should be "([^"]*)"$/ do |movie_name, value| 
#  expect(page).to have_content(movie_name) 
#  expect(page.body).to match(/Director:\s#{value}/) 
#end