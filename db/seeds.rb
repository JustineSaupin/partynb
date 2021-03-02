# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "cleaning DB..."
Reservation.destroy_all
PartyPlace.destroy_all
User.destroy_all

puts "creating users..."
justine = User.new(name: 'Justine S', email: 'justines@mail.com', password: '1234556')
file = File.open(Rails.root.join('db/seeds/img_users/justine.jpg'))
justine.picture.attach(io: file, filename: 'justine.jpg', content_type: 'image/jpeg')
justine.save!

geoffrey = User.new(name: 'Geoffrey M', email: 'geoffreym@mail.com', password: '1234556')
file = File.open(Rails.root.join('db/seeds/img_users/geoffrey.jpg'))
geoffrey.picture.attach(io: file, filename: 'geoffrey.jpg', content_type: 'image/jpeg')
geoffrey.save!

allan = User.new(name: 'Allan B', email: 'allanb@mail.com', password: '1234556')
file = File.open(Rails.root.join('db/seeds/img_users/allan.jpg'))
allan.picture.attach(io: file, filename: 'allan.jpg', content_type: 'image/jpeg')
allan.save!

puts "creating pp..."
desert_point = PartyPlace.new(owner: justine, name: 'Desert Point', description: 'Un vrai dépaysement dans ce petit bout de désert aux portes de Nantes', address: 'Ile de la Chenaîe, St Julien de Concelles', price_per_day: 200)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/desert_point.jpg'))
desert_point.picture.attach(io: file, filename: 'desert_point.jpg', content_type: 'image/jpeg')
desert_point.save!

circus = PartyPlace.new(owner: justine, name: 'Circus Délire', description: 'Entrez sous le chapiteau et venez festoyer comme des gitans', address: 'Rue de la Fortunerie, 44119 Treillières', price_per_day: 130)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/circus.jpg'))
circus.picture.attach(io: file, filename: 'circus.jpg', content_type: 'image/jpeg')
circus.save!

piloti_house = PartyPlace.new(owner: justine, name: "Maison sur l'eau", description: "Venez faire la fête dans une villa unique, ambiance bateau pour cette demeure d'exception", address: 'Île de Mazerolles, 44240 Sucé-sur-Erdre', price_per_day: 280)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/piloti_house.jpg'))
piloti_house.picture.attach(io: file, filename: 'piloti_house.jpg', content_type: 'image/jpeg')
piloti_house.save!

tarzan_place = PartyPlace.new(owner: geoffrey, name: "Tarzan Place", description: "Soirée à thème? Venez jouer les Tarzans et Janes dans mes cabanes de fôret, ici calme et sérénité ou grosse party des bois c'est votre choix!", address: 'Réserve Naturelle du Lac de Grand-Lieu, La Chaussée, 44830 Bouaye', price_per_day: 120)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/tarzan_place.jpg'))
tarzan_place.picture.attach(io: file, filename: 'tarzan_place.jpg', content_type: 'image/jpeg')
tarzan_place.save!

le_mesnier = PartyPlace.new(owner: geoffrey, name: "Chateau Le Mesnier", description: "Là, tout n'est qu'ordre et beauté, Luxe, calme et volupté. A croire que Baudelaire connaissait ma maison!", address: 'La Noindrie, 44640 Rouans', price_per_day: 720)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/chateau_le_mesnier.jpg'))
le_mesnier.picture.attach(io: file, filename: 'chateau_le_mesnier.jpg', content_type: 'image/jpeg')
le_mesnier.save!

boodhun = PartyPlace.new(owner: geoffrey, name: "Domaine du Boodhun", description: "Mon domaine est mis à votre disposition pour mariage ou baptême seulement. Ce lieu d'exception vous ravira par sa grandeur, ses décorations classieuses et son environnement.", address: 'Allée du Cerny, 44850 Le Cellier', price_per_day: 420)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/boodhun.jpg'))
boodhun.picture.attach(io: file, filename: 'boodhun.jpg', content_type: 'image/jpeg')
boodhun.save!

toit_baulois = PartyPlace.new(owner: allan, name: "Le toit Baulois", description: "Un coucher de soleil sur l'océan, une douce brise de vent et un petit verre à la main. C'est le programme que je vous propose ici!", address: 'Avenue Pierre Percée, 44380 Pornichet', price_per_day: 220)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/toit_baulois.jpg'))
toit_baulois.picture.attach(io: file, filename: 'toit_baulois.jpg', content_type: 'image/jpeg')
toit_baulois.save!

grange = PartyPlace.new(owner: allan, name: "Ma grange", description: "Une ancienne grange rénovée, réhabilitée et aérée (covid-friendly), prête pour recevoir vos fêtes de famille, cousinades et autres festivités.", address: 'La Choltière, 44320 Frossay', price_per_day: 220)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/grange.jpg'))
grange.picture.attach(io: file, filename: 'grange.jpg', content_type: 'image/jpeg')
grange.save!

puts "creating resa..."
Reservation.create(party_place: tarzan_place, renter: justine, status: "validée", date_begin: "2021/06/03", date_end: "2021/06/04", total_price: 120)
Reservation.create(party_place: toit_baulois, renter: justine, status: "refusée", date_begin: "2021/08/10", date_end: "2021/08/13", total_price: 0)
Reservation.create(party_place: circus, renter: geoffrey, status: "en attente",  date_begin: "2021/05/13", date_end: "2021/05/14", total_price: 130)
Reservation.create(party_place: desert_point, renter: allan, status: "annulée", date_begin: "2021/04/03", date_end: "2021/04/05", total_price: 0)

puts "finished !!!"




