import 'package:json_annotation/json_annotation.dart';
import 'package:pass_flutter/src/models/pass_json/barcodes/barcodes.dart';
import 'package:pass_flutter/src/models/pass_json/locations/locations.dart';
import 'package:pass_flutter/src/models/pass_json/structure_dictionary/pass_structure_dictionary.dart';

part 'pass_json.g.dart';

@JsonSerializable()
class PassJson {
  // Standard Keys
  int formatVersion;
  String passTypeIdentifier;
  String description;
  String teamIdentifier;
  String serialNumber;
  String organizationName;

  // Web Service Keys
  String webServiceURL;
  String authenticationToken;

  // Visual Appearance Keys
  List<Barcodes> barcodes;
  String backgroundColor;
  String foregroundColor;
  String labelColor;

  // Style Keys
  PassStructureDictionary storeCard;
  PassStructureDictionary generic;
  PassStructureDictionary eventTicket;
  PassStructureDictionary coupon;
  PassStructureDictionary boardingPass;

  // Relevance Keys
  List<Locations> locations;

  // Associated App Keys
  List<int> associatedStoreIdentifiers;
  String appLaunchURL;

  // Expiration Keys
  String expirationDate;
  bool voided;

  PassJson({
    this.formatVersion,
    this.storeCard,
    this.passTypeIdentifier,
    this.description,
    this.teamIdentifier,
    this.labelColor,
    this.backgroundColor,
    this.foregroundColor,
    this.organizationName,
    this.webServiceURL,
    this.serialNumber,
    this.authenticationToken,
    this.associatedStoreIdentifiers,
    this.appLaunchURL,
    this.expirationDate,
    this.voided,
  });

  factory PassJson.fromJson(Map<String, dynamic> json) =>
      _$PassJsonFromJson(json);

  Map<String, dynamic> toJson() => _$PassJsonToJson(this);
}
