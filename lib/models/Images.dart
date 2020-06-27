class Images {
    String lg;
    String md;
    String sm;
    String xs;

    Images({this.lg, this.md, this.sm, this.xs});

    factory Images.fromJson(Map<String, dynamic> json) {
        return Images(
            lg: json['lg'], 
            md: json['md'], 
            sm: json['sm'], 
            xs: json['xs'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['lg'] = this.lg;
        data['md'] = this.md;
        data['sm'] = this.sm;
        data['xs'] = this.xs;
        return data;
    }
}