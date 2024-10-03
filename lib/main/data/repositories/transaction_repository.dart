import 'package:ifinnance/core/utils/db_utils.dart';
import 'package:ifinnance/main/data/models/transaction_model.dart';
import 'package:ifinnance/main/data/repositories/db_repository.dart';
import 'package:sqflite/sqflite.dart';

class TransactionRepository {
  final DBRepostiory _dbRepository = DBRepostiory();
  final List<TransactionModel> transactionsList = List<TransactionModel>.empty(growable: true);
  
  Future<List<TransactionModel>> getTransactions() async {
    final Database db = await _dbRepository.getDatabase();

    await db.rawQuery('SELECT * FROM ${DBUtils.transactionTable}').then((data) {
      transactionsList.addAll(
        data.map((e) => TransactionModel.fromJson(e)).toList()
      );
    });

    return transactionsList;
  }

  Future<List<TransactionModel>> saveTransaction({required TransactionModel newTransaction}) async {
    final Database db = await _dbRepository.getDatabase();

    final int transactionId = await db.rawInsert('INSERT INTO ${DBUtils.transactionTable} (title, value, date) VALUES (?, ?, ?)', [newTransaction.title, newTransaction.value, newTransaction.date.toIso8601String()]);
    transactionsList.add(newTransaction.copyWith(id: transactionId));

    return transactionsList;
  }

  Future<List<TransactionModel>> deleteTransaction({required int id}) async {
    final Database db = await _dbRepository.getDatabase();

    await db.rawDelete('DELETE FROM ${DBUtils.transactionTable} WHERE id = ?', [id]);
    transactionsList.removeWhere((element) => element.id == id);

    return transactionsList;
  }
}