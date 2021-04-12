import 'package:flutter/material.dart';

class Place {
  final int id;
  final String name;
  final String description;
  final String location;
  final String image;
  final double rating;

  Place({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.location,
    @required this.image,
    @required this.rating,
  });
}

// demo places

List<Place> demoPlaces = [
  Place(
      id: 1,
      name: 'London Eye',
      description:
          'The London Eye is one of the more famous structures rising on the landscape of London. It is an enormous Ferris wheel that sits on the south bank of the River Thames. It is on the west end of Jubilee Gardens on the South Bank and it stands roughly 135 metres in height. The wheel itself has a diameter of 120 metres.',
      location: 'South Bank, London SE1 7PB, United Kingdom',
      image: 'assets/images/place1.jpg',
      rating: 5),
  Place(
      id: 2,
      name: 'Tower Bridge',
      description:
          'Tower Bridge is a combined bascule and suspension bridge in London, built between 1886 and 1894. The bridge crosses the River Thames close to the Tower of London and has become a world-famous symbol of London.',
      location: 'Tower Bridge Rd, London SE1 2UP',
      image: 'assets/images/place2.jpg',
      rating: 3),
  Place(
      id: 3,
      name: 'LSBU',
      description:
          'London South Bank University was Originally the Borough Polytechnic Institute, we laid down roots in south London in 1892 and has been improving the lives of students, businesses and the local community ever since. Our original aim to promote the industrial skill, general knowledge, health and well-being of young men and women remains central to our mission today. Our practical and vocational approach ensures our students will leave equipped with the skills to meet the challenges of today workplace.',
      location: '103 Borough Rd, London SE1 0AA',
      image: 'assets/images/place3.jpg',
      rating: 5),
  Place(
      id: 4,
      name: 'Piccadily Circus',
      description:
          'Piccadilly Circus is a road junction and public space of London is West End in the City of Westminster. It was built in 1819 to connect Regent Street with Piccadilly. In this context, a circus, from the Latin word meaning circle, is a round open space at a street junction.',
      location: 'Piccadily Circus, London',
      image: 'assets/images/place4.jpg',
      rating: 3),
  Place(
      id: 5,
      name: 'British Museum',
      description:
          'The British Museum was founded in 1753 and opened its doors in 1759. It was the first national museum to cover all fields of human knowledge, open to visitors from across the world.',
      location: 'Great Russell St, Bloomsbury, London WC1B 3DG',
      image: 'assets/images/place5.jpg',
      rating: 4),
  Place(
      id: 6,
      name: 'ZLS London Zoo',
      description:
          'London Zoo is the world is oldest scientific zoo. It was opened in London on 27 April 1828, and was originally intended to be used as a collection for scientific study. In 1831 or 1832, the animals of the Tower of London menagerie were transferred to the zoo is collection. It was opened to the public in 1847.',
      location: 'Outer Cir, London NW1 4RY',
      image: 'assets/images/place6.jpg',
      rating: 3),
  Place(
      id: 7,
      name: 'Edinburgh',
      description:
          'One of Scotland most attractive cities, the capital city of Edinburgh is also one of the UK most visited destinations. Popular for its many well-preserved historic buildings, Edinburgh is perhaps best known as the home of the majestic Edinburgh Castle. Perched high above the old city on a rocky promontory, this 13th-century royal fortress includes highlights such as the famous One Clock Salute, held daily at Half Moon Battery; the Scottish Crown Jewels in the Royal Palace the Scottish National War Memorial and the famous Stone of Destiny (the Stone of Scone), only returned to Scotland after being held for 700 years in London. From the castle, it easy to explore the other most important historic sites in the city, most notably the Old Town Royal Mile with its fine architecture, boutique shops, cafés, restaurants, and art galleries, as well as the splendid old Palace of Holyroodhouse. Other Edinburgh highlights include broad Princes Street, popular for its shopping and dining, as well as for the Royal Botanical Garden and the National Gallery of Scotland.',
      location: 'Edinburgh Scotland',
      image: 'assets/images/place7.jpg',
      rating: 2),
  Place(
      id: 8,
      name: 'North Greenwich',
      description:
          'North Greenwich (also known as the Greenwich Peninsula) is an area of South East London, England, located in the Royal Borough of Greenwich. The peninsula is bounded on three sides by a loop of the Thames, between the Isle of Dogs to the west and Silvertown to the east.',
      location: 'Greenwich Peninsula, London SE10 0PH',
      image: 'assets/images/place8.jpg',
      rating: 3),
  Place(
      id: 9,
      name: 'Durdle Door',
      description:
          'Durdle Door is a natural limestone arch on the Jurassic Coast near Lulworth in Dorset, England. It is owned by the Welds, a family who own 12,000 acres in Dorset in the name of the Lulworth Estate. It is open to the public.',
      location: 'Durdle DoorWareham BH20 5PU',
      image: 'assets/images/place9.jpg',
      rating: 3),
  Place(
      id: 10,
      name: 'oxford street london',
      description:
          'Oxford Street is a major road in the City of Westminster in the West End of London, running from Tottenham Court Road to Marble Arch via Oxford Circus. It is Europe busiest shopping street, with around half a million daily visitors, and as of 2012 had approximately 300 shops.',
      location: ' Oxford Street, London W1D 2EH',
      image: 'assets/images/place10.jpg',
      rating: 4),
];
