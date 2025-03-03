.PHONY: vpn-work
.SILENT: vpn-work
vpn-work:
	sudo openvpn --config adv.ovpn --up /usr/bin/update-systemd-resolved --down /usr/bin/update-systemd-resolved --script-security 2 --auth-user-pass vpn.auth.txt

.PHONY: normal-locale
.SILENT: normal-locale
normal-locale:
	sudo bash ~/scripts/set_normal_locale.sh
