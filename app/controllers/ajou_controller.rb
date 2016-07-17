class AjouController < ApplicationController
  def foodlist
    
    @ajoufood = Foodlist.all
    
    
    
  end
end
