import 'package:injectable/injectable.dart';
import 'base_api.dart';

@prod
@LazySingleton(as: IApi)
class ApiProd implements IApi {
  @override
  String get environment => Environment.prod;
  @override
  String get pokeApiDomain => 'https://pokeapi.co/api';
  @override
  String get spritsDomain =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon';
  @override
  String get limit => '10';
}
