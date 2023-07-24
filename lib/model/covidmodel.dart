
class CovidPatient {
  final String state;
  final String district;
  final int confirmed;
  final int active;
  final int recovered;
  final int deceased;

  CovidPatient({
    required this.state,
    required this.district,
    required this.confirmed,
    required this.active,
    required this.recovered,
    required this.deceased,
  });

  factory CovidPatient.fromJson(Map<String, dynamic> json) {
    return CovidPatient(
      state: json['state'],
      district: json['district'],
      confirmed: json['confirmed'],
      active: json['active'],
      recovered: json['recovered'],
      deceased: json['deceased'],
    );
  }
}
