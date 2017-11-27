import {Component} from '@angular/core';
import {NavController} from 'ionic-angular';
import {EstimoteBeaconRegion, EstimoteBeacons} from '@ionic-native/estimote-beacons';
import {BeaconRegion} from "./BeaconRegion";

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  constructor(public navCtrl: NavController, private eb: EstimoteBeacons) {

  }

  ionViewDidLoad() {
    this.eb.requestAlwaysAuthorization();

    this.eb.enableAnalytics(true);

  }

  beaconTest() {
    console.log("uitgevoerd");

    let region: EstimoteBeaconRegion = new BeaconRegion(null, null, '00000000000000000000000000000000');
    this.eb.startRangingBeaconsInRegion(region).subscribe(data => {
      console.log(data);
    });
  }

}
