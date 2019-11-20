class CreateBaseRanks < ActiveRecord::Migration[6.0]
  def up
    ranks = [
      ['Cadet', 'CDT', 1],
      ['Ensign', 'ENS', 2],
      ['Yo!Man/Yo!Woman', 'Yo!', 3],
      ['Lieutenant, Junior Grade', 'LTJG', 4],
      ['Lieutenant', 'LT', 5],
      ['Lieutenant Commander', 'LCDR', 6],
      ['Commander', 'CDR', 7],
      ['Captain', 'CAPT', 8],
      ['The Commodore', '', 9],
      ['Admiral', 'ADM', 10]
    ]

    ranks.each do |rank|
      Rank.create(name: rank[0], abbreviation: rank[1], sort_number: rank[2])
    end
  end

  def down
    Rank.destroy_all
  end
end
