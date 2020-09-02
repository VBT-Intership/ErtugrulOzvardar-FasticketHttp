
class FlightsModel {
  String fromLocation;
  String toLocation;
  String departureTime;
  String arrivalTime;
  String pnr;


  FlightsModel({this.fromLocation, this.toLocation, this.departureTime, this.arrivalTime, this.pnr});

  FlightsModel.fromJson(Map<String, dynamic> json) {
    fromLocation = json['fromLocation'];
    toLocation = json['toLocation'];
    departureTime = json['departureTime'];
    arrivalTime = json['arrivalTime'];
    pnr = json['pnr'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fromLocation'] = this.fromLocation;
    data['toLocation'] = this.toLocation;
    data['departureTime'] = this.departureTime;
    data['arrivalTime'] = this.arrivalTime;
    data['pnr'] = this.pnr;
    return data;
  }
}