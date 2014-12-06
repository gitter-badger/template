#!/bin/sh

type python > /dev/null 2>&1
if [ $? -eq 0 ]
then
	python -m py_compile $FILE > /dev/null
fi
