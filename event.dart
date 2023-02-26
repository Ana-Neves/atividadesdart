import 'dart:io';

class Guest {
  String name;
  String celPhone;

  Guest(this.name, this.celPhone);
}

class Event {
  List<Guest> guests = [];
  late DateTime date;
  late String venue;

  void registerGuest(Guest guest) {
    guests.add(guest);
  }

  bool removeGuest(Guest guest) {
    return guests.remove(guest);
  }

  int numberOfGuests() {
    return guests.length;
  }
}

void main() {
  Event event = Event();
  event.date = DateTime.parse('2022-10-15');
  event.venue = 'Centro de Convenções';

  Guest guest1 = Guest('João', '(11) 99999-1111');
  Guest guest2 = Guest('Maria', '(11) 99999-2222');
  Guest guest3 = Guest('Pedro', '(11) 99999-3333');

  event.registerGuest(guest1);
  event.registerGuest(guest2);
  event.registerGuest(guest3);

  print('Número de convidados: ${event.numberOfGuests()}');

  bool removed = event.removeGuest(guest2);

  if (removed) {
    print('O convidado ${guest2.name} foi removido da lista de convidados');
  } else {
    print('O convidado ${guest2.name} não foi encontrado na lista de convidados');
  }

  print('Número de convidados: ${event.numberOfGuests()}');
}
