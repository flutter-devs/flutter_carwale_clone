import 'package:aeo_newcarwale/model/car_comaprisons.dart';
import 'package:aeo_newcarwale/model/just_launched.dart';
import 'package:aeo_newcarwale/model/news.dart';
import 'package:aeo_newcarwale/model/photos.dart';
import 'package:aeo_newcarwale/model/popularscars.dart';
import 'package:aeo_newcarwale/model/upcoming_launches.dart';
import 'package:aeo_newcarwale/model/videos.dart';

class Constants{
  static List<PopularCars>getPopularsCars(){
    return[
      new PopularCars('assets/images/MarutiSCross.jpg','Maruti Suzuki S-Presco','₹ 3.69L', 'Avg Ex-Showroom Price','Show price in my city'),
      new PopularCars('assets/images/MarutiSCross.jpg','Maruti Suzuki S-Presco','₹ 3.69L', 'Avg Ex-Showroom Price','Show price in my city'),
      new PopularCars('assets/images/MarutiSCross.jpg','Maruti Suzuki S-Presco','₹ 3.69L', 'Avg Ex-Showroom Price','Show price in my city'),
      new PopularCars('assets/images/MarutiSCross.jpg','Maruti Suzuki S-Presco','₹ 3.69L', 'Avg Ex-Showroom Price','Show price in my city'),
      new PopularCars('assets/images/MarutiSCross.jpg','Maruti Suzuki S-Presco','₹ 3.69L', 'Avg Ex-Showroom Price','Show price in my city'),
    ];
  }

  static List<CarComparisons>getCarsComparisons(){
    return[
      new CarComparisons('Kia Seltos', 'Hyundai Creta'),
      new CarComparisons('Kia Seltos', 'Hyundai Creta'),
      new CarComparisons('Kia Seltos', 'Hyundai Creta'),
      new CarComparisons('Kia Seltos', 'Hyundai Creta'),
      new CarComparisons('Kia Seltos', 'Hyundai Creta'),
    ];
  }

  static List<UpcomingLaunches>getUpcomingLaunche(){
   return[
     new UpcomingLaunches('assets/images/MarutiSCross.jpg','Merecdes-Benz GLC FaceLift','3rd Dec 2019','₹ 53L - 57L','Estimated price'),
     new UpcomingLaunches('assets/images/MarutiSCross.jpg','Merecdes-Benz GLC FaceLift','3rd Dec 2019','₹ 53L - 57L','Estimated price'),
     new UpcomingLaunches('assets/images/MarutiSCross.jpg','Merecdes-Benz GLC FaceLift','3rd Dec 2019','₹ 53L - 57L','Estimated price'),
     new UpcomingLaunches('assets/images/MarutiSCross.jpg','Merecdes-Benz GLC FaceLift','3rd Dec 2019','₹ 53L - 57L','Estimated price'),
   ];
  }

  static List<JustLaunched>getJustLaunched(){
    return[
      new JustLaunched('assets/images/MarutiSCross.jpg','Audi A6','₹ 3.69L', 'Avg Ex-Showroom Price','Show price in my city'),
      new JustLaunched('assets/images/MarutiSCross.jpg','Audi A6','₹ 3.69L', 'Avg Ex-Showroom Price','Show price in my city'),
      new JustLaunched('assets/images/MarutiSCross.jpg','Audi A6','₹ 3.69L', 'Avg Ex-Showroom Price','Show price in my city'),
      new JustLaunched('assets/images/MarutiSCross.jpg','Audi A6','₹ 3.69L', 'Avg Ex-Showroom Price','Show price in my city'),
      new JustLaunched('assets/images/MarutiSCross.jpg','Audi A6','₹ 3.69L', 'Avg Ex-Showroom Price','Show price in my city'),
    ];
  }

  static List<News>getNews(){
    return[
      new News('assets/images/news.jpg','feature','Aston Martin DBX - Now in pictures','22 hours ago','Ninad Ambre'),
      new News('assets/images/news.jpg','feature','Aston Martin DBX - Now in pictures','22 hours ago','Ninad Ambre'),
      new News('assets/images/news.jpg','feature','Aston Martin DBX - Now in pictures','22 hours ago','Ninad Ambre'),
      new News('assets/images/news.jpg','feature','Aston Martin DBX - Now in pictures','22 hours ago','Ninad Ambre'),
    ];
  }

  static List<Photos>getPhotos(){
    return[
      new Photos('assets/images/photos1','Maruti Suzuki Baleno','30'),
      new Photos('assets/images/photos1','Maruti Suzuki Baleno','30'),
      new Photos('assets/images/photos1','Maruti Suzuki Baleno','30'),
      new Photos('assets/images/photos1','Maruti Suzuki Baleno','30'),
    ];
  }

  static List<Videos>getVideos(){
    return[
      new Videos('assets/images/videos.jpg','2018 Range Rover Sport Launches','Updated on 04 jul 2018','7.4K', '32'),
      new Videos('assets/images/videos.jpg','2018 Range Rover Sport Launches','Updated on 04 jul 2018','7.4K', '32'),
    ];
  }


}