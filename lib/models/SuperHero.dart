import 'Appearance.dart';
import 'Biography.dart';
import 'Connections.dart';
import 'Images.dart';
import 'Powerstats.dart';
import 'Work.dart';

class SuperHero {
    Appearance appearance;
    Biography biography;
    Connections connections;
    int id;
    Images images;
    String name;
    Powerstats powerstats;
    String slug;
    Work work;

    SuperHero({this.appearance, this.biography, this.connections, this.id, this.images, this.name, this.powerstats, this.slug, this.work});

    factory SuperHero.fromJson(Map<String, dynamic> json) {
        return SuperHero(
            appearance: json['appearance'] != null ? Appearance.fromJson(json['appearance']) : null, 
            biography: json['biography'] != null ? Biography.fromJson(json['biography']) : null, 
            connections: json['connections'] != null ? Connections.fromJson(json['connections']) : null, 
            id: json['id'], 
            images: json['images'] != null ? Images.fromJson(json['images']) : null, 
            name: json['name'], 
            powerstats: json['powerstats'] != null ? Powerstats.fromJson(json['powerstats']) : null, 
            slug: json['slug'], 
            work: json['work'] != null ? Work.fromJson(json['work']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['name'] = this.name;
        data['slug'] = this.slug;
        if (this.appearance != null) {
            data['appearance'] = this.appearance.toJson();
        }
        if (this.biography != null) {
            data['biography'] = this.biography.toJson();
        }
        if (this.connections != null) {
            data['connections'] = this.connections.toJson();
        }
        if (this.images != null) {
            data['images'] = this.images.toJson();
        }
        if (this.powerstats != null) {
            data['powerstats'] = this.powerstats.toJson();
        }
        if (this.work != null) {
            data['work'] = this.work.toJson();
        }
        return data;
    }
}