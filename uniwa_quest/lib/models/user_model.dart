import 'package:uniwa_quest/models/quest_model.dart';

class UserModel {
  UserModel(
    this.id,
    this.role,
    this.xp,
    this.successfulQuests,
    this.failedQuests,
    this.address,
    this.completedQuests,
    this.ongoingQuests,
    this.pendingReviewQuests,
    this.rejectedQuests,
  );
  
  final int id;
  final String role; // 'Professor' or 'Student'
  int xp;
  int successfulQuests;
  int failedQuests;
  final String address; //wallet address ex '0x1234567890123456789012345678901234567890'
  List<QuestModel> completedQuests;
  List<QuestModel> ongoingQuests;
  List<QuestModel> pendingReviewQuests;
  List<QuestModel> rejectedQuests;
}