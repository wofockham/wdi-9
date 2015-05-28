User.destroy_all
Song.destroy_all
Album.destroy_all
Mixtape.destroy_all
Genre.destroy_all
Artist.destroy_all

g1 = Genre.create :name => 'Nautical Text Rock'
g2 = Genre.create :name => 'Nangy Vibes'
g3 = Genre.create :name => 'Glitch Hop'

s1 = Song.create :name => 'Water Through Electricity'
s2 = Song.create :name => 'Have A Safe Trip, Dear'
s3 = Song.create :name => 'Black Sea'

a1 = Album.create :name => 'Systems/Layers'
a2 = Album.create :name => 'Black Sea'
a3 = Album.create :name => 'Engine Takes To The Water'

r1 = Artist.create :name => 'Rachels'
r2 = Artist.create :name => 'Fennesz'
r3 = Artist.create :name => 'June of 44'

u1 = User.create :name => 'Craigsy'
u2 = User.create :name => 'Jonesy'
u3 = User.create :name => 'Linda'

m1 = Mixtape.create :name => 'Code Jams'
m2 = Mixtape.create :name => 'Driving'
m3 = Mixtape.create :name => 'Seduction'

r1.songs << s1
r2.songs << s2
r3.songs << s3

a1.songs << s1
a2.songs << s3
a3.songs << s2

g1.songs << s2
g2.songs << s1
g3.songs << s3

m1.songs << s1 << s2 << s3
m2.songs << s2 << s3
m3.songs << s1 << s3

u1.mixtapes << m1
u2.mixtapes << m2
u3.mixtapes << m3







