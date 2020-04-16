class NeedArea < ApplicationRecord
  has_and_belongs_to_many :need_categories
  has_many :needs, through: :need_categories
  has_many :initiatives, through: :needs


  def initiative_count
    initiatives.count
  end  
end
