# := -> Instant Evaluation
# = -> Lazily evaluated when we actually call variable


exampleout:
	gcc example.c -o example.out
example: example.c
	gcc example.c -o example
files := hello.txt hi.txt
read_file: 
	${files}
	cat ${files} > data.txt
all: 
	one
one:
	echo $@

# Outputs the target name
# $@
# Outputs all prerequisites
# $^
# Outputs all prerequisites newer than the target
# $?
content = "hello:\n\ttouch inside_file"
content ?= "hlo:\n\ttosuch inside_file"
content += "\n\t@echo \"---MAKEFILE CONTENTS---\""
override content = "hello"
# Ignored as override hai upar wale me
content = "hehe"
export temp=HELLO
# The @ symbol will help to not output command in the terminal
all4: 
	greet=hello

all3:
	@echo "---MAKEFILE CONTENTS---"
	echo $$HOME
	echo ${temp}
	echo $(content) > Makefile-01
	echo $(greet)
	$(MAKE)
clean:
	rm Makefile-01
flag =ok
all1:
ifeq ($(flag), ok)
	echo "flag equals ok"
else
	echo "nahi"
endif

blank=
all2:
ifeq ($(strip($(blank))),)
	echo "blank is empty"
else
	echo "blank is not empty"
endif

# ifdef does not expand the variable values it just checks if the variable is defined at all

hello =
flag = $(hello)

all5:
ifdef flag
	echo "flag is defined"
endif
ifndef hello
	echo "hello is not defined"
endif

message := Hello World
result := $(foreach word,$(message),$(word)!)
all11:
	@echo $(result)
