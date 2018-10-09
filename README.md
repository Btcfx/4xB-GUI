# 4xbitcoin GUI

Copyright (c) 2017-2018, The 4xbitcoin Developers.   
Portions Copyright (c) 2012-2017, The CryptoNote Developers, The Bytecoin Developers.

# License

4xbitcoin's GUI Wallet is licensed under the "MIT License" for more info, refer to the [License](LICENSE) file.

# Download Releases
https://github.com/4xbitcoinproject/4xbitcoin-gui/releases


# How to build for Ubuntu Linux

```sudo apt-get -y install build-essential libssl-dev libboost-all-dev```

```sudo apt-get -y install gcc-4.8 g++-4.8  git cmake```

```sudo apt-get install qt5-default qttools5-dev-tools```


```git clone https://github.com/4xbitcoinproject/4xbitcoin-gui```

```cd 4xbitcoin-gui```

```git submodule add -f https://github.com/4xbitcoinproject/4xbitcoin```

```cp CMakeLists_ubuntu.txt CMakeLists.txt```

```mkdir build ; cd build```

```cmake ..```

```make```

```./4xbitcoinWallet```



# How to build for Mac OS 

Install Homebrew from here: https://brew.sh/

```mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew```

Open a Terminal and type: 

```brew install qt5```

```brew install cmake```

Download a copy of the 4xbitcoin-gui source:

```cd /opt```

```git clone https://github.com/4xbitcoinproject/4xbitcoin-gui```

Enter the 4xbitcoin-gui directory:

```cd 4xbitcoin-gui```

Download the latest 4xbitcoincoin codebase:

```git submodule add -f https://github.com/4xbitcoinproject/4xbitcoin```

Use the correct CMake File

```cp CMakeLists_Mac.txt CMakeLists.txt```

Create a build directory and enter it:

```mkdir build && cd build```

Run the the cmake with your qt5 lib path:

```/opt/homebrew/bin/cmake  -DCMAKE_PREFIX_PATH:STRING='/opt/homebrew/opt/qt5/lib/cmake' ..```

Run make to build the wallet:

```make```

Fix the Links

```/opt/homebrew/opt/qt/bin/macdeployqt 4xbitcoinWallet.app/```


When the build has finished, to copy the 4xbitcoin GUi app into your Application folder type:

```cp -r 4xbitcoinWallet.app ~/Applications```

You can now run the 4xbitcoin GUI from Finder. Make sure that 4xbitcoind is running in a terminal window else the GUI will crash on startup.
