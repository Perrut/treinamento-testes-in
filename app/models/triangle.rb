class Triangle < ApplicationRecord
    validate :side_valid

    def perimeter
        sides * side
    end

    def sides
        3
    end

    def area
        (side ** 2 * Math.sqrt(3)) / 4
    end

    private

    def side_valid        
        errors.add(:side, "must be greather than 0") if side <= 0
        errors.add(:side, "must be less than or equal to 1000") if side > 1000
    end
end
