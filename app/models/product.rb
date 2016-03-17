class Product < ActiveRecord::Base

  searchable do
     integer :id 
     string :name 
     text :description 
     integer :per_day_rent 
     string :category 
     string :location 
  end
end
=begin

=end
