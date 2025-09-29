class Movie < ApplicationRecord
    # validações
    validates :title, presence: true
    validates :rating, inclusion: { in: %w[G PG PG-13 R NC-17],
        message: "%{value} não é um rating válido" }
end
