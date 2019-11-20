module AncestryHelper
  def ancestry_options(items, &block)
    unless block_given?
      return ancestry_options(items) { |i| "#{'-' * i.depth} #{i.name}" }
    end

    result = []
    items.map do |item, sub_items|
      result << [yield(item), item.id]
      # this is a recursive call:
      result += ancestry_options(sub_items, &block)
    end
    result
  end
end
