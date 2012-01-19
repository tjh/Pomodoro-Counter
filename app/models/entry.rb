class Entry < ActiveRecord::Base
  before_validation :set_default_values

  belongs_to :user

  private

    def set_default_values
      self.length    ||= 25
      self.timestamp ||= Time.now
    end

end
