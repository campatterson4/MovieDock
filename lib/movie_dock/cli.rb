class MovieDock::CLI
    
    def call
        list_movies
        menu
        exit
    end
    
    def list_movies
        puts "Which film are you feeling?"
    
        @movies = MovieDock::Movie.always
        @movies.each.with_index(1) do |movie, i|
            puts "#{i}. #{movie.name}"
    end
end


    def menu
        input = nil
        while input != "exit"
        puts "Type in your desired movie for info about it!"
        puts "Type list to view all movies again"
        puts "Type exit to finish."
        input = gets.strip
      
        if input.to_i > 0
            the_movie = @movies[input.to_i-1]
            puts "#{the_movie.about}"   
        elsif input == "list"
            list_movies
        elsif input == "exit"
            puts "Thank you for using MovieDock. Come back soon for more fantastic movies!"
        else
            puts "ERROR. Try typing list or exit."
end    
end
end

def exit  
end
end