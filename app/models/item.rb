class Item < ActiveRecord::Base
  before_validation :make_tasty
  
  private
  
  def make_tasty
    self.description = self.description + " and it is tasty" if self.name.match(/sandwich/i)
  end
end
