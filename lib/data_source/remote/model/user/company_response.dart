import 'package:json_annotation/json_annotation.dart';

part 'company_response.g.dart';

@JsonSerializable()
class CompanyResponse {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'catchPhrase')
  final String catchPhrase;
  @JsonKey(name: 'bs')
  final String areaOfWork;

  CompanyResponse({
    required this.name,
    required this.catchPhrase,
    required this.areaOfWork,
  });

  factory CompanyResponse.fromJson(Map<String, dynamic> json) =>
      _$CompanyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyResponseToJson(this);
}

