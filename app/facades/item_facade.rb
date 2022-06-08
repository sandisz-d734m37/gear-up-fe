class ItemFacade
  class << self
    def find_item(user_id, item_id)
      data = ItemService.find_item(user_id, item_id)[:data]
      Item.new(data)
    end

    def items(user_id)
      json = ItemService.items(user_id)
      if json[:data]
        json[:data].map do |data|
          Item.new(data)
        end
      else
        Error.new(json[:errors])
      end
    end

    def create(parameters)
      json = ItemService.create(parameters)
      Item.new(json[:data])
    end

    def destroy(parameters)
      ItemService.destroy(parameters)
    end

    def update(parameters)
      json = ItemService.update(parameters)
      Item.new(json[:data])
    end
  end
end
