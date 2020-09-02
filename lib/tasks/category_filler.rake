namespace :category_filler do
  desc "TODO"
  task create_categories: :environment do
    10.times do 
      category_name = Faker::Name.name
      c1 = Category.create(name: category_name)
      10.times do 
        p1 = c1.products.create(name: Faker::Company.bs, price: 34.2, description: Faker::Quote.famous_last_words)
        p1.save
      end  
    end
  end

end
