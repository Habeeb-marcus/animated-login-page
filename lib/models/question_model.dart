class QuestionModel {
  final bool? isDeleted;
  final String? question;
  final List<AnswerOptions?>? answerOptions;
  final List<String>? isAttempted;
  final String? status;
  final String? questionsDuration;
  final List<String>? notes;
  final String? user;
  final String? createdAt;
  final String? updatedAt;
  final String? id;

  const QuestionModel({
    this.isDeleted = false,
    this.question = "",
    this.answerOptions = const [],
    this.isAttempted = const [],
    this.status = "",
    this.questionsDuration = "",
    this.notes = const [],
    this.user = "",
    this.createdAt = "",
    this.updatedAt = "",
    this.id = "",
  });

  QuestionModel.fromJson(Map<String, dynamic> json)
      : isDeleted = json['isDeleted'] ?? false,
        question = json['question'] ?? '',
        answerOptions = json["answerOptions"] != null
            ? (json["answerOptions"] as List)
                .map((e) => e == null
                    ? null
                    : AnswerOptions.fromJson(Map<String, dynamic>.from(e)))
                .toList()
            : [],
        isAttempted = (json['isAttempted'] ?? []).cast<String>(),
        status = json['status'] ?? '',
        questionsDuration = json['questionsDuration'] ?? '',
        notes = (json['notes'] ?? []).cast<String>(),
        user = json['user'] ?? '',
        createdAt = json['createdAt'] ?? '',
        updatedAt = json['updatedAt'] ?? '',
        id = json['id'] ?? '';
}

class AnswerOptions {
  final bool? isDeleted;
  final int? optionNumber;
  final String? answerBody;
  final bool? isCorrectAnswer;
  final String? explanation;

  AnswerOptions(
      {this.isDeleted = false,
      this.optionNumber = -1,
      this.answerBody = '',
      this.isCorrectAnswer = false,
      this.explanation = ''});

  AnswerOptions.fromJson(Map<String, dynamic> json)
      : isDeleted = json['isDeleted'] ?? false,
        optionNumber = json['optionNumber'] ?? -1,
        answerBody = json['answerBody'] ?? '',
        isCorrectAnswer = json['isCorrectAnswer'] ?? false,
        explanation = json['explanation'] ?? '';
}
