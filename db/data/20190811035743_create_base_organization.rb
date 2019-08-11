class CreateBaseOrganization < ActiveRecord::Migration[5.2]
  def up
    barfleet = Division.create(name: 'Barfleet')

    command = Division.create(name: 'Command', location: 'Fairview Park, OH', parent: barfleet)

    ships = [
      ['U.B.S. Casual', 'Cleveland, OH'],
      ['U.B.B Columbus', 'Columbus, OH'],
      ['U.B.S. Indycent', 'Indianapolis, IN'],
      ['U.B.S. Shameless', 'Springfield, CT'],
      ['U.B.S. Abandon', 'Chicago, IL'],
      ['U.B.S. Delirium', 'Detroit, MI'],
    ]

    ships.each do |ship|
      Division.create(name: ship[0], location: ship[1], parent: barfleet)
    end
  end

  def down
    Division.destroy_all
  end
end




#  id          :bigint           not null, primary key
#  type        :string
#  name        :string
#  location    :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  ancestry    :string
