import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="loader"
export default class extends Controller {
  static targets = [ "hideable" , "visible"]
  connect() {

  }

  showTargets() {
    this.hideableTargets.forEach(el => {
      el.hidden = false
    });
    this.visibleTargets.forEach(el => {
      el.hidden = true
    });
  }
}
