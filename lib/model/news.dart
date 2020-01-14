class News{
  String _img;
  String _feature;
  String _title;
  String _day;
  String _newsByName;

  News(this._img,this._feature,this._title,this._day,this._newsByName);

  String get img=>_img;
  String get feature=>_feature;
  String get title=>_title;
  String get day=>_day;
  String get newsByName=>_newsByName;
}