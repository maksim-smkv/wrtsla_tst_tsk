import asyncio


class AsyncWait:
    def __init__(self):
        self.tasks = []
        self.ioloop = asyncio.get_event_loop()

    def wait(self, delay):
        self.tasks.append(self.ioloop.create_task(self._wait(delay)))

    async def _wait(self, delay):
        await asyncio.sleep(int(delay))

    def run_loop(self):
        self.ioloop.run_until_complete(asyncio.wait(self.tasks))
        self.ioloop.close()
