import 'package:uniwa_quest/models/quest_model.dart';

class GuildBoardModel {
  GuildBoardModel({
    required this.quests,
    required this.totalQuestsMade,
    required this.totalQuestsCompleted,
  });

  List<QuestModel> quests;
  int totalQuestsMade;
  int totalQuestsCompleted;
}