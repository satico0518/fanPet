import 'dart:convert';

SlideModel slideModelFromJson(String str) => SlideModel.fromJson(json.decode(str));

String slideModelToJson(SlideModel data) => json.encode(data.toJson());

class SlideModel {
    String img;
    String text;
    double imgHeight;

    SlideModel({
        this.img,
        this.text,
        this.imgHeight,
    });

    factory SlideModel.fromJson(Map<String, dynamic> json) => SlideModel(
        img: json["img"],
        text: json["text"],
        imgHeight: json["imgHeight"],
    );

    Map<String, dynamic> toJson() => {
        "img": img,
        "text": text,
        "imgHeight": imgHeight,
    };
}