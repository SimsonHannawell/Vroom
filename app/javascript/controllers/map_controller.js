import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

export default class extends Controller {
  static values = {
    apiKey: String,
    cars: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v12",
      center: [-0.12, 51.5],
      zoom: 11
    })

    this.markers = {}

    this.carsValue.forEach((car) => {
      // 🚗 Emoji Marker
      const el = document.createElement("div")
      el.className = "custom-marker"
      el.innerText = "🚗"
      el.dataset.carId = car.id

      const popup = new mapboxgl.Popup({ offset: 25 }).setHTML(
        `<h5>${car.name}</h5><p>£${car.price}/day</p>`
      )

      const marker = new mapboxgl.Marker(el)
        .setLngLat([car.longitude, car.latitude])
        .setPopup(popup)
        .addTo(this.map)

      this.markers[car.id] = marker
    })

    this.addCardListeners()
  }

  addCardListeners() {
    document.querySelectorAll(".card-link-wrapper").forEach(card => {
      card.addEventListener("mouseenter", () => {
        const id = card.id.split("-")[1]
        const marker = this.markers[id]
        if (marker) marker.togglePopup()
      })

      card.addEventListener("mouseleave", () => {
        const id = card.id.split("-")[1]
        const marker = this.markers[id]
        if (marker) marker.togglePopup()
      })
    })
  }
}
