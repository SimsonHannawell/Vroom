import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"

export default class extends Controller {
  static targets = ["rangeInput", "startField", "endField"]

  connect() {
    flatpickr(this.rangeInputTarget, {
      mode: "range",
      enableTime: true,
      dateFormat: "Y-m-d H:i",
      time_24hr: true,
      onChange: (selectedDates) => {
        if (selectedDates.length === 2) {
          this.startFieldTarget.value = selectedDates[0].toISOString()
          this.endFieldTarget.value = selectedDates[1].toISOString()
        }
      }
    })
  }
}
