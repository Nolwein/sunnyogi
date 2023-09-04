import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll-button"
export default class extends Controller {
  static targets = ["button"];

  connect() {
    this.hideButton();
    window.addEventListener("scroll", this.handleScroll.bind(this));
  }

  disconnect() {
    window.removeEventListener("scroll", this.handleScroll);
  }

  handleScroll() {
    if (window.scrollY > 50) {
      this.showButton();
    } else {
      this.hideButton();
    }
  }

  hideButton() {
    this.buttonTarget.classList.add("hidden");
  }

  showButton() {
    this.buttonTarget.classList.remove("hidden");
  }
}
