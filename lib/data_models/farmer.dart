class Farmer {
  String name, location, phone, farmerId, gender;
  int numFarms;
  String img;
  double farmSize;
  int dateOfBirth;
  List<String> specializations;
  Farmer(
      {this.gender,
      this.farmerId,
      this.name,
      this.location,
      this.phone,
      this.numFarms,
      this.img,
      this.dateOfBirth,
      this.farmSize,
      this.specializations});

  // Convert a Farmer object into a Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (farmerId != null) {
      map['farmerId'] = farmerId;
    }
    map['name'] = name;
    map['phone'] = phone;
    map['location'] = location;
    map['numFarms'] = numFarms;
    map['img'] = img;
    map['farmSize'] = farmSize;
    map['dateOfBirth'] = dateOfBirth;
    map['gender'] = gender;
    map['specializations'] = specializations;
    return map;
  }

  Farmer.fromMapObject(Map<String, dynamic> map) {
    this.name = map['name'];
    this.phone = map['phone'];
    this.location = map['location'];
    this.numFarms = map['numFarms'];
    this.img = map['img'];
    this.farmSize = map['farmSize'];
    this.dateOfBirth = map['dateOfBirth'];
    this.gender = map['gender'];
    this.specializations = map['specializations'];
  }
}
