import os
import sys
from subprocess import call, check_output

commit_message = check_output('git log --format=%B |head -1', shell=True).decode()

if commit_message.startswith('SKIP BUILD'):
    print(commit_message)
    sys.exit(0)
else:
    command = "bash scripts/install_miniconda.sh && bash build.sh"
    call(command, shell=True)