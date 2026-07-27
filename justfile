# Justfiles are a slightly nicer alternative to makefiles, specifically for the cross platform stuff...
set shell := ["bash", "-cu"]

export TIMEFORMAT := "Took: %Rs"

#!/bin/bash
shebang := '/usr/bin/env bash'
os := os()

system_python    := if os_family() == "windows" { "py.exe" } else { "python3" }
default_compiler := if os == "windows" { 'clang' } else { 'gcc' }
default_config   := 'Release'
default_target   := 'johm_io'
venv_dir         := ".venv"
python_dir       := if os == "windows" { venv_dir + "/Scripts/" } else { venv_dir + "/bin/" }
python_bin       := if os == "windows" { "python.exe" } else { "python3" }
python           := if path_exists(venv_dir) == "true" { python_dir + python_bin } else { python_bin }
pip_bin          := python_dir + if os == "windows" { "pip.exe" } else { "pip" }
pip              := if path_exists(venv_dir) == "true" { pip_bin } else { pip_bin }

os_build := if os == "windows" { "./nob.exe" } else { "./nob" }
os_exe   := if os == "windows" { "./build/bin/enjohm.exe" } else { "./build/bin/enjohm" }

default:
    @just -l
    echo {{pip}}

venv:
    @echo to venv, source .venv/bin/activate.fish

# Project related info + python info
python_info:
    @echo "Operating System  : {{ os }}"
    @echo "Shell             : ${SHELL}"
    @if test -e {{ venv_dir }}; then                     \
        echo "Project Python Dir: {{ python_dir }}"; \
        echo "Project Python Bin: {{ python }}" ;    \
        echo "Project Venv Dir  : {{ venv_dir }}" ;  \
    else                                               \
        echo "Python Bin        : {{ python }}" ;    \
    fi

python_setup: python_info
   @if test ! -e {{python_dir}}; then              \
      echo "Venv does not exist, creating .venv!"; \
      {{system_python}} -m venv {{venv_dir}};      \
    else                                           \
      echo "";                                     \
      echo "Venv exists!";                         \
   fi
   @echo "Installing packages, please wait..."
   @{{pip}} install --no-cache-dir -r requirements.txt # 1>/dev/null
   @echo "Installation complete!"
   -@printf %s%s "Project Python Ver: " `{{python}} --version`

