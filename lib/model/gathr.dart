class Gathr {
  String status;
  String message;
  List<Allevents> allevents;
  List<Null> liveevents;
  List<Upcomigevents> upcomigevents;
  List<Null> mypastvent;

  Gathr(
      {this.status,
      this.message,
      this.allevents,
      this.liveevents,
      this.upcomigevents,
      this.mypastvent});

  Gathr.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['allevents'] != null) {
      allevents = <Allevents>[];
      json['allevents'].forEach((v) {
        allevents.add(new Allevents.fromJson(v));
      });
    }
    // if (json['liveevents'] != null) {
    //   liveevents = <Null>[];
    //   json['liveevents'].forEach((v) {
    //     liveevents.add(new Null.fromJson(v));
    //   });
    // }
    if (json['upcomigevents'] != null) {
      upcomigevents = <Upcomigevents>[];
      json['upcomigevents'].forEach((v) {
        upcomigevents.add(new Upcomigevents.fromJson(v));
      });
    }
    // if (json['mypastvent'] != null) {
    //   mypastvent = <Null>[];
    //   json['mypastvent'].forEach((v) {
    //     mypastvent.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    // if (this.allevents != null) {
    //   data['allevents'] = this.allevents.map((v) => v.toJson()).toList();
    // }
    // if (this.liveevents != null) {
    //   data['liveevents'] = this.liveevents.map((v) => v.toJson()).toList();
    // }
    // if (this.upcomigevents != null) {
    //   data['upcomigevents'] =
    //       this.upcomigevents!.map((v) => v.toJson()).toList();
    // }
    // if (this.mypastvent != null) {
    //   data['mypastvent'] = this.mypastvent.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Allevents {
  int eventId;
  String eventName;
  int eventCategoryId;
  int eventOrganizerId;
  String eventDescription;
  String eventStartdate;
  String eventEnddate;
  String eventStarttime;
  String eventEndtime;
  String eventBanneroneimg;
  String eventType;
  String eventAmount;
  String eventCode;
  String eventBannertwoimg;
  String eventQrcode;
  String eventLocation;
  String eventLocationlink;
  Null eventLat;
  Null eventLong;
  Null eventTwitter;
  Null eventFacebook;
  Null eventLinkedin;
  Null eventInstragram;
  Null eventYoutube;
  Null eventSkype;
  Null eventWechat;
  int eventStatus;
  String eventCreatedAt;
  int categoryId;
  int categoryOrganizerId;
  int categoryFor;
  String categoryName;
  String categoryImage;
  int categoryStatus;
  String categoryCreatedAt;
  int rating;
  String isCheckin;
  String isAgenda;
  String isSpeaker;
  String isBooking;
  String isRates;
  String eventBannerImg1;
  String eventBannerImg2;

  Allevents(
      {this.eventId,
      this.eventName,
      this.eventCategoryId,
      this.eventOrganizerId,
      this.eventDescription,
      this.eventStartdate,
      this.eventEnddate,
      this.eventStarttime,
      this.eventEndtime,
      this.eventBanneroneimg,
      this.eventType,
      this.eventAmount,
      this.eventCode,
      this.eventBannertwoimg,
      this.eventQrcode,
      this.eventLocation,
      this.eventLocationlink,
      this.eventLat,
      this.eventLong,
      this.eventTwitter,
      this.eventFacebook,
      this.eventLinkedin,
      this.eventInstragram,
      this.eventYoutube,
      this.eventSkype,
      this.eventWechat,
      this.eventStatus,
      this.eventCreatedAt,
      this.categoryId,
      this.categoryOrganizerId,
      this.categoryFor,
      this.categoryName,
      this.categoryImage,
      this.categoryStatus,
      this.categoryCreatedAt,
      this.rating,
      this.isCheckin,
      this.isAgenda,
      this.isSpeaker,
      this.isBooking,
      this.isRates,
      this.eventBannerImg1,
      this.eventBannerImg2});

  Allevents.fromJson(Map<String, dynamic> json) {
    eventId = json['eventId'];
    eventName = json['eventName'];
    eventCategoryId = json['eventCategory_id'];
    eventOrganizerId = json['eventOrganizer_id'];
    eventDescription = json['eventDescription'];
    eventStartdate = json['eventStartdate'];
    eventEnddate = json['eventEnddate'];
    eventStarttime = json['eventStarttime'];
    eventEndtime = json['eventEndtime'];
    eventBanneroneimg = json['eventBanneroneimg'];
    eventType = json['eventType'];
    eventAmount = json['eventAmount'];
    eventCode = json['eventCode'];
    eventBannertwoimg = json['eventBannertwoimg'];
    eventQrcode = json['eventQrcode'];
    eventLocation = json['eventLocation'];
    eventLocationlink = json['eventLocationlink'];
    eventLat = json['eventLat'];
    eventLong = json['eventLong'];
    eventTwitter = json['eventTwitter'];
    eventFacebook = json['eventFacebook'];
    eventLinkedin = json['eventLinkedin'];
    eventInstragram = json['eventInstragram'];
    eventYoutube = json['eventYoutube'];
    eventSkype = json['eventSkype'];
    eventWechat = json['eventWechat'];
    eventStatus = json['eventStatus'];
    eventCreatedAt = json['eventCreated_at'];
    categoryId = json['categoryId'];
    categoryOrganizerId = json['categoryOrganizer_id'];
    categoryFor = json['categoryFor'];
    categoryName = json['categoryName'];
    categoryImage = json['categoryImage'];
    categoryStatus = json['categoryStatus'];
    categoryCreatedAt = json['categoryCreated_at'];
    rating = json['Rating'];
    isCheckin = json['isCheckin'];
    isAgenda = json['isAgenda'];
    isSpeaker = json['isSpeaker'];
    isBooking = json['isBooking'];
    isRates = json['isRates'];
    eventBannerImg1 = json['event_banner_img1'];
    eventBannerImg2 = json['event_banner_img2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['eventId'] = this.eventId;
    data['eventName'] = this.eventName;
    data['eventCategory_id'] = this.eventCategoryId;
    data['eventOrganizer_id'] = this.eventOrganizerId;
    data['eventDescription'] = this.eventDescription;
    data['eventStartdate'] = this.eventStartdate;
    data['eventEnddate'] = this.eventEnddate;
    data['eventStarttime'] = this.eventStarttime;
    data['eventEndtime'] = this.eventEndtime;
    data['eventBanneroneimg'] = this.eventBanneroneimg;
    data['eventType'] = this.eventType;
    data['eventAmount'] = this.eventAmount;
    data['eventCode'] = this.eventCode;
    data['eventBannertwoimg'] = this.eventBannertwoimg;
    data['eventQrcode'] = this.eventQrcode;
    data['eventLocation'] = this.eventLocation;
    data['eventLocationlink'] = this.eventLocationlink;
    data['eventLat'] = this.eventLat;
    data['eventLong'] = this.eventLong;
    data['eventTwitter'] = this.eventTwitter;
    data['eventFacebook'] = this.eventFacebook;
    data['eventLinkedin'] = this.eventLinkedin;
    data['eventInstragram'] = this.eventInstragram;
    data['eventYoutube'] = this.eventYoutube;
    data['eventSkype'] = this.eventSkype;
    data['eventWechat'] = this.eventWechat;
    data['eventStatus'] = this.eventStatus;
    data['eventCreated_at'] = this.eventCreatedAt;
    data['categoryId'] = this.categoryId;
    data['categoryOrganizer_id'] = this.categoryOrganizerId;
    data['categoryFor'] = this.categoryFor;
    data['categoryName'] = this.categoryName;
    data['categoryImage'] = this.categoryImage;
    data['categoryStatus'] = this.categoryStatus;
    data['categoryCreated_at'] = this.categoryCreatedAt;
    data['Rating'] = this.rating;
    data['isCheckin'] = this.isCheckin;
    data['isAgenda'] = this.isAgenda;
    data['isSpeaker'] = this.isSpeaker;
    data['isBooking'] = this.isBooking;
    data['isRates'] = this.isRates;
    data['event_banner_img1'] = this.eventBannerImg1;
    data['event_banner_img2'] = this.eventBannerImg2;
    return data;
  }
}

class Upcomigevents {
  int eventId;
  String eventName;
  int eventCategoryId;
  int eventOrganizerId;
  Null eventExhibitorId;
  String eventDescription;
  String eventStartdate;
  String eventEnddate;
  String eventStarttime;
  String eventEndtime;
  String eventType;
  Null eventAmount;
  String eventBanneroneimg;
  String eventCode;
  String eventBannertwoimg;
  String eventQrcode;
  String eventLocation;
  Null eventLat;
  Null eventLong;
  Null eventTwitter;
  Null eventFacebook;
  Null eventLinkedin;
  Null eventInstragram;
  Null eventYoutube;
  Null eventSkype;
  Null eventWechat;
  int eventStatus;
  String eventCreatedAt;
  int categoryId;
  Null categoryExhibitorId;
  int categoryFor;
  String categoryName;
  String categoryImage;
  int categoryStatus;
  String categoryCreatedAt;
  String eventBannerImg1;
  String eventBannerImg2;
  int rating;
  String isBooking;
  String isRates;
  String isAgenda;
  String isSpeaker;
  String isCheckin;

  Upcomigevents(
      {this.eventId,
      this.eventName,
      this.eventCategoryId,
      this.eventOrganizerId,
      this.eventExhibitorId,
      this.eventDescription,
      this.eventStartdate,
      this.eventEnddate,
      this.eventStarttime,
      this.eventEndtime,
      this.eventType,
      this.eventAmount,
      this.eventBanneroneimg,
      this.eventCode,
      this.eventBannertwoimg,
      this.eventQrcode,
      this.eventLocation,
      this.eventLat,
      this.eventLong,
      this.eventTwitter,
      this.eventFacebook,
      this.eventLinkedin,
      this.eventInstragram,
      this.eventYoutube,
      this.eventSkype,
      this.eventWechat,
      this.eventStatus,
      this.eventCreatedAt,
      this.categoryId,
      this.categoryExhibitorId,
      this.categoryFor,
      this.categoryName,
      this.categoryImage,
      this.categoryStatus,
      this.categoryCreatedAt,
      this.eventBannerImg1,
      this.eventBannerImg2,
      this.rating,
      this.isBooking,
      this.isRates,
      this.isAgenda,
      this.isSpeaker,
      this.isCheckin});

  Upcomigevents.fromJson(Map<String, dynamic> json) {
    eventId = json['eventId'];
    eventName = json['eventName'];
    eventCategoryId = json['eventCategory_id'];
    eventOrganizerId = json['eventOrganizer_id'];
    eventExhibitorId = json['eventExhibitor_id'];
    eventDescription = json['eventDescription'];
    eventStartdate = json['eventStartdate'];
    eventEnddate = json['eventEnddate'];
    eventStarttime = json['eventStarttime'];
    eventEndtime = json['eventEndtime'];
    eventType = json['eventType'];
    eventAmount = json['eventAmount'];
    eventBanneroneimg = json['eventBanneroneimg'];
    eventCode = json['eventCode'];
    eventBannertwoimg = json['eventBannertwoimg'];
    eventQrcode = json['eventQrcode'];
    eventLocation = json['eventLocation'];
    eventLat = json['eventLat'];
    eventLong = json['eventLong'];
    eventTwitter = json['eventTwitter'];
    eventFacebook = json['eventFacebook'];
    eventLinkedin = json['eventLinkedin'];
    eventInstragram = json['eventInstragram'];
    eventYoutube = json['eventYoutube'];
    eventSkype = json['eventSkype'];
    eventWechat = json['eventWechat'];
    eventStatus = json['eventStatus'];
    eventCreatedAt = json['eventCreated_at'];
    categoryId = json['categoryId'];
    categoryExhibitorId = json['categoryExhibitor_id'];
    categoryFor = json['categoryFor'];
    categoryName = json['categoryName'];
    categoryImage = json['categoryImage'];
    categoryStatus = json['categoryStatus'];
    categoryCreatedAt = json['categoryCreated_at'];
    eventBannerImg1 = json['event_banner_img1'];
    eventBannerImg2 = json['event_banner_img2'];
    rating = json['Rating'];
    isBooking = json['isBooking'];
    isRates = json['isRates'];
    isAgenda = json['isAgenda'];
    isSpeaker = json['isSpeaker'];
    isCheckin = json['isCheckin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['eventId'] = this.eventId;
    data['eventName'] = this.eventName;
    data['eventCategory_id'] = this.eventCategoryId;
    data['eventOrganizer_id'] = this.eventOrganizerId;
    data['eventExhibitor_id'] = this.eventExhibitorId;
    data['eventDescription'] = this.eventDescription;
    data['eventStartdate'] = this.eventStartdate;
    data['eventEnddate'] = this.eventEnddate;
    data['eventStarttime'] = this.eventStarttime;
    data['eventEndtime'] = this.eventEndtime;
    data['eventType'] = this.eventType;
    data['eventAmount'] = this.eventAmount;
    data['eventBanneroneimg'] = this.eventBanneroneimg;
    data['eventCode'] = this.eventCode;
    data['eventBannertwoimg'] = this.eventBannertwoimg;
    data['eventQrcode'] = this.eventQrcode;
    data['eventLocation'] = this.eventLocation;
    data['eventLat'] = this.eventLat;
    data['eventLong'] = this.eventLong;
    data['eventTwitter'] = this.eventTwitter;
    data['eventFacebook'] = this.eventFacebook;
    data['eventLinkedin'] = this.eventLinkedin;
    data['eventInstragram'] = this.eventInstragram;
    data['eventYoutube'] = this.eventYoutube;
    data['eventSkype'] = this.eventSkype;
    data['eventWechat'] = this.eventWechat;
    data['eventStatus'] = this.eventStatus;
    data['eventCreated_at'] = this.eventCreatedAt;
    data['categoryId'] = this.categoryId;
    data['categoryExhibitor_id'] = this.categoryExhibitorId;
    data['categoryFor'] = this.categoryFor;
    data['categoryName'] = this.categoryName;
    data['categoryImage'] = this.categoryImage;
    data['categoryStatus'] = this.categoryStatus;
    data['categoryCreated_at'] = this.categoryCreatedAt;
    data['event_banner_img1'] = this.eventBannerImg1;
    data['event_banner_img2'] = this.eventBannerImg2;
    data['Rating'] = this.rating;
    data['isBooking'] = this.isBooking;
    data['isRates'] = this.isRates;
    data['isAgenda'] = this.isAgenda;
    data['isSpeaker'] = this.isSpeaker;
    data['isCheckin'] = this.isCheckin;
    return data;
  }
}
