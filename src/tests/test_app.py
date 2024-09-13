# tests/test_app.py

import pytest
from sample_python_app.app import sample_function

def test_sample_function():
    result = sample_function()
    assert result == "Hello, World!"
