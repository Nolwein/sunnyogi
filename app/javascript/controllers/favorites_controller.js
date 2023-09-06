import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="favorites"
export default class extends Controller {
  static targets = ["heartIcon"];


  connect() {
    console.log("Hello from the otherside")
  }

  toggleHeart(event) {
    // event.preventDefault();

    this.heartIconTarget.classList.toggle("fa-regular");
    this.heartIconTarget.classList.toggle("fa-solid");

    // const link = event.currentTarget;
    // link.click();
  }
}

//soit faire ajax
