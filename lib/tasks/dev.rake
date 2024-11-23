desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  Item.destroy_all

  items = ["ben", "jelani", "raghu"]

  items.each do |item|
    Item.create(name: item)
  end
end
