require 'test_helper'
require 'pry-rails'

class RestaurantTest < ActiveSupport::TestCase

  def setup
    Restaurant.create!([
      {name: "360 Restaurant", address: "301 Front St W, Toronto, ON, CANADA", phone: nil, picture: nil, description: "360 The Restaurant at the CN Tower, one of Toronto's finest, features unforgettable food combined with a magnificent revolving view of Toronto more than 351 metres (1,151 ft) below. 360 offers market-fresh cuisine, featuring regional ingredients to ensure an incomparable culinary experience.360 The Restaurant at the CN Tower, one of Toronto's finest, features unforgettable food combined with a magnificent revolving view of Toronto more than 351 metres (1,151 ft) below. 360 offers market-fresh cuisine, featuring regional ingredients to ensure an incomparable culinary experience.", category_id: nil, capacity: 100, opening_hour: 10, closing_hour: 23},
      {name: "Yuzu No Hana", address: "236 Adelaide Street West, Toronto, ON, Canada", phone: nil, picture: nil, description: "The experience is all about excellent food and drink, enjoyed in a relaxed and welcoming atmosphere.", category_id: nil, capacity: 100, opening_hour: 10, closing_hour: 23},
      {name: "Caribbean Taste", address: "224 Adelaide St W, Toronto, ON, Canada", phone: nil, picture: nil, description: "In the heart of the Financial and Entertainment District Caribbean Taste", category_id: nil, capacity: 100, opening_hour: 10, closing_hour: 23},
      {name: "Grace O'Malleys", address: "14 Duncan St, Toronto, ON, Canada", phone: nil, picture: nil, description: "At Grace O'Malley's the story of Grainne Ni Mhaille, or Granuaile (Anglicized as Grace O'Malley, Grany Malley), reads like the most brazen and unlikely sort of adventure fiction, but thereU+FFE2s history as well as myth in the legend of the Irish noblewoman who led a band of 200 sea-raiders from the coast of Galway in the sixteenth century.", category_id: nil, capacity: 100, opening_hour: 10, closing_hour: 23},
      {name: "Bellwoods Brewery", address: "124 Ossignton Ave, Toronto, ON, Canada", phone: nil, picture: nil, description: "Beer and food", category_id: nil, capacity: 100, opening_hour: 10, closing_hour: 23},
      {name: "Salt Wine bar", address: "225 Ossington Ave, Toronto, ON, Canada", phone: nil, picture: nil, description: "Located at the top of the Ossington strip, Salt wine bar offers a modern progressive approach to Iberian/Canadian tapas. Salt is a bustling, cozy, communal tapas bar with great energy. Our guests enjoy artisanal cheeses, Iberian charcuterie and an excellent variety of small plate dishes. Chef Dave Kemp is strongly committed to using seasonal and local products whenever possible. Our cellar contains an extensive list of Portuguese and Spanish wines which complement each and every dish.", category_id: nil, capacity: 100, opening_hour: 10, closing_hour: 23},
      {name: "Burrito Boyz", address: "218 Adelaide St W, Toronto, ON, Canada", phone: "", picture: nil, description: "Awesome burritos", category_id: nil, capacity: 100, opening_hour: 10, closing_hour: 23},
      {name: "El Caballito", address: "220 King St W, Toronto ON", phone: "123 456 7890", picture: nil, description: "Yummy tequila!", category_id: nil, capacity: 100, opening_hour: 10, closing_hour: 23}
    ])

    @r = Restaurant.find(1)

    @r.reservations.create!([
      {begin_time: Time.now,restaurant_id: 1,user_id: 1, people: 50},
      {begin_time: Time.now,restaurant_id: 1,user_id: 1, people: 50},
      {begin_time: Time.now,restaurant_id: 1,user_id: 1, people: 50}
      ])


  end

  def teardown
    Restaurant.delete_all
    travel_back
  end

  def test_restaurant_is_invalid_without_name
    @r.name = nil

    assert_equal(false, @r.save)
  end

  def test_restaurant_is_invalid_without_opening_hour
    @r.opening_hour = nil

    assert_equal(false, @r.save)
  end

  def test_restaurant_is_invalid_without_closing_hour
    @r.closing_hour = nil

    assert_equal(@r.save, false)
  end

  def test_restaurant_is_available_when_empty_during_opening_hours
    @r.opening_hour = 10
    @r.closing_hour = 20
    travel_to Time.zone.local(Time.now.year, Time.now.month, Time.now.day, 11 - (Time.now.utc_offset/3600), Time.now.min, Time.now.sec)
    @r.reservations.delete_all
    assert_equal(true, @r.available?)
  end

  def test_restaurant_is_available_when_under_capacity_during_opening_hours
    @r.opening_hour = 10
    @r.closing_hour = 20
    @r.capacity = 100
    @r.reservations.delete_all
    @r.reservations.create!([
      {begin_time: Time.now,restaurant_id: 1,user_id: 1, people: 50},
      {begin_time: Time.now,restaurant_id: 1,user_id: 1, people: 49},
      ])
    travel_to Time.zone.local(Time.now.year, Time.now.month, Time.now.day, 11 - (Time.now.utc_offset/3600), Time.now.min, Time.now.sec)
    assert_equal(true, @r.available?)
    travel_back
  end

  def test_restaurant_is_available_later_same_day
    travel_to Time.local(Time.now.year, Time.now.month, Time.now.day, 11)

    assert_equal(@r.available_at?(Time.now + 3.hour),true)
  end

  def test_restaurant_is_unavailable_in_the_past

    assert_equal(@r.available_for_booking_at?(1.hour.ago),false)
  end

  def test_restaurant_is_unavailable_when_full
    @r.reservations.delete_all
    @r.capacity = 50
    @r.reservations.create!([
      {begin_time: Time.now - 5.minute, user_id: 1, people: 50},
      ])
      assert_equal(false, @r.available?)
  end

  def test_restaurant_is_unavailable_before_opening
    @r.opening_hour = 10
    travel_to Time.local(Time.now.year, Time.now.month, Time.now.day, 9)

    assert_equal(false, @r.available?)
  end

  def test_restaurant_is_available_at_opening
    @r.opening_hour = 10
    travel_to Time.local(Time.now.year, Time.now.month, Time.now.day, 10)

    assert_equal(true, @r.available?)
  end

  def test_restaurant_is_unavailable_at_closing_time
    @r.closing_hour = 23
    travel_to Time.local(Time.now.year, Time.now.month, Time.now.day, 23)
    assert_equal(false, @r.available?)
  end

  def test_restaurant_is_unavailable_past_closing_time
    @r.opening_hour = 23
    travel_to Time.local(Time.now.year, Time.now.month, Time.now.day, 24)

    assert_equal(false, @r.available?)
  end

end
