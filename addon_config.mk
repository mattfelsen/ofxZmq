meta:
	ADDON_NAME = ofxZmq
	ADDON_DESCRIPTION = OF wrapper ZeroMQ distributed messaging library
	ADDON_AUTHOR = Satoru Higa
	ADDON_TAGS = "zmq" "zero message queue" "zeromq" "distributed messaging"
	ADDON_URL = https://github.com/satoruhiga/ofxZmq

vs:
	# Prevent the .dll from being linked against. The .lib file will
	# automatically be set up for linking by the project generator by
	# parsing the directory structure on the filesystem
	ADDON_LIBS_EXCLUDE = libzmq-v120-mt-4_0_4.dll

	# Copy the dll into the bin folder
	ADDON_DLLS_TO_COPY = libs/zmq/lib/vs/x64/libzmq-v120-mt-4_0_4.dll
