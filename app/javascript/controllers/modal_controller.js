// app/javascript/controllers/modal_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.addEventListener("turbo:submit-end", (event) => {
      const { success, fetchResponse } = event.detail
      if (success) {
        fetchResponse.text().then(html => {
          const modal = document.getElementById("modal")
          if (modal) modal.innerHTML = html
        })
      }
    })
  }

  close() {
    const modal = document.getElementById("modal")
    if (modal) modal.innerHTML = ""
  }
}
