import 'country.dart';

void main() {
  final brazil = Country('BR', 'Brazil', 8515767);
  final argentina = Country('AR', 'Argentina', 2780400);
  final bolivia = Country('BO', 'Bolivia', 1098581);
  
  brazil.population = 213993981;
  brazil.borderCountries = [argentina, bolivia];
  argentina.population = 45195774;
  argentina.borderCountries = [brazil];
  bolivia.population = 11513100;
  bolivia.borderCountries = [brazil, argentina];
  
  print('${brazil.name} has population density of ${brazil.populationDensity()} people/km²');
  print('${argentina.name} is bordering ${argentina.borderCountries.length} countries');
  print('${bolivia.name} borders ${bolivia.borderCountries[0].name} and ${bolivia.borderCountries[1].name}');
  
  if (brazil.isBorder(argentina)) {
    print('${brazil.name} and ${argentina.name} share a border');
  } else {
    print('${brazil.name} and ${argentina.name} do not share a border');
  }
}