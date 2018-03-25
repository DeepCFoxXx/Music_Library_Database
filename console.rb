require_relative( './models/album' )
require_relative( './models/artist' )
require( 'pry-byebug' )


artist1 = Artist.new( { 'name' => 'Queens Of The Stone Age' } )
artist1.save();

album1 = Album.new( { 'name' => 'Songs For The Deaf', 'artist_id' => artist1.id } )
album1.save()

album2 = Album.new( { 'name' => 'Rated R', 'artist_id' => artist1.id } )
album2.save()

binding.pry
nil
