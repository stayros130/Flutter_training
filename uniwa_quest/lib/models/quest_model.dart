class QuestModel {
  QuestModel({
    required this.id,
    required this.xp,
    required this.title,
    required this.requiredSkills,
    required this.createdBy,
    DateTime? creationDate,
    List<DateTime>? submissionDates,
    int? revisions,
    String? assignedTo,
    bool? isDone,
    DateTime? completedDate,
    String? rejectedReason,
  }) : creationDate = creationDate =DateTime.now(),
       submissionDates = submissionDates = [],
       revisions = revisions = 0,
       assignedTo = assignedTo = '',
       isDone = isDone = false,
       completedDate = completedDate = DateTime(1999, 12, 3), // 3rd of December 1999, because it can't be null
       rejectedReason = rejectedReason = '';

  final int id;
  final int xp;
  final String title;
  final DateTime creationDate;
  List<DateTime> submissionDates;
  int revisions;
  List<String> requiredSkills;
  final String createdBy;
  String assignedTo;
  bool isDone;
  DateTime completedDate;
  String rejectedReason;

}