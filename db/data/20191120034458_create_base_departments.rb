class CreateBaseDepartments < ActiveRecord::Migration[6.0]
  def up
    departments = [
      'Command',
      'Medical',
      'Engineering',
      'Security',
      'Recreation',
      'Party Marine',
      'Yo Service'
    ]

    departments.each do |department|
      Department.create(name: department)
    end
  end

  def down
    Department.destroy_all
  end
end
