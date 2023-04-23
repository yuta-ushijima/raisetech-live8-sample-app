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
        const inputTarget = this.inputTarget
        const inputValue = inputTarget.value;
        const errorMessageElement = document.getElementById('errorMessage');
        if(inputValue.length <= 140) {
            if (errorMessageElement) {
                errorMessageElement.remove()
                inputTarget.style = ''
            } else {
                this.subscription.send({ content: inputValue, valid: true });
                this.inputTarget.value = "";
            }
        } else {
            const errorMessageElement = document.createElement("p");
            errorMessageElement.id = 'errorMessage'
            errorMessageElement.style = 'color: red;'
            errorMessageElement.textContent = 'つぶやきは140文字以内で入力してください。'
            inputTarget.parentNode.prepend(errorMessageElement)
            inputTarget.style = 'border-color: red;'
        }
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
