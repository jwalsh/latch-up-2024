# Makefile

all: sim layout

sim:
	cace simulate ${DESIGN} --output ${DESIGN}.json
	cace report ${DESIGN}.json --format pdf --output ${DESIGN}_datasheet.pdf

layout:  
	magic -noconsole -dnull -rcfile ${PDK_ROOT}/magic/${PDK}.magicrc ${DESIGN}.mag	
