class Launch {
  String id;
  Object fairings;
  Object links;
  String staticFireDateUtc;
  int staticFireDateUnix;
  bool tbd;
  bool net;
  int window;
  String rocket;
  bool success;
  String details;
  List<dynamic> crew;
  List<dynamic> ships;
  List<dynamic> capsules;
  List<dynamic> payloads;
  String launchpad;
  bool autoUpdate;
  String launchLibraryId;
  List<dynamic> failures;
  int flightNumber;
  String name;
  String dateUtc;
  String dateLocal;
  String datePrecision;
  bool upcoming;
  List<dynamic> cores;

  Launch({
    this.id,
    this.fairings,
    this.links,
    this.staticFireDateUtc,
    this.staticFireDateUnix,
    this.tbd,
    this.net,
    this.window,
    this.rocket,
    this.success,
    this.details,
    this.crew,
    this.ships,
    this.capsules,
    this.payloads,
    this.launchpad,
    this.autoUpdate,
    this.launchLibraryId,
    this.failures,
    this.flightNumber,
    this.name,
    this.dateUtc,
    this.dateLocal,
    this.datePrecision,
    this.upcoming,
    this.cores,
  });

  Launch.fromJson(Map<String, dynamic> launchJson)
      : id = launchJson['id'],
        fairings = launchJson['fairings'],
        links = launchJson['links'],
        staticFireDateUtc = launchJson['static_fire_date_utc'],
        staticFireDateUnix = launchJson['static_fire_date_unix'],
        tbd = launchJson['tbd'],
        net = launchJson['net'],
        window = launchJson['window'],
        rocket = launchJson['rocket'],
        success = launchJson['success'],
        details = launchJson['details'],
        crew = launchJson['crew'],
        ships = launchJson['ships'],
        capsules = launchJson['capsules'],
        payloads = launchJson['payloads'],
        launchpad = launchJson['launchpad'],
        autoUpdate = launchJson['autoUpdate'],
        launchLibraryId = launchJson['launchLibraryId'],
        failures = launchJson['failures'],
        flightNumber = launchJson['flightNumber'],
        name = launchJson['name'],
        dateUtc = launchJson['dateUtc'],
        dateLocal = launchJson['dateLocal'],
        datePrecision = launchJson['datePrecision'],
        upcoming = launchJson['upcoming'],
        cores = launchJson['cores'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'fairings': fairings,
        'links': links,
        'staticFireDateUtc': staticFireDateUtc,
        'staticFireDateUnix': staticFireDateUnix,
        'tbd': tbd,
        'net': net,
        'window': window,
        'rocket': rocket,
        'success': success,
        'details': details,
        'crew': crew,
        'ships': ships,
        'capsules': capsules,
        'payloads': payloads,
        'launchpad': launchpad,
        'autoUpdate': autoUpdate,
        'launchLibraryId': launchLibraryId,
        'failures': failures,
        'flightNumber': flightNumber,
        'name': name,
        'dateUtc': dateUtc,
        'dateLocal': dateLocal,
        'datePrecision': datePrecision,
        'upcoming': upcoming,
        'cores': cores,
      };
}
