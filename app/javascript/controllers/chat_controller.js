import { Controller } from "@hotwired/stimulus";
import { createConsumer } from "@rails/actioncable";

export default class extends Controller {
    static targets = ["input", "messages"];

    connect() {
        const consumer = createConsumer();
        this.subscription = consumer.subscriptions.create("RoomChannel", {
            received: (data) => {
                this.appendMessage(data.message);
            },
        });
    }

    disconnect() {
        this.subscription.unsubscribe();
    }

    submit(event) {
        event.preventDefault();
        this.subscription.send({ content: this.inputTarget.value });
        this.inputTarget.value = "";
    }

    appendMessage(message) {
        const messageElement = document.createElement("p");
        messageElement.textContent = message;
        messageElement.classList.add('message__speech-bubble');
        if(this.messagesTargets.length !== 0) {
            this.messagesTarget.appendChild(messageElement);
        }
    }
}
