import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"

export default class extends Controller {
  static targets = ["rangeInput", "startField", "endField"]

  connect() {
    this.pricePerDay = parseFloat(this.element.dataset.pricePerDay || "0")
    this.totalPriceEl = document.getElementById("total-price")
    this.setupDatepicker()

    // Debug: see if controller is loaded
    console.log("Datepicker controller connected, price/day:", this.pricePerDay)
  }

  setupDatepicker() {
    flatpickr(this.rangeInputTarget, {
      mode: "range",
      dateFormat: "Y-m-d",
      onChange: this.handleDateChange.bind(this)
    })
  }

  handleDateChange(selectedDates) {
    if (selectedDates.length === 2) {
      const [startDate, endDate] = selectedDates
      const days = Math.ceil((endDate - startDate) / (1000 * 60 * 60 * 24))

      this.startFieldTarget.value = startDate.toISOString().split("T")[0]
      this.endFieldTarget.value = endDate.toISOString().split("T")[0]

      const total = this.pricePerDay * days

      if (this.totalPriceEl) {
        this.totalPriceEl.textContent = `£${total.toFixed(2)}`
      }
    } else {
      this.startFieldTarget.value = ""
      this.endFieldTarget.value = ""
      if (this.totalPriceEl) {
        this.totalPriceEl.textContent = "£0"
      }
    }
  }
}

