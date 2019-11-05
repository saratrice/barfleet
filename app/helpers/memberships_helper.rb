module MembershipsHelper

  def division_pathname(division)
    division.path.map(&:name).join(" > ")
  end

end
