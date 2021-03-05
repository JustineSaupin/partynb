# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "cleaning DB..."
Reservation.destroy_all
PartyPlace.destroy_all
User.destroy_all

puts "creating users..."
justine = User.new(name: 'Justine S', email: 'justines@mail.com', password: '123456')
file = File.open(Rails.root.join('db/seeds/img_users/justine.jpg'))
justine.picture.attach(io: file, filename: 'justine.jpg', content_type: 'image/jpeg')
justine.save!

geoffrey = User.new(name: 'Geoffrey M', email: 'geoffreym@mail.com', password: '123456')
file = File.open(Rails.root.join('db/seeds/img_users/geoffrey.jpg'))
geoffrey.picture.attach(io: file, filename: 'geoffrey.jpg', content_type: 'image/jpeg')
geoffrey.save!

allan = User.new(name: 'Allan B', email: 'allanb@mail.com', password: '123456')
file = File.open(Rails.root.join('db/seeds/img_users/allan.jpg'))
allan.picture.attach(io: file, filename: 'allan.jpg', content_type: 'image/jpeg')
allan.save!

pierre = User.new(name: 'Pierre N', email: 'pierren@mail.com', password: '123456')
file = File.open(Rails.root.join('db/seeds/img_users/pierren.jpg'))
pierre.picture.attach(io: file, filename: 'pierren.jpg', content_type: 'image/jpeg')
pierre.save!


puts "creating pp..."
desert_point = PartyPlace.new(owner: pierre, name: 'Desert Point', description: 'Un vrai dépaysement dans ce petit bout de désert aux portes de Nantes', address: 'Ile de la Chenaîe, St Julien de Concelles', price_per_day: 200)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/desert_point.jpg'))
desert_point.picture.attach(io: file, filename: 'desert_point.jpg', content_type: 'image/jpeg')
desert_point.save!

circus = PartyPlace.new(owner: allan, name: 'Circus Délire', description: 'Entrez sous le chapiteau et venez festoyer comme des gitans tout près de Nantes', address: 'Rue de la Fortunerie, 44119 Treillières', price_per_day: 130)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/circus.jpg'))
circus.picture.attach(io: file, filename: 'circus.jpg', content_type: 'image/jpeg')
circus.save!

piloti_house = PartyPlace.new(owner: pierre, name: "Maison sur l'eau", description: "Venez faire la fête dans une villa unique, ambiance bateau pour cette demeure d'exception", address: 'Île de Mazerolles, 44240 Sucé-sur-Erdre', price_per_day: 280)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/piloti_house.jpg'))
piloti_house.picture.attach(io: file, filename: 'piloti_house.jpg', content_type: 'image/jpeg')
piloti_house.save!

tarzan_place = PartyPlace.new(owner: geoffrey, name: "Tarzan Place", description: "Soirée à thème? Venez jouer les Tarzans et Janes dans mes cabanes de fôret, ici calme et sérénité ou grosse party des bois c'est votre choix!", address: 'Réserve Naturelle du Lac de Grand-Lieu, La Chaussée, 44830 Bouaye', price_per_day: 120)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/tarzan_place.jpg'))
tarzan_place.picture.attach(io: file, filename: 'tarzan_place.jpg', content_type: 'image/jpeg')
tarzan_place.save!

le_mesnier = PartyPlace.new(owner: geoffrey, name: "Chateau Le Mesnier", description: "Là, tout n'est qu'ordre et beauté, Luxe, calme et volupté. A croire que Baudelaire connaissait ma maison! Aux portes de Nantes, ce chateau possède sa forêt privée.", address: 'La Noindrie, 44640 Rouans', price_per_day: 720)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/chateau_le_mesnier.jpg'))
le_mesnier.picture.attach(io: file, filename: 'chateau_le_mesnier.jpg', content_type: 'image/jpeg')
le_mesnier.save!

boodhun = PartyPlace.new(owner: allan, name: "Domaine du Boodhun", description: "Mon chateau est mis à votre disposition pour mariage ou baptême seulement. Ce lieu d'exception vous ravira par sa grandeur, ses décorations classieuses et son environnement au bord d'une forêt.", address: 'Allée du Cerny, 44850 Le Cellier', price_per_day: 420)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/boodhun.jpg'))
boodhun.picture.attach(io: file, filename: 'boodhun.jpg', content_type: 'image/jpeg')
boodhun.save!

toit_baulois = PartyPlace.new(owner: geoffrey, name: "Le toit Baulois", description: "Un coucher de soleil sur la mer, une douce brise de vent et un petit verre à la main. C'est le programme que je vous propose ici!", address: 'Avenue Pierre Percée, 44380 Pornichet', price_per_day: 220)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/toit_baulois.jpg'))
toit_baulois.picture.attach(io: file, filename: 'toit_baulois.jpg', content_type: 'image/jpeg')
toit_baulois.save!

grange = PartyPlace.new(owner: allan, name: "Ma grange", description: "Une ancienne grange rénovée près d'une petite fôret, réhabilitée et aérée (covid-friendly), prête pour recevoir vos fêtes de famille, cousinades et autres festivités.", address: 'La Choltière, 44320 Frossay', price_per_day: 220)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/grange.jpg'))
grange.picture.attach(io: file, filename: 'grange.jpg', content_type: 'image/jpeg')
grange.save!

villa_loire = PartyPlace.new(owner: pierre, name: "Villa vue Loire", description: "Cette villa moderne vous surprendra, ici on a la vue Loire la plus prisée de l'ouest! Situé entre la mer et la ville de Nantes, nombreuses activitées sont possibles !", address: 'Quai Eole, 44560 Paimbœuf', price_per_day: 430)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/villa_loire.jpg'))
villa_loire.picture.attach(io: file, filename: 'villa_loire.jepg', content_type: 'image/jpeg')
villa_loire.save!

foret = PartyPlace.new(owner: geoffrey, name:  "Forêt Fiesta", description: "Cette cabane rénovée, perdue dans la forêt de la Brière, vous accueille pour vos soirées paisibles et calmes. Ici les animaux ne sont pas acpptés, il y en a déjà assez dans la forêt! Situé entre la mer et la ville de Nantes, tout un programme s'offre à vous !", address: '44550 Saint-Malo-de-Guersac', price_per_day: 130)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/foret.jpg'))
foret.picture.attach(io: file, filename: 'foret.jpg', content_type: 'image/jpeg')
foret.save!

lac = PartyPlace.new(owner: allan, name:  "Le ponton du Lac", description: "Ce ponton sur le Lac de St Viaud est un lieu unique pour vous échapper le temps d'une soirée! La mer et la forêt à quelques kilometres pour profiter du lendemain de soirée. Vous pourrez même vous faire un remake de Dawson's Creek!", address: '44320 Saint-Viaud', price_per_day: 90)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/lac.jpg'))
lac.picture.attach(io: file, filename: 'lac.jpg', content_type: 'image/jpeg')
lac.save!

plage = PartyPlace.new(owner: pierre, name:  "Ma plage privée", description: "Je possède ma plage privée (oui je suis acteur tout ça tout ça, donc voilà...), et je vous propose d'en profiter! Ma villa n'est pas loin et je peux aussi vous la louer. N'hésitez plus venez profiter de la mer, des coquillages et du luxe!", address: '86 Avenue de Bonne Source, 44380 Pornichet', price_per_day: 730)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/plage.jpg'))
plage.picture.attach(io: file, filename: 'plage.jpg', content_type: 'image/jpeg')
plage.save!

poker = PartyPlace.new(owner: geoffrey, name:  "Chez le G", description: "Plein centre de Nantes, une grosse coloc' bien cool, un frigo toujours plein de bières et une malette de poker à dispo! Alors soirée?", address: '37 rue Chautabriand, 44000 Nantes', price_per_day: 30)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/poker.jpg'))
poker.picture.attach(io: file, filename: 'poker.jpg', content_type: 'image/jpeg')
poker.save!

pornichet = PartyPlace.new(owner: allan, name:  "Villa Pornich'", description: "Face à la mer, cette magnifique villa acceuillera vos soirées blanches, champagne shower evening, et autres allégresses! Ambiance luxe assurée, faites le tri dans vos amis et lancez votre soirée huppée!", address: '6 Boulevard René Dubois, 44500 La Baule-Escoublac', price_per_day: 30)
file = File.open(Rails.root.join('db/seeds/img_partyplaces/pornichet.jpg'))
pornichet.picture.attach(io: file, filename: 'pornichet.jpg', content_type: 'image/jpeg')
pornichet.save!


puts "creating resa..."
Reservation.create(party_place: tarzan_place, renter: pierre, status: "validée", date_begin: "2021/06/03", date_end: "2021/06/04", total_price: 120)
Reservation.create(party_place: toit_baulois, renter: pierre, status: "refusée", date_begin: "2021/08/10", date_end: "2021/08/13", total_price: 0)
Reservation.create(party_place: circus, renter: geoffrey, status: "en attente",  date_begin: "2021/05/13", date_end: "2021/05/14", total_price: 130)
Reservation.create(party_place: desert_point, renter: allan, status: "annulée", date_begin: "2021/04/03", date_end: "2021/04/05", total_price: 0)

puts "finished !!!"




