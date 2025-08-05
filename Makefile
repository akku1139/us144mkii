obj-m += snd-usb-usx2y-mkii.o
snd-usb-usx2y-mkii-y := usx2y_mkii.o usx2y_mkii_pcm.o usx2y_mkii_playback.o usx2y_mkii_capture.o usx2y_mkii_midi.o usx2y_mkii_controls.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
