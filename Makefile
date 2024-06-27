all: gen compile
.PHONY: all 

gen:
	go generate

compile:
	go build -o firewall

clean:
	- rm ebpf_bpf*.go
	- rm ebpf_bpf*.o
	- rm firewall
