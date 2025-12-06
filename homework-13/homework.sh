#!/bin/bash


function k_pop(){
	sudo groupadd blackpink
	sudo useradd jenny
	sudo useradd rose
	sudo useradd lisa
	sudo useradd jisoo


	sudo usermod -aG blackpink jenny
	sudo usermod -aG blackpink rose
	sudo usermod -aG blackpink lisa
	sudo usermod -aG blackpink jisoo
}


k_pop
