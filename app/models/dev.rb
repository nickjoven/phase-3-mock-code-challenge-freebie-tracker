class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def received_one?(item_name)
        puts "Does #{self.name} own #{item_name}..?"
        freebies.pluck(:item_name).include? item_name
    end

    def give_away(dev, freebie)
        if freebie.dev_id == self.id
            "#{self.name} gave #{dev.name} their #{freebie.item_name}."
            freebie.update!(dev_id: dev.id)
        else
            "#{self.name} can't give away someone else's #{freebie.item_name}!"
        end
    end

end
