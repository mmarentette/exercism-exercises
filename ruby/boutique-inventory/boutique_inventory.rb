class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def item_names
    items.map { |item| item[:name] }.sort
  end

  def cheap
    items.select { |item| item[:price] < 30 }
  end
  
  def out_of_stock
    items.select { |item| item[:quantity_by_size].empty? }
  end

  def stock_for_item(item_name)
    find_item(item_name)[:quantity_by_size]
  end

  def total_stock
    items.sum do |item|
      item[:quantity_by_size].values.sum
    end
  end

  private

  def find_item(item_name)
    item = items.find { |item| item[:name] == item_name }
  end
end