# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


justine = User.new(name: 'Justine S', email: 'justines@mail.com', password: '1234556')
file = File.open(Rails.root.join('db/seeds/img_users/justine.jpg'))
justine.picture.attach(io: file, filename: 'justine.jpg', content_type: 'image/jpeg')
justine.save!

geoffrey = User.new(name: 'Geoffrey M', email: 'geoffreym@mail.com', password: '1234556')
geoffrey.save!

allan = User.new(name: 'Allan B', email: 'allanb@mail.com', password: '1234556')
allan.save!


desert_point = PartyPlace.new(owner: justine, name: 'Desert Point', description: 'Un vrai dépaysement dans ce petit bout de désert aux portes de Nantes', address: 'Ile de la Chenaîe, St Julien de Concelles', price_per_day: 200)
desert_point.save!

circus = PartyPlace.new(owner: justine, name: 'Circus Délire', description: 'Entrez sous le chapiteau et venez festoyez comme des gitans', address: 'Rue de la Fortunerie, 44119 Treillières', price_per_day: 130)
circus.save!

piloti_house = PartyPlace.new(owner: justine, name: "Maison sur l'eau", description: "Venez faire la fête dans une villa unique, ambiance bateau pour cette demeure d'exception", address: 'Île de Mazerolles, 44240 Sucé-sur-Erdre', price_per_day: 280)
piloti_house.save!

tarzan_place = PartyPlace.new(owner: geoffrey, name: "Tarzan Place", description: "Soirée à thème? Venez jouez les Tarzans et Janes dans mes cabanes de fôret, ici calme et sérénité ou grosse party des bois c'est votre choix!", address: 'Réserve Naturelle du Lac de Grand-Lieu, La Chaussée, 44830 Bouaye', price_per_day: 120)
tarzan_place.save!

le_mesnier = PartyPlace.new(owner: geoffrey, name: "Chateau Le Mesnier", description: "Là, tout n'est qu'ordre et beauté, Luxe, calme et volupté. A croire que Baudelaire connaissait ma maison!", address: 'La Noindrie, 44640 Rouans', price_per_day: 720)
le_mesnier.save!

boodhun = PartyPlace.new(owner: geoffrey, name: "Domaine du Boodhun", description: "Mon domaine est mis à votre disposition pour mariage ou baptême seulement, ce lieu d'exception vous ravira par sa grandeur, ses décorations classieuses et son environnement.", address: 'Allée du Cerny, 44850 Le Cellier', price_per_day: 420)
boodhun.save!

toit_baulois = PartyPlace.new(owner: allan, name: "Le toit Baulois", description: "Un coucher de soleil sur l'océan, une douce brise de vent et un petit verre à la main. C'est le programme que je vous propose ici!", address: 'Avenue Pierre Percée, 44380 Pornichet', price_per_day: 220)
toit_baulois.save!

grange = PartyPlace.new(owner: allan, name: "Ma grange", description: "Une ancienne grange rénovée, réhabilitée et aérée (covid-friendly), prête pour recevoir vos fêtes de famille, cousinades et autres festivités.", address: 'La Choltière, 44320 Frossay', price_per_day: 220)
grange.save!

Reservation.create
