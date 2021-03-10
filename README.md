# playground_3_10

A playground of Python 3.10

To run, get your docker installed with docker-compose and then run
- `docker-compose up -d --buld && docker-compose run sandbox_app`

You should be in a python 3.10 terminal. You can verify your python version with `sys.version_info`:

```python
import sys
vi = sys.version_info
print(f"{vi.major}.{vi.minor}")
```

Which ought to spit out:

# `3.10`

Now that you're up and running, we can try out the [PEP-636 Tutorial](https://www.python.org/dev/peps/pep-0636/)
