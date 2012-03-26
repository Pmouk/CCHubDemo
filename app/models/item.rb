class Item < ActiveRecord::Base

  def valid?
    make_tasty
    super
  end

  private
  
  def make_tasty
    self.description = self.description + " and it is tasty" if self.name.match(/sandwich/i)
  end
end
