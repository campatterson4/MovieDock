class MovieDock::CLI
    
    def call
        list_movies
        menu
        exit
    end
    def list_movies
        # here docs is DOC
        puts "What type of film do you feel like watching?"
        @movies = MovieDock::Movie.rotten
        puts <<-DOC.gsub /^\s*/,''       
        SciFi
        Action
        Drama
        DOC
    end

    def menu
        input = nil
        while input != "exit"
        puts "Type in your desired genre for a list of fantastic movies!"
        puts "Type list to view all genres again"
        puts "Type exit to finish."
        input = gets.strip
        case input
        when "list"
            list_movies
        when "exit"
            puts "Thanks for using Movie Dock! Come back soon for more movies!"
        else 
            puts "ERROR. Try one of the commands below."
        
end    
end
end

def exit
end
end