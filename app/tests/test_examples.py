"""
This is a simple tests file
"""


def test_sum():
    """Testing a sum of two numbers"""
    val_1 = 4
    val_2 = 3
    res = 7
    assert val_1 + val_2 == res


def test_strings_equal():
    """Testing that two strings are equal"""
    string_1 = 'string'
    string_2 = 'string'
    assert string_1 == string_2
