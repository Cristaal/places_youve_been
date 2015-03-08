class Places
  @@all_places = []

  def initialize(locale)
    @locale = locale
  end

  def locale
    @locale
  end

  def self.all
    @@all_places
  end

  def save
    @@all_places.push(self)
  end

  def self.clear
   @@all_places = []
  end
end
