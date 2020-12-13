import os
from datetime import datetime
import requests


class DownloadImage:

    def save_image(self, url):
        response = requests.get(url)
        time = datetime.now().strftime("%b_%d_%Y_%H_%M_%S")

        if not os.path.exists("../result_images"):
            os.makedirs("../result_images")

        with open(f"../result_images/sample_image_{time}.png", "wb") as file:
            file.write(response.content)
