require 'rails_helper'
RSpec.describe Home do
  it "should not save if user_name already exists" do
  	Home.create(
    user_name: "Jane",
    user_age: 26,
    pet_name:"Rabbi",
    pet_age: 2
   )
   user_name = Home.new(
    user_name: "Jane",
    user_age: 23,
    pet_name:"Rabbi1",
    pet_age: 3
   )
   expect(user_name).to be_invalid
  end

  it "should not save if pet_name already exists" do 
    Home.create(
    user_name: "Janna",
    user_age: 45,
    pet_name:"Chimu",
    pet_age: 3
   )
   user_name = Home.new(
    user_name: "Jordan",
    user_age: 27,
    pet_name:"Chimu",
    pet_age: 4
   )
   expect(user_name).to be_invalid
  end	



  it "should not save if user_name field is blank" do
   user_name = Home.new(user_name: '')
   expect(user_name).to be_invalid
  end

  it "should not save if pet_name field is blank" do
  	pet_name = Home.new(pet_name: '')
  	expect(pet_name).to be_invalid
  end

  it "should not save if user_age field is blank" do
  	user_age = Home.new(user_age: '')
  	expect(user_age).to be_invalid
 end
  it "should not save if pet_age field is blank" do
  	pet_age = Home.new(pet_age: '')
  	expect(pet_age).to be_invalid
  end

end
