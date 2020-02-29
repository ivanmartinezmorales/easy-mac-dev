run: setup-new-dev.sh
	chmod +x setup-new-dev.sh
	cp setup-new-dev.sh run
	sudo ./run

clean: run
	rm run
