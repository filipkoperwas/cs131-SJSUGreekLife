require 'test_helper'

class ClubTest < ActiveSupport::TestCase
    
    test "Should not save club without title" do
        club1 = Club.new
        assert_not club1.save, "Saved the club without a title"
        club2 = Club.new(layout: '1.5')
        assert_not club2.save, "Saved the club with a non integer layout"
        club3 = Club.new(name: "TestClub")
        assert_not club3.save, "Saved club without a layout"
    end
    
    test "Adding and Deleting Clubs" do
        assert_equal 0, Club.count, "There are not 0 clubs at start of test"
        club1 = Club.new(name: "Alpha Epsilon Pi", layout: '1')
        assert club1.save, "Did not save club1"
        club2 = Club.new(name: "Alpha Sigma Phi", layout: '1')
        assert club2.save, "Did not save club2"
        club3 = Club.new(name: "Alpha Tau Omega", layout: '1')
        assert club3.save, "Did not save club3"
        assert_equal 3, Club.count, "There are not 3 clubs in the database"
        assert Club.find_by_name("Alpha Sigma Phi").destroy, "Did not delete Alpha Sigma Phi from database"
        assert_equal 2, Club.count, "There are not 2 clubs in the database"
    end

    test "Adding descriptions and Pictures" do
        club = Club.new(name: "Alpha Epsilon Pi", layout: '1')
        assert club.save, "Could not save club while testing descriptions and Pictures"
        desc1 = Description.create(name: "greeting", content: "Hello, Welcome to our club page", club: Club.find_by_name("Alpha Epsilon Pi"))
        desc2 = Description.create(name: "mission_statement", content: "This is our mission statement", club: Club.find_by_name("Alpha Epsilon Pi"))
        desc3 = Description.create(name: "about_us", content: "Hello we are part of SJSU IFC Council", club: Club.find_by_name("Alpha Epsilon Pi"))
        assert_equal 3, Club.find_by_name("Alpha Epsilon Pi").descriptions.count, "Did not add exactly 3 descriptions"
        assert_includes Club.find_by_name("Alpha Epsilon Pi").descriptions, desc1, "Could not find correct description"
        assert_includes Club.find_by_name("Alpha Epsilon Pi").descriptions, desc2, "Could not find correct description"
        assert_includes Club.find_by_name("Alpha Epsilon Pi").descriptions, desc3, "Could not find correct description"
        pic1 = Picture.create(name: "logo", pic: "aepi_logo.png", club: Club.find_by_name("Alpha Epsilon Pi"))
        assert_includes Club.find_by_name("Alpha Epsilon Pi").pictures, pic1, "Could not find correct picture"
        assert_equal 1, Club.find_by_name("Alpha Epsilon Pi").pictures.count, "There is not only 1 picture"
    end

    test "Adding incomplete descriptions and pictures" do
        club = Club.new(name: "Alpha Epsilon Pi", layout: '1')
        assert club.save, "Could not save club while testing descriptions and Pictures"
        desc = Description.new( content: "Hello, Welcome to our club page", club: Club.find_by_name("Alpha Epsilon Pi"))
        assert_not desc.save, "It saved a description when it shouldn't have"
        pic1 = Picture.create(pic: "aepi_logo.png", club: Club.find_by_name("Alpha Epsilon Pi"))
        assert_not pic1.save, "It saved a pic when it shouldn't have"
        desc2 = Description.new(name: "1234", content: "Hello, Welcome to our club page", club: Club.find_by_name("Alpha Epsilon Pi"))
        assert_not desc2.save, "It saved a desc when it shouldn't have even though it was too short"
    end
end

