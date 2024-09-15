# tests/test_app.py

from sample_python_app.app import sample_function

def test_sample_function():
    assert sample_function() == "Hello, World!"
