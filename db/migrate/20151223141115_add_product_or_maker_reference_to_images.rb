class AddProductOrMakerReferenceToImages < ActiveRecord::Migration
  def change
    add_reference :images, :product_or_maker, polymorphic: true, index: true
  end
end
