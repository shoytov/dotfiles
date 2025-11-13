# Universal
.PHONY: web
.SILENT: web
web:
	ping ya.ru

.PHONY: show-ports
.SILENT: show-ports
show-ports:
	sudo lsof -i -P -n | grep LISTEN

.PHONY: ip
.SILENT: ip
ip:
	curl ifconfig.co/ip && curl ifconfig.co/country

.PHONY: weather
.SILENT: weather
weather:
	curl wttr.in/Kursk

.PHONY: docker-clean
.SILENT: docker-clean
docker-clean:
	docker system prune -a -f
	docker volume prune -f

.PHONY: llm 
.SILENT: llm 
llm:
	mcphost --model ollama:qwen3 --config ~/.mcphost.json

.PHONY: summarize
.SILENT: summarize
summarize:
	mcphost --model ollama:llama3.1:8b --config ~/.mcphost.json --system-prompt ~/.prompts/summarize.md

# Linux only
.PHONY: vpn-work
.SILENT: vpn-work
vpn-work:
	sudo openvpn --config adv.ovpn --up /usr/bin/update-systemd-resolved --down /usr/bin/update-systemd-resolved --script-security 2 --auth-user-pass vpn.auth.txt

.PHONY: normal-locale
.SILENT: normal-locale
normal-locale:
	sudo bash ~/scripts/set_normal_locale.sh

# MacOS only
.PHONY: brew-update
.SILENT: brew-update
brew-update:
	brew cu --all && arch -arm64 brew update && arch -arm64 brew upgrade && arch -arm64 brew doctor && brew cleanup --prune=all

.PHONY: flush-dns
.SILENT: flush-dns
flush-dns:
	sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder

.PHONY: x-restart
.SILENT: x-restart
x-restart:
	sudo kill -9 $(pgrep WindowServer)

.PHONY: backup
.SILENT: backup
backup:
	tmutil startbackup

.PHONY: update
.SILENT: update
update:
	softwareupdate -i -a

.PHONY: bin
.SILENT: bin
bin:
	rm -rf ~/.Trash/*
