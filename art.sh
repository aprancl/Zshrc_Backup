#!/bin/bash

num_diff_artworks=3
random_number=$((RANDOM % $num_diff_artworks))

if [[ $random_number == 0 ]]; then
	
	echo ""
	echo "███████████████████████████████"
	echo "██▀▄─██▄─▄▄─█▄─▄▄─█▄─▄███▄─▄▄─█"
	echo "██─▀─███─▄▄▄██─▄▄▄██─██▀██─▄█▀█"
	echo "▀▄▄█▄▄█▄▄▄███▄▄▄███▄▄▄▄▄██▄▄▄▄▀"
	echo ""

elif [[ $random_number == 1 ]]; then
	echo ""
	echo "▄▀█ █▀█ █▀█ █░░ █▀▀"
	echo "█▀█ █▀▀ █▀▀ █▄▄ ██▄"
	ehco ""

elif [[ $random_number == 2 ]]; then
	echo ""
	echo "╔═══╗─────╔╗"
	echo "║╔═╗║─────║║"
	echo "║║─║╠══╦══╣║╔══╗"
	echo "║╚═╝║╔╗║╔╗║║║║═╣"
	echo "║╔═╗║╚╝║╚╝║╚╣║═╣"
	echo "╚╝─╚╣╔═╣╔═╩═╩══╝"
	echo "────║║─║║"
	echo "────╚╝─╚╝"
	echo ""
fi
