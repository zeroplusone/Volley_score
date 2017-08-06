class Match < ApplicationRecord
    belongs_to :hosting_team, class_name: 'Team', foreign_key:'hosting_team_id'
    belongs_to :guest_team, class_name: 'Team', foreign_key:'guest_team_id'
    belongs_to :court
    has_many :match_sets
end
