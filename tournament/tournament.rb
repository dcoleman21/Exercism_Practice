=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end

# Input looks like CSV data
# Team listed first is the winning or lossing team
# if the team wins; +3

# Output:
# Ordered by points in descending order
# Teams ordered alphabetically by name if tie

class Tournament
  # create rows for the table
  class Row
    attr_accessor :wins,
                  :losses,
                  :draws
    def initialize
      @wins = 0
      @losses = 0
      @draws = 0
    end

    def points
      @wins * 3 + @draws
    end

    def matches_played
      @wins + @losses + @draws
    end
  end

  def self.tally(input)
    # parse input
    table = {}
    input.lines.each do |line|
    # => "Allegoric Alaskans;Blithering Badgers;loss"
      line.strip!
    # => remove \n characters
      next if line == ""
      team_1, team_2, outcome = line.split(';')
    # =>["Allegoric Alaskans", "Blithering Badgers", "win"]
      row_a = table[team_1] || Row.new
    # => <Tournament::Row:0x00007f862f20c260 @draws=0, @losses=0, @wins=0>
      row_b = table[team_2] || Row.new
    # => <Tournament::Row:0x00007f862e1f4b20 @draws=0, @losses=0, @wins=0>
      case outcome
      when "win"
        row_a.wins += 1
        row_b.losses += 1
      when "loss"
        row_a.losses += 1
        row_b.wins += 1
      when "draw"
        row_a.draws += 1
        row_b.draws += 1
      end

      table[team_1] = row_a
      table[team_2] = row_b
    end
    # create output (which is a string)
    output = ''
    # shovel header into output string
    output << 'Team                           | MP |  W |  D |  L |  P'
    # sort by name then by points
    sort_teams = table.sort_by{ |k, v| k }.sort_by { |k, v| -v.points }
    sort_teams.each do |team, row|
      output << "\n"
      output << "#{team.ljust(31, ' ')}"
      output << "|  #{row.matches_played} |  #{row.wins} |  #{row.draws} |  #{row.losses} |  #{row.points}"
    end
    # add line break at end
    output << "\n"
    output
  end
end
