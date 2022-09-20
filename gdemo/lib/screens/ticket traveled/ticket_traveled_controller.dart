class TicketTraveledController {
  static var cryingfacebool = false;
  static var slightlyfrowningfacebool = false;
  static var neutralfacebool = false;
  static var slightlysmilingfacebool = false;
  static var grinningfacebool = false;

  static getcryingface() {
    cryingfacebool = !cryingfacebool;
  }

  static getslightlyfrowningface() {
    slightlyfrowningfacebool = !slightlyfrowningfacebool;
    grinningfacebool = slightlysmilingfacebool = neutralfacebool = false;
  }

  static getneutralface() {
    neutralfacebool = !neutralfacebool;
  }

  static getslightlysmilingface() {
    slightlysmilingfacebool = !slightlysmilingfacebool;
  }

  static getgrinningface() {
    grinningfacebool = !grinningfacebool;
  }
}
