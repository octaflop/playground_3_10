from playground.examples import main

def test_main():
    content = "go south"
    result = main(content)
    # expected = ("hello", "world")
    expected = "south"
    assert result == expected

def test_main_invalid():
    content = "go smarch"
    result = main(content)
    expected = None
    assert result == expected

def test_main_zork():
    content = "go zork"
    result = main(content, "zork")
    assert result == "go zork"
    no_result = main(content, "z")
    assert result == None


def test_main_invalid_blank():
    content = ""
    result = main(content)
    expected = None
    assert result == expected
