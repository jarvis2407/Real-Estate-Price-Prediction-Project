<<<<<<< HEAD
=======

>>>>>>> cb2058a7352ad65a7756918b9e8539859882041a
# -*- coding: utf-8 -*-
import re
import sys

from jupyter_core.migrate import main

if __name__ == '__main__':
    sys.argv[0] = re.sub(r'(-script\.pyw?|\.exe)?$', '', sys.argv[0])
    sys.exit(main())
