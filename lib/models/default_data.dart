class DefaultData {
  CountriesRoute countriesRoute;
  CountriesRoute countryDayOneRoute;
  CountriesRoute countryDayOneTotalRoute;
  CountriesRoute countryRoute;
  CountriesRoute countryRoutePremium;
  CountriesRoute countryRoutePremiumData;
  CountriesRoute countryStatusDayOneLiveRoute;
  CountriesRoute countryStatusDayOneRoute;
  CountriesRoute countryStatusDayOneTotalRoute;
  CountriesRoute countryStatusLiveRoute;
  CountriesRoute countryStatusRoute;
  CountriesRoute countryStatusTotalRoute;
  CountriesRoute countrySummaryRoutePremium;
  CountriesRoute countryTestingPremium;
  CountriesRoute countryTotalRoute;
  CountriesRoute exportRoute;
  CountriesRoute liveCountryRoute;
  CountriesRoute liveCountryStatusAfterDateRoute;
  CountriesRoute liveCountryStatusRoute;
  CountriesRoute summaryRoute;
  CountriesRoute travelAdvicePremium;
  CountriesRoute webhookRoute;

  DefaultData(
      {this.countriesRoute,
      this.countryDayOneRoute,
      this.countryDayOneTotalRoute,
      this.countryRoute,
      this.countryRoutePremium,
      this.countryRoutePremiumData,
      this.countryStatusDayOneLiveRoute,
      this.countryStatusDayOneRoute,
      this.countryStatusDayOneTotalRoute,
      this.countryStatusLiveRoute,
      this.countryStatusRoute,
      this.countryStatusTotalRoute,
      this.countrySummaryRoutePremium,
      this.countryTestingPremium,
      this.countryTotalRoute,
      this.exportRoute,
      this.liveCountryRoute,
      this.liveCountryStatusAfterDateRoute,
      this.liveCountryStatusRoute,
      this.summaryRoute,
      this.travelAdvicePremium,
      this.webhookRoute});

  DefaultData.fromJson(Map<String, dynamic> json) {
    countriesRoute = json['countriesRoute'] != null
        ? new CountriesRoute.fromJson(json['countriesRoute'])
        : null;
    countryDayOneRoute = json['countryDayOneRoute'] != null
        ? new CountriesRoute.fromJson(json['countryDayOneRoute'])
        : null;
    countryDayOneTotalRoute = json['countryDayOneTotalRoute'] != null
        ? new CountriesRoute.fromJson(json['countryDayOneTotalRoute'])
        : null;
    countryRoute = json['countryRoute'] != null
        ? new CountriesRoute.fromJson(json['countryRoute'])
        : null;
    countryRoutePremium = json['countryRoutePremium'] != null
        ? new CountriesRoute.fromJson(json['countryRoutePremium'])
        : null;
    countryRoutePremiumData = json['countryRoutePremiumData'] != null
        ? new CountriesRoute.fromJson(json['countryRoutePremiumData'])
        : null;
    countryStatusDayOneLiveRoute = json['countryStatusDayOneLiveRoute'] != null
        ? new CountriesRoute.fromJson(json['countryStatusDayOneLiveRoute'])
        : null;
    countryStatusDayOneRoute = json['countryStatusDayOneRoute'] != null
        ? new CountriesRoute.fromJson(json['countryStatusDayOneRoute'])
        : null;
    countryStatusDayOneTotalRoute =
        json['countryStatusDayOneTotalRoute'] != null
            ? new CountriesRoute.fromJson(json['countryStatusDayOneTotalRoute'])
            : null;
    countryStatusLiveRoute = json['countryStatusLiveRoute'] != null
        ? new CountriesRoute.fromJson(json['countryStatusLiveRoute'])
        : null;
    countryStatusRoute = json['countryStatusRoute'] != null
        ? new CountriesRoute.fromJson(json['countryStatusRoute'])
        : null;
    countryStatusTotalRoute = json['countryStatusTotalRoute'] != null
        ? new CountriesRoute.fromJson(json['countryStatusTotalRoute'])
        : null;
    countrySummaryRoutePremium = json['countrySummaryRoutePremium'] != null
        ? new CountriesRoute.fromJson(json['countrySummaryRoutePremium'])
        : null;
    countryTestingPremium = json['countryTestingPremium'] != null
        ? new CountriesRoute.fromJson(json['countryTestingPremium'])
        : null;
    countryTotalRoute = json['countryTotalRoute'] != null
        ? new CountriesRoute.fromJson(json['countryTotalRoute'])
        : null;
    exportRoute = json['exportRoute'] != null
        ? new CountriesRoute.fromJson(json['exportRoute'])
        : null;
    liveCountryRoute = json['liveCountryRoute'] != null
        ? new CountriesRoute.fromJson(json['liveCountryRoute'])
        : null;
    liveCountryStatusAfterDateRoute = json['liveCountryStatusAfterDateRoute'] !=
            null
        ? new CountriesRoute.fromJson(json['liveCountryStatusAfterDateRoute'])
        : null;
    liveCountryStatusRoute = json['liveCountryStatusRoute'] != null
        ? new CountriesRoute.fromJson(json['liveCountryStatusRoute'])
        : null;
    summaryRoute = json['summaryRoute'] != null
        ? new CountriesRoute.fromJson(json['summaryRoute'])
        : null;
    travelAdvicePremium = json['travelAdvicePremium'] != null
        ? new CountriesRoute.fromJson(json['travelAdvicePremium'])
        : null;
    webhookRoute = json['webhookRoute'] != null
        ? new CountriesRoute.fromJson(json['webhookRoute'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.countriesRoute != null) {
      data['countriesRoute'] = this.countriesRoute.toJson();
    }
    if (this.countryDayOneRoute != null) {
      data['countryDayOneRoute'] = this.countryDayOneRoute.toJson();
    }
    if (this.countryDayOneTotalRoute != null) {
      data['countryDayOneTotalRoute'] = this.countryDayOneTotalRoute.toJson();
    }
    if (this.countryRoute != null) {
      data['countryRoute'] = this.countryRoute.toJson();
    }
    if (this.countryRoutePremium != null) {
      data['countryRoutePremium'] = this.countryRoutePremium.toJson();
    }
    if (this.countryRoutePremiumData != null) {
      data['countryRoutePremiumData'] = this.countryRoutePremiumData.toJson();
    }
    if (this.countryStatusDayOneLiveRoute != null) {
      data['countryStatusDayOneLiveRoute'] =
          this.countryStatusDayOneLiveRoute.toJson();
    }
    if (this.countryStatusDayOneRoute != null) {
      data['countryStatusDayOneRoute'] = this.countryStatusDayOneRoute.toJson();
    }
    if (this.countryStatusDayOneTotalRoute != null) {
      data['countryStatusDayOneTotalRoute'] =
          this.countryStatusDayOneTotalRoute.toJson();
    }
    if (this.countryStatusLiveRoute != null) {
      data['countryStatusLiveRoute'] = this.countryStatusLiveRoute.toJson();
    }
    if (this.countryStatusRoute != null) {
      data['countryStatusRoute'] = this.countryStatusRoute.toJson();
    }
    if (this.countryStatusTotalRoute != null) {
      data['countryStatusTotalRoute'] = this.countryStatusTotalRoute.toJson();
    }
    if (this.countrySummaryRoutePremium != null) {
      data['countrySummaryRoutePremium'] =
          this.countrySummaryRoutePremium.toJson();
    }
    if (this.countryTestingPremium != null) {
      data['countryTestingPremium'] = this.countryTestingPremium.toJson();
    }
    if (this.countryTotalRoute != null) {
      data['countryTotalRoute'] = this.countryTotalRoute.toJson();
    }
    if (this.exportRoute != null) {
      data['exportRoute'] = this.exportRoute.toJson();
    }
    if (this.liveCountryRoute != null) {
      data['liveCountryRoute'] = this.liveCountryRoute.toJson();
    }
    if (this.liveCountryStatusAfterDateRoute != null) {
      data['liveCountryStatusAfterDateRoute'] =
          this.liveCountryStatusAfterDateRoute.toJson();
    }
    if (this.liveCountryStatusRoute != null) {
      data['liveCountryStatusRoute'] = this.liveCountryStatusRoute.toJson();
    }
    if (this.summaryRoute != null) {
      data['summaryRoute'] = this.summaryRoute.toJson();
    }
    if (this.travelAdvicePremium != null) {
      data['travelAdvicePremium'] = this.travelAdvicePremium.toJson();
    }
    if (this.webhookRoute != null) {
      data['webhookRoute'] = this.webhookRoute.toJson();
    }
    return data;
  }
}

class CountriesRoute {
  String name;
  String description;
  String path;

  CountriesRoute({this.name, this.description, this.path});

  CountriesRoute.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    description = json['Description'];
    path = json['Path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['Description'] = this.description;
    data['Path'] = this.path;
    return data;
  }
}
