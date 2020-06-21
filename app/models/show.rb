class Show < ActiveRecord::Base
    def self.highest_rating
    Shows.maximum("rating")
    end

    def self.most_popular_show
        Shows.where(rating: highest_rating).first
    end

    def self.lowest_rating
        Shows.minimum("rating")
    end

    def self.least_popular_show
        Shows.where(rating: lowest_rating).first
    end

    def self.ratings_sum
        Shows.sum("ratings")
    end

    def self.popular_shows
        Shows.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        Shows.order(:name)
    end

end

