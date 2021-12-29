import '../../data_source/remote/model/user/user_response.dart';

class User {
  int userId;
  String username;
  String name;
  String email;
  String phone;
  String website;
  String workName;
  String workArea;
  String workCatchPhrase;
  String address;

  User({
    this.userId = 0,
    this.username = '',
    this.name = '',
    this.email = '',
    this.phone = '',
    this.website = '',
    this.workName = '',
    this.workArea = '',
    this.workCatchPhrase = '',
    this.address = '',
  });

  User.fromResponse(UserResponse response)
      : userId = response.id,
        name = response.name,
        username = response.userName,
        email = response.email,
        phone = response.phone,
        website = response.website,
        workName = response.company.name,
        workArea = response.company.areaOfWork,
        workCatchPhrase = response.company.catchPhrase,
        address =
            '${response.address.city} ${response.address.street} ${response.address.building}';
}
