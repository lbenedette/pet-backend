class Person < ApplicationRecord
  has_many :animals

  def age
    ((Time.zone.now - birth_date.to_time) / 1.year.seconds).floor
  end
end
