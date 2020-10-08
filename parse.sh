#!/bin/bash

grep -oE "https?://[A-Za-z0-9/.%_-]+" README.md | wget -P download -i -
