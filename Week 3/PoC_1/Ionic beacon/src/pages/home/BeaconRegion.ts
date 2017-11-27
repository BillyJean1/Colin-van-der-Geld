import {EstimoteBeaconRegion} from "@ionic-native/estimote-beacons";

export class BeaconRegion implements EstimoteBeaconRegion{
  major: number;
  minor: number;
  uuid: string;


  constructor(major: number, minor: number, uuid: string) {
    this.major = major;
    this.minor = minor;
    this.uuid = uuid;
  }
}
