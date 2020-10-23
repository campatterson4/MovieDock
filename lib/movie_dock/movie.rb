class MovieDock::Movie 
    attr_accessor :name, :about


def self.always

self.scrape_movies
end

def self.scrape_movies
    movies = []

movies << self.scrape_rottentomatoesinterstellar
movies << self.scrape_rottentomatoeslegend
movies << self.scrape_rottentomatoesremember
movies << self.scrape_rottentomatoesportrait


movies 
end


def self.scrape_rottentomatoesinterstellar
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/interstellar_2014"))
    movie = self.new
    movie.name = doc.search("h1[class='mop-ratings-wrap__title mop-ratings-wrap__title--top']").text()
    movie.about = doc.search('.mop-ratings-wrap__text').text()
movie
end

def self.scrape_rottentomatoeslegend
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/i_am_legend"))
    movie = self.new
    movie.name = doc.search("h1[class='mop-ratings-wrap__title mop-ratings-wrap__title--top']").text()
    movie.about = doc.search('.mop-ratings-wrap__text').text()
movie
end

def self.scrape_rottentomatoesremember
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/1211619-remember_me"))
    movie = self.new
    movie.name = doc.search("h1[class='mop-ratings-wrap__title mop-ratings-wrap__title--top']").text()
    movie.about = doc.search('.mop-ratings-wrap__text').text()
movie
end

def self.scrape_rottentomatoesportrait
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/portrait_of_a_lady_on_fire"))
    movie = self.new
    movie.name = doc.search("h1[class='mop-ratings-wrap__title mop-ratings-wrap__title--top']").text()
    movie.about = doc.search('.mop-ratings-wrap__text').text()
movie
end
end





