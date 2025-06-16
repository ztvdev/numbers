class NumberModel {
  NumberModel({required this.number, required this.fact});

  final int number;
  final String fact;

  factory NumberModel.fromJson(Map<String, dynamic> json) {
    return NumberModel(number: json['number'], fact: json['fact']);
  }

  Map<String, dynamic> toJson() => {'number': number, 'fact': fact};
}
