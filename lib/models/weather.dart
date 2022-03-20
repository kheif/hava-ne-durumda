class Weather{
  late String date;
  late String day;
  late String icon;
  late String description;
  late String status;
  late String degree;
  late String min;
  late String max;
  late String night;
  late String humidity;

  Weather(Map json){
    date = json['date'] ?? "Bir sorun oluştu";
    day = json['day'] ?? "Bir sorun oluştu";
    icon = json['icon'] ?? "Bir sorun oluştu";
    description = json['description'] ?? "Bir sorun oluştu";
    status = json['status'] ?? "Bir sorun oluştu";
    degree = json['degree'] ?? "Bir sorun oluştu";
    min = json['min'] ?? "Bir sorun oluştu";
    max = json['max'] ?? "Bir sorun oluştu";
    night = json['night'] ?? "Bir sorun oluştu";
    humidity = json['humidity'] ?? "Bir sorun oluştu";
  }
}