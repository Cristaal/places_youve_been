require'rspec'
require'places_youve_been'

describe Places do
  before() do
    Places.clear()
  end

  describe "#locale" do
    it "lets you enter a place you've been" do
      test_place = Places.new("Canada")
      expect(test_place.locale()).to eq("Canada")
    end
  end

  describe ".all" do
    it "is empty at first" do
      expect(Places.all()).to eq([])
    end
  end

  describe "#save" do
    it "adds a place to the list of saved places" do
      test_place = Places.new("Nepal")
      test_place.save()
      expect(Places.all()).to eq([test_place])
    end
  end
end
