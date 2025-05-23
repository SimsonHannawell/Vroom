document.addEventListener("DOMContentLoaded", () => {
  const startInput = document.querySelector("#booking_start_date");
  const endInput = document.querySelector("#booking_end_date");
  const pricePerDay = parseFloat("<%= @car.price_per_day %>");
  const totalPriceEl = document.getElementById("total-price");

  function updateTotal() {
    if (startInput.value && endInput.value) {
      const startDate = new Date(startInput.value);
      const endDate = new Date(endInput.value);
      const days = (endDate - startDate) / (1000 * 60 * 60 * 24);
      if (days > 0) {
        const total = days * pricePerDay;
        totalPriceEl.textContent = `£${total.toFixed(2)}`;
      } else {
        totalPriceEl.textContent = "£0";
      }
    }
  }

  startInput.addEventListener("change", updateTotal);
  endInput.addEventListener("change", updateTotal);
});
