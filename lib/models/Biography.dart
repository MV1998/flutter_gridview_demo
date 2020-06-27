class Biography {
    List<String> aliases;
    String alignment;
    String alterEgos;
    String firstAppearance;
    String fullName;
    String placeOfBirth;
    String publisher;

    Biography({this.aliases, this.alignment, this.alterEgos, this.firstAppearance, this.fullName, this.placeOfBirth, this.publisher});

    factory Biography.fromJson(Map<String, dynamic> json) {
        return Biography(
            aliases: json['aliases'] != null ? new List<String>.from(json['aliases']) : null, 
            alignment: json['alignment'], 
            alterEgos: json['alterEgos'], 
            firstAppearance: json['firstAppearance'], 
            fullName: json['fullName'], 
            placeOfBirth: json['placeOfBirth'], 
            publisher: json['publisher'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['alignment'] = this.alignment;
        data['alterEgos'] = this.alterEgos;
        data['firstAppearance'] = this.firstAppearance;
        data['fullName'] = this.fullName;
        data['placeOfBirth'] = this.placeOfBirth;
        data['publisher'] = this.publisher;
        if (this.aliases != null) {
            data['aliases'] = this.aliases;
        }
        return data;
    }
}