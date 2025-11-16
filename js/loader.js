export class loader {
    constructor() {
        this.loaderElement = null;
        this.init();
    }

    init() {
        if (!document.getElementById('omk-loader')) {
            this.loaderElement = document.createElement('div');
            this.loaderElement.id = 'omk-loader';
            this.loaderElement.innerHTML = `
                <div class="loader-spinner"></div>
                <p>Chargement...</p>
            `;
            this.loaderElement.style.cssText = `
                display: none;
                position: fixed;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                background: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 2px 10px rgba(0,0,0,0.2);
                z-index: 9999;
            `;
            document.body.appendChild(this.loaderElement);

            const style = document.createElement('style');
            style.textContent = `
                .loader-spinner {
                    border: 4px solid #f3f3f3;
                    border-top: 4px solid #667eea;
                    border-radius: 50%;
                    width: 40px;
                    height: 40px;
                    animation: spin 1s linear infinite;
                    margin: 0 auto 10px;
                }
                @keyframes spin {
                    0% { transform: rotate(0deg); }
                    100% { transform: rotate(360deg); }
                }
            `;
            document.head.appendChild(style);
        }
    }

    show() {
        if (this.loaderElement) {
            this.loaderElement.style.display = 'block';
        }
    }

    hide(force = false) {
        if (this.loaderElement) {
            if (force) {
                this.loaderElement.style.display = 'none';
            } else {
                setTimeout(() => {
                    this.loaderElement.style.display = 'none';
                }, 300);
            }
        }
    }
}