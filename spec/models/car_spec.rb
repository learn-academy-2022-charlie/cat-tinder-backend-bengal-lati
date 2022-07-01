require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'validates for pressence' do
    it 'should validate name' do
      car = Car.create year:2007, enjoys:'A good waxing', image:'http://hotrod.com/car.jpg'
      expect(car.errors[:name]).to_not be_empty
    end
    it 'should validate year' do
      car = Car.create name:'Nissan Altima 2.5s', enjoys:'A good waxing', image:'http://hotrod.com/car.jpg'
      expect(car.errors[:year]).to_not be_empty
    end
    it 'should validate enjoys' do
      car = Car.create year:2017, name:'Nissan Altima 2.5s', image:'http://hotrod.com/car.jpg'
      expect(car.errors[:enjoys]).to_not be_empty
    end
    it 'should validate image' do
      car = Car.create year:2005, enjoys:'A good waxing', name: 'Harley Davidson 1200XL'
      expect(car.errors[:image]).to_not be_empty
    end
  end
  describe 'minimum length' do
    it 'name length greater than 1' do
      car = Car.create name:'M', year:2007, enjoys:'A good waxing', image:'http://hotrod.com/car.jpg'
      expect(car.errors[:name]).to_not be_empty
      # This test is created using failing parameters, the test passes because the errors array is NOT empty.
      p car.errors[:name]
    end
    it 'enjoys length greater than 10' do
      car = Car.create name:'Mitsubishi', year:2007, enjoys:'Nothing', image:'http://hotrod.com/car.jpg'
      expect(car.errors[:enjoys]).to_not be_empty
      # This test is created using failing parameters, the test passes because the errors array is NOT empty.
      p car.errors[:enjoys]
    end
  end
end
