class Show < ActiveRecord::Base
    def highest_rating
    # returns the highest value in the rating column
    # min and max AR methods
    Shows.maximum("rating")
    end

    def most_popular_show
        #returns the show with the highest rating
        #use min and max AR methods
        Shows.order(rating: :desc).limit(1)
    end

    def lowest_rating
        #returns the lowest value in the ratings column
        Shows.minimum("rating")
    end

    def least_popular_show
        #returns the show with the lowest ratings
        Shows.order(rating: :asc).limit(1)
    end

    def ratings_sum
        #returns the sum of all of the ratings
        Shows.sum("ratings")
    end

    def popular_shows
        #returns an array of all of the shows that have a rating greater than 5
        # use where AR method
        Shows.where("rating > 5")
    end

    def shows_by_alphabetical_order
        #returns an arrat of all of the shows sorted by alphabetical order by name.
        #order AR method
        Shows.all.order(name: :desc)
    end

end

