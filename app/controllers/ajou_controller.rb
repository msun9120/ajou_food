class AjouController < ApplicationController
  def foodlist
    
    @ajoufood = Foodlist.all
    
    
    
  end
  def practice
    
  end
  
end
