# Hava Ne Durumda

Bu uygulama temelde apilerle nasıl çalışılır, apiden veri nasıl `GET` edilir gibi işlemleri anlamak için yapılmıştır.

Uygulama Fotoğrafları:

<img title="" src="file:///D:/VSCodeProjects/FlutterProjects/havanedurumda/images/ss1.png" alt="image1" width="211"> <img title="" src="file:///D:/VSCodeProjects/FlutterProjects/havanedurumda/images/ss2.png" alt="image2" width="211" data-align="inline"> <img title="" src="file:///D:/VSCodeProjects/FlutterProjects/havanedurumda/images/ss3.png" alt="image3" width="211">

Uygulamada api servisi olarak https://collectapi.com servisini kullandım. Siz de hava durumu apisine erişmek için aşağıdaki linke tıklayabilirsiniz.

https://collectapi.com/tr/api/weather/hava-durumu-api

---

Bilmeyen Arkadaşlar için Apiden veri çekerken sitenin size verdiği `authorization`

keyini header kısmında yollamanız gerekmektedir, aksi taktirde aşağıdaki hatayı alacaksınız.

![unAuthorizedError](D:\VSCodeProjects\FlutterProjects\havanedurumda\images\unAuthorized.png)

Bunu düzeltmek için `GET` metodunda şunlardan birini yazabilirsiniz:

```dart
await http.get(Uri.parse("https://api.collectapi.com/weather/getWeather?data.lang=tr&data.city=$city"), headers: {
      HttpHeaders.authorizationHeader: 'apikey YOURAPIKEYHEREYOURAPIKEYHEREYOURAPIKEYHERE',
      HttpHeaders.contentTypeHeader: 'application/json'
    });
```

Ya da

```dart
await http.get(Uri.parse("https://api.collectapi.com/weather/getWeather?data.lang=tr&data.city=$city"), headers: {
      "authorization": 'apikey YOURAPIKEYHEREYOURAPIKEYHEREYOURAPIKEYHERE',
      "content": 'application/json'
    });
```
