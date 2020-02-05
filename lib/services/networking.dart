import 'package:coding_challenge/models/models.dart';
import 'package:coding_challenge/utilities/store.dart';

Future<List<VerticalListModel>> getVerticalModelData() async {
  final response = await getVerticalList();
  return response;
}

Future<List<HorizontalListModel>> getHorizontalModelData() async {
  final response = await getHorizontalList();
  return response;
}
