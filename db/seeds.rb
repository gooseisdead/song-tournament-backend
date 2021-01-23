# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

16.times do
    song = Song.create(
        title: Faker::Music::PearlJam.song,
        artist: Faker::Music::RockBand.name,
        album: Faker::TvShows::RickAndMorty.character,
        snippet: "https://miro.medium.com/max/1400/1*IDJ4x4E-bOypnEZdA5TGHQ.gif",
        artwork: "https://image.shutterstock.com/image-photo/black-vinyl-record-isolated-on-600w-121247890.jpg",
        round1winner: false,
        round2winner: false,
        round3winner: false,
        round4winner: false,
        round5winner: false

    )

    16.times do
        bracket = Bracket.create(
            name: Faker::DcComics.hero,
            category: Faker::Music.genre
        )

    16.times do
        songbracket = Songbracket.create(
            song: song,
            bracket: bracket
        )
            end
        end
    end

