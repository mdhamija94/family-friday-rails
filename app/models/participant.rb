# == Schema Information
#
# Table name: participants
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Participant < ApplicationRecord
    validates :name, presence: true

    def self.group_generator
        participants = Participant.pluck(:name)

        participants.shuffle!

        return [participants] if participants.length == 5

        groups = Participant.group_builder

        groups.each do |group|
            group << participants.pop until group.size == 3 || participants.empty?
        end

        unless participants.empty?
            groups.each do |group|
                group << participants.pop until group.length == 4 || participants.empty?
            end
        end

        groups
    end

    def self.group_builder
        num_participants = Participant.count

        if num_participants % 4 == 0
            num_groups = num_participants / 4
        else
            num_groups = (num_participants / 4) + 1
        end

        Array.new(num_groups) { Array.new }
    end
end
