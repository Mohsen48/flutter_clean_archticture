import 'dart:convert';


//Model Example
ExampleModel exampleModelFromJson(String str) =>
    ExampleModel.fromJson(json.decode(str));

String exampleModel(ExampleModel data) => json.encode(data.toJson());

class ExampleModel {
  ExampleModel({
    this.pageId,
  });

  int? pageId;

  factory ExampleModel.fromJson(Map<String, dynamic> json) => ExampleModel(
        pageId: json["pageId"],
      );

  Map<String, dynamic> toJson() => {
        "pageId": pageId,
      };
}
