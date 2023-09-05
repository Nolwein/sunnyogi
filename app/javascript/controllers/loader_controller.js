import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="loader"
export default class extends Controller {
  static targets = [ "hideable" , "visible"]
  connect() {

  }

  showTargets() {
    this.hideableTargets.forEach(el => {
      el.classList.remove('d-none');
    });
    this.visibleTargets.forEach(el => {
      el.classList.add('d-none');
    });
  }
}
