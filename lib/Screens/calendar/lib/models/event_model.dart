class EventModel {
  String eventType,
      eventDate,
      eventImage,
      eventName,
      eventOfferText,
      eventVenue,
      guestPicture,
      guestName,
      guestDesignation;

  //Contructor
  EventModel({
    this.eventDate,
    this.eventImage,
    this.guestName,
    this.eventName,
    this.eventOfferText,
    this.eventType,
    this.eventVenue,
    this.guestDesignation,
  });
}

// Creating list of dummy data for events list

var events = [
  EventModel(
    eventDate: '2nd May at : 4:00 PM',
    eventType: 'Online',
    eventImage: 'assets/event1.jpg',
    eventName: 'Jim Kelly,Kung Fu \nand Black British Civil Rights',
    eventOfferText: 'Only 7£ for ticket',
    eventVenue: 'Online',
    guestName: 'Black History Walks',
    guestDesignation: 'Lead Host',
  ),
  EventModel(
    eventDate: '20th May at : 7:00PM - 10:00PM',
    eventType: 'Music',
    eventImage: 'assets/event2.jpg',
    eventName: '10 Piece Brass \nBand Perform - Oasis: \nDefinitely Maybe',
    eventOfferText: 'UKs biggest 10-piece brass band',
    eventVenue: '32-37 Cowper Street, London ',
    guestName: 'Re:imagine',
    guestDesignation: 'Band',
  ),
  EventModel(
    eventDate: 'Multiple dates',
    eventType: 'Show',
    eventImage: 'assets/event3.jpg',
    eventName: 'Neon Naked Life Drawing',
    eventOfferText: 'DRAW IN NEON, \nIMMERSED IN ULTRA-VIOLET \nLIGHT,AT THE PRINCE OF \nPECKHAM!',
    eventVenue: 'Prince of Peckham Pub, 1 Clayton Road,\nLondon ',
    guestName: 'Neon Naked Life Drawing',
    guestDesignation: '',
  ),
];
