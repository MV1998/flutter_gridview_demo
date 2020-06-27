class Appearance {
    String eyeColor;
    String gender;
    String hairColor;
    List<String> height;
    String race;
    List<String> weight;

    Appearance({this.eyeColor, this.gender, this.hairColor, this.height, this.race, this.weight});

    factory Appearance.fromJson(Map<String, dynamic> json) {
        return Appearance(
            eyeColor: json['eyeColor'], 
            gender: json['gender'], 
            hairColor: json['hairColor'], 
            height: json['height'] != null ? new List<String>.from(json['height']) : null, 
            race: json['race'], 
            weight: json['weight'] != null ? new List<String>.from(json['weight']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['eyeColor'] = this.eyeColor;
        data['gender'] = this.gender;
        data['hairColor'] = this.hairColor;
        data['race'] = this.race;
        if (this.height != null) {
            data['height'] = this.height;
        }
        if (this.weight != null) {
            data['weight'] = this.weight;
        }
        return data;
    }
}