puts "Destroying previous seeds..."

Company.destroy_all
Dev.destroy_all
Freebie.destroy_all

puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************

Freebie.create(item_name: "Water Bottle", value: 10, dev_id: Dev.all.sample.id, company_id: Company.all.sample.id)
Freebie.create(item_name: "Hat", value: 12, dev_id: Dev.all.sample.id, company_id: Company.all.sample.id)
Freebie.create(item_name: "Lanyard", value: 3, dev_id: Dev.all.sample.id, company_id: Company.all.sample.id)
Freebie.create(item_name: "Sweater", value: 40, dev_id: Dev.all.sample.id, company_id: Company.all.sample.id)
Freebie.create(item_name: "Beanie", value: 8, dev_id: Dev.all.sample.id, company_id: Company.all.sample.id)
Freebie.create(item_name: "Mousepad", value: 9, dev_id: Dev.all.sample.id, company_id: Company.all.sample.id)

puts "Seeding done!"
