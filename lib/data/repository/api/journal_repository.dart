import 'package:magazine/data/models/journal/journal.dart';
import 'package:magazine/main.dart';
import 'package:magazine/ui/widgets/journal_item.dart';

class JournalRepository {
  Future<List<Journal>> getAllJournals() async {
    const path = '/journals/v1';
    final response = await dio.get(path);
    final jsonList = response.data as List;
    final journals = jsonList.map((e) => Journal.fromJson(e)).toList();
    print('-------------------------- journals = ' + journals.toString());
    return journals;
  }
}
