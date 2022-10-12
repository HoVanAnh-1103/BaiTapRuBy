require_relative 'Candidate.rb'
require_relative 'CandidateA.rb'
require_relative 'CandidateB.rb'
require_relative 'CandidateC.rb'

class CandidateManage
    @listCandidate = Array.new

    attr_accessor :listCandidate

    def initialize
        @listCandidate = Array.new
    end

    def addCandidate(item)
        @listCandidate << item
    end

    def printCandidate()
        for @item in @listCandidate
            if @item.is_a?(CandidateA)
                p @item.to_s
            end
        end

        for @item in @listCandidate
            if @item.is_a?(CandidateB)
                p @item.to_s
            end
        end

        for @item in @listCandidate
            if @item.is_a?(CandidateC)
                p @item.to_s
            end
        end
    end

    def check_DuplicateID(id)
        for @item in @listCandidate
            if @item.id.to_s == id 
                return true
            end
        end
        return false
    end

    def search_ID(id)
        for @item in @listCandidate
            if @item.id.to_s == id
                p @item.to_s
            end
        end
    end

end