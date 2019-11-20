module MembershipsHelper

  def division_pathname(division)
    return '' if division.blank?

    division.path.map(&:name).join(" > ")
  end

end
