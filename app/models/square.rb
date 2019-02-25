class Square < ApplicationRecord
    validate :side_valid

    def perimeter
        sides * side
    end

    def sides
        4
    end

    def area
        side ** 2
    end

    private

    def side_valid
        if side
            errors.add(:side, "must be greather than 0") if side <= 0
            errors.add(:side, "must be less than or equal to 1000") if side > 1000
        else
            errors.add(:side, "must be present")
        end
    end
end
