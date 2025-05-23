import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["start", "end", "total"]
  static values = {
    price: Number
  }

  connect() {
    this.updateTotal()
  }

  updateTotal() {
    const start = new Date(this.startTarget.value)
    const end = new Date(this.endTarget.value)

    if (!isNaN(start) && !isNaN(end) && end > start) {
      const days = (end - start) / (1000 * 60 * 60 * 24)
      const total = days * this.priceValue
      this.totalTarget.textContent = `£${total.toFixed(2)}`
    } else {
      this.totalTarget.textContent = "£0"
    }
  }
}
