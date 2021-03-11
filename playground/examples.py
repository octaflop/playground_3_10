def main():
    # command = input("Go ahead and start typing for a match...")
    command = """
    open door
    close
    close blinds

    tear straw back
    🤠
    """
    match command.split():
        case [action, obj]:
            import ipdb; ipdb.set_trace()
            print(f"{action}.{obj}")
