require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'


class ApartmentTest < Minitest::Test

  def setup
    @a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @jessie = Renter.new("Jessie")
  end

  def test_it_exists

    assert_instance_of Apartment, @a1
  end

  def test_it_has_a_number

    assert_equal "A1", @a1.number
  end

  def test_it_collects_rent

    assert_equal 1200, @a1.monthly_rent
  end

  def test_it_has_bathrooms

    assert_equal 1, @a1.bathrooms
  end

  def test_it_has_bedrooms

    assert_equal 1, @a1.bedrooms
  end

  def test_it_initialized_with_no_renter

    assert_equal nil, @a1.renter
  end

  def test_it_can_add_renter
    @a1.add_renter(@jessie)

    assert_equal @jessie, @a1.renter
  end
end
