import '../models/vehicle.dart';
import '../services/database.dart';

/// [VehicleRepository] é responsável por gerenciar a persistência dos dados
/// da entidade [Vehicle] no banco de dados.
///
class VehicleRepository {
  final List<Vehicle> _listVehicle = [];

  List<Vehicle> get listVehicle => _listVehicle;

   Future<void> insertVehicle(Vehicle vehicle) async {
    final database = await getDatabase();
    final map = TableVehicle.toMap(vehicle);

    await database.insert(TableVehicle.tableName, map);

    print('Inserido no banco = ${map[TableVehicle.marca]}');
    print('Inserido no banco = ${map[TableVehicle.modelo]}');
    print('Inserido no banco = ${map[TableVehicle.imagePath]}');
  }

    Future<List<Vehicle>> load() async {
    final database = await getDatabase();
    final List<Map<String, dynamic>> maps =
        await database.query(TableVehicle.tableName);

    final List<Vehicle> vehicle =
        maps.map((map) => Vehicle.fromMap(map)).toList();

    listVehicle.clear();
    listVehicle.addAll(vehicle);

    return listVehicle;
  }




}
