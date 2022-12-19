example.out:
	gcc example.c -o example.out
example: example.c
	gcc example.c -o example
files := hello.txt hi.txt
read_file: ${files}
	cat ${files} > data.txt
all: one
one:
	echo $@

# Outputs the target name
# $@
# Outputs all prerequisites
# $^
# Outputs all prerequisites newer than the target
# $?
content = "hello:\n\ttouch inside_file"
content += "\n\t@echo \"---MAKEFILE CONTENTS---\""
override content = "hello"
export temp=HELLO
# The @ symbol will help to not output command in the terminal
all: greet=hello
all:
	@echo "---MAKEFILE CONTENTS---"
	echo $$HOME
	echo ${temp}
	echo $(content) > Makefile-01
	echo $(greet)
	$(MAKE)
clean:
	rm Makefile-01
flag =ok
all:
ifeq ($(flag), ok)
	echo "flag equals ok"
else
	echo "nahi"
endif

blank=
all:
ifeq ($(strip($(blank))),)
	echo "blank is empty"
else
	echo "blank is not empty"
endif

# ifdef does not expand the variable values it just checks if the variable is defined at all

hello =
flag = $(hello)

all:
ifdef flag
	echo "flag is defined"
endif
ifndef hello
	echo "hello is not defined"
endif

message := Hello World
result := $(foreach word,$(message),$(word)!)
all:
	@echo $(result)
