# tests/test_app.py

import unittest
from sample_python_app import app

class TestApp(unittest.TestCase):

    def test_sample(self):
        result = app.sample_function()
        self.assertEqual(result, 'Hello, World!')

if __name__ == '__main__':
    unittest.main()

