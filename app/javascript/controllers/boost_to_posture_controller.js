// app/javascript/controllers/boost_to_posture_controller.js
import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["postureInput"];

  connect() {
    this.postureInputTarget.disabled = true; // Désactivez la case à cocher au départ
  }

  togglePosture(event) {
    const isChecked = event.target.checked;
    this.postureInputTarget.checked = isChecked;
  }
}
