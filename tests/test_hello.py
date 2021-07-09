from app.generated.hello import Greeting
from loguru import logger


def test_greeting():
    greeting = Greeting(message="hello")
    logger.debug(f"{greeting.message=}")
    logger.debug(f"{greeting=}")
    greeting_ser = greeting.SerializeToString()
    logger.debug(f"{greeting_ser=}")
