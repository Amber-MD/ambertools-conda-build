#!/bin/sh

conda build recipe

# there is a .amberrc file in current folder
cat > .amberrc <<EOF
Name = Hai
Institution = Nguyen
City =  hello
State or Province = hello
Country = there
EOF

conda install `conda build --output recipe` --force

# there is no .amberrc, require enter by yourself
rm .amberrc

# SKIP_REGISTRATION
export SKIP_REGISTRATION=True
conda install `conda build --output recipe` --force

unset SKIP_REGISTRATION
conda install `conda build --output recipe` --force