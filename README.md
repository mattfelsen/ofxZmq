## Setup

Kind of hacky, but I got this working by..

- Linking against the static .lib
  - Linker > General > Additional Library Directories > Add `..\..\..\addons\ofxZmq\libs\zmq\lib\vs\x64`
  - Linker > Input > Additional Dependencies > Add `libzmq-v120-mt-4_0_4.lib`
- Copying the .dll to the bin/ folder
  - Seems redundant! Won't compile if you link against the .dll!
- **Notes**:
  - I could only get this compiling in Release mode, not Debug! Probably because the precompiled lib doesn't contain debug symbols? Only tested on x64
  - If you use the OF projectGenerator it will add both the .dll and .lib files to your Linker > Input section. You only want the .lib file in there!
