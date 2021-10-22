class UsersController < ApplicationController
    # include SongPickerService
    def index
        @songs = Song.all
        # @your_songs = SongPickerService.new(@songs).call
        @your_songs = random_limited_results(10, @songs) #adjust first param to limit results
    end

    private
        def random_limited_results(limiter, input)
            input.sample(limiter, random: Random.new(srand()))
        end
end

# example of a service

# class SongPickerService
#     def initialize(songs)
#         @songs = songs
#     end

#     def call
#         @songs.sample(10, random: Random.new(srand()))
#     end
# end
