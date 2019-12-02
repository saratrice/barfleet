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

  def division_admin_tree(divisions)
    s = content_tag(:ul) do
      divisions.map do |division, subdivisions|
        content_tag(:li, (link_to(division.name, [:admin, division]) +  division_admin_tree(subdivisions)).html_safe)
      end.join.html_safe
    end
  end
end
