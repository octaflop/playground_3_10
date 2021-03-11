def main(content, custom_match="zork"):
    # command = input("Go ahead and start typing for a match...")
    # command = "hello world"
    command = "go south"
    command = content
    print(command)
    match command.split():
        case["go", ("north" | "south" | "east" | "west") as direction]:
            return direction
