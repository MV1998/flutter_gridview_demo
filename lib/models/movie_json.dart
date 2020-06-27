class MovieJson {
  String aspect_ratio_name;
  String budget;
  String category_name;
  String disc_format_name;
  String gross;
  int movie_id;
  int number_discs;
  String phase;
  String rating_name;
  String release_date;
  int release_year;
  int running_time;
  int status;
  String time_stamp;
  String title;
  String viewing_format_name;

  MovieJson({this.aspect_ratio_name, this.budget, this.category_name, this.disc_format_name, this.gross, this.movie_id, this.number_discs, this.phase, this.rating_name, this.release_date, this.release_year, this.running_time, this.status, this.time_stamp, this.title, this.viewing_format_name});

  factory MovieJson.fromJson(Map<String, dynamic> json) {
    return MovieJson(
      aspect_ratio_name: json['aspect_ratio_name'],
      budget: json['budget'],
      category_name: json['category_name'],
      disc_format_name: json['disc_format_name'],
      gross: json['gross'],
      movie_id: json['movie_id'],
      number_discs: json['number_discs'],
      phase: json['phase'],
      rating_name: json['rating_name'],
      release_date: json['release_date'],
      release_year: json['release_year'],
      running_time: json['running_time'],
      status: json['status'],
      time_stamp: json['time_stamp'],
      title: json['title'],
      viewing_format_name: json['viewing_format_name'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aspect_ratio_name'] = this.aspect_ratio_name;
    data['budget'] = this.budget;
    data['category_name'] = this.category_name;
    data['disc_format_name'] = this.disc_format_name;
    data['gross'] = this.gross;
    data['movie_id'] = this.movie_id;
    data['number_discs'] = this.number_discs;
    data['phase'] = this.phase;
    data['rating_name'] = this.rating_name;
    data['release_date'] = this.release_date;
    data['release_year'] = this.release_year;
    data['running_time'] = this.running_time;
    data['status'] = this.status;
    data['time_stamp'] = this.time_stamp;
    data['title'] = this.title;
    data['viewing_format_name'] = this.viewing_format_name;
    return data;
  }
}