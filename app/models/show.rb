class Show < ActiveRecord::Base
    def highest_rating
    # returns the highest value in the rating column
    # min and max AR methods
    end

    def most_popular_show
        #returns the show with the highest rating
        #use min and max AR methods
    end

    def lowest_rating
        #returns the lowest value in the ratings column
    end

    def least_popular_show
        #returns the show with the lowest ratings
    end

    def ratings_sum
        #returns the sum of all of the ratings
    end

    def popular_shows
        #returns an array of all of the shows that have a rating greater than 5
        # use where AR method
    end

    def shows_by_alphabetical_order
        #returns an arrat of all of the shows sorted by alphabetical order by name.
        #order AR method
    end
    
end

