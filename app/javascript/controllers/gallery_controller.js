import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["main", "thumb"]

  changeMain(event) {
    const clickedImage = event.currentTarget
    const fullUrl = clickedImage.dataset.full
    this.mainTarget.src = fullUrl
  }
}
