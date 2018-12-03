#!/bin/bash

find /tmp -size  0 -print0 |xargs -0 rm --
