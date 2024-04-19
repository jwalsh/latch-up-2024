from pyhdl_if import *

@sv_task
def my_python_task(a: int, b: int) -> int:
    return a + b

@sv_task
def my_python_task_with_delay(a: int, b: int, delay: int) -> int:
    yield delay
    return a + b
