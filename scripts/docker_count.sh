#!/bin/zsh

printf '🐳 Docker containers count' && docker ps | awk 'NR>1{print $0}' | wc -l
