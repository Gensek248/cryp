        _____                  _        _____               _
       / ____|                | |      |  __ \             | |
      | |     _ __ _   _ _ __ | |_ ___ | |  | |_ __ ___  __| | __ _  ___
      | |    | '__| | | | '_ \| __/ _ \| |  | | '__/ _ \/ _` |/ _` |/ _ \
      | |____| |  | |_| | |_) | || (_) | |__| | | |  __/ (_| | (_| |  __/
       \_____|_|   \__, | .__/ \__\___/|_____/|_|  \___|\__,_|\__, |\___|
                    __/ | |                                    __/ |
                   |___/|_|                                   |___/

OVERVIEW

  CryptoDredge is a simple in use and highly optimized cryptocurrency mining
  software. It takes full advantage of modern NVIDIA graphics cards through the
  use of unique optimization techniques. We have also devoted great attention to
  stable power consumption. These benefits, along with the very small developer
  fee, make our product one of the best publicly available miners.

FEATURES

  Developer fee is 1%

SUPPORTED ALGORITHMS

  Allium
  Blake (2s)
  CryptoLightV7    (Aeon)
  CryptoNightFast  (Masari)
  CryptoNightHeavy
  CryptoNightV7    (Monero)
  Lbk3
  Lyra2REv2
  Lyra2z
  NeoScrypt
  PHI1612
  Phi2
  Skein
  Skunkhash
  Stellite
  Tribus

QUICKSTART

  The current version of CryptoDredge is a (portable) console application.
  Unpack the downloaded archive and edit one of the sample .bat/.sh files or
  provide the necessary command line arguments.

  Example:

    CryptoDredge -a <ALGO> -o stratum+tcp://<POOL> -u <WALLET_ADDRESS> -p <OPTIONS>


COMMAND-LINE ARGUMENTS

  -v, --version       Print version information
  -a, --algo          Specify algorithm to use
                      allium
                      blake2s
                      cryptolightv7 or aeon
                      cryptonightfast or masari
                      cryptonightheavy
                      cryptonightv7 or monero
                      lbk3
                      lyra2v2
                      lyra2v2-old (see the "Lyra2REv2 Issues" item)
                      lyra2z
                      neoscrypt
                      phi
                      phi2
                      skein
                      skunk
                      stellite
                      tribus
  -d, --device        List of comma-separated device IDs to use for mining.
                      IDs are numbered 0,1...,N - 1
  -h, --help          Print help information
  -i, --intensity     Mining intensity (0 - 6) (default: 6)
  -o, --url           URL of mining pool
  -p, --pass          Password/Options for mining pool
  -u, --user          Username for mining pool
      --log           Log output to file
      --no-color      Force color off
      --no-watchdog   Force watchdog off
      --cpu-priority  Set process priority in the range 0 (low) to 5 (high)
                      (default: 3)
      --api-type      Specify API type to use
                      ccminer-tcp (TCP)
                      ccminer-ws (WebSocket)
                      off
                      (default: ccminer-tcp)
  -b, --api-bind      IP:port for the miner API, 0 disabled
                      (default: 127.0.0.1:4068)
  -r, --retries       N number of times to retry if a network call fails,
                      0 retry indefinitely (default: 0)
  -R, --retry-pause   N time to pause between retries, in seconds (default: 15)
      --timeout       N network timeout, in seconds (default: 30)
  -c, --config        JSON configuration file to use (default: config.json)

SYSTEM REQUIREMENTS

  * NVIDIA GPUs with Compute Capability 5.0 or above
  * Latest GeForce driver
  * 2 GB RAM (4 GB recommended). Some algorithms such as NeoScrypt require the
    virtual memory (swap file) with the same size as all of the GPU's memory.
  * Internet connection

  Windows

    * Windows 7/8.1/10 (64-bit versions)
    * Visual C++ Redistributable for Visual Studio 2015:
      https://www.microsoft.com/en-US/download/details.aspx?id=48145

  Linux

    * Ubuntu 14.04+, Debian 8+ (64-bit versions)
    * Package libc-ares2. Installing libc-ares2 package is as easy as running
      the following command on terminal: apt-get install libc-ares2

TROUBLESHOOTING

  1. Antivirus Software Reports

    CryptoDredge is not a piece of malicious software. You may try to add an
    exception in antivirus software you use.

  2. Rejected Shares

    There are many reasons for rejected shares. The primary reasons are:

      * high network latency
      * overloaded mining server
      * aggressive graphics card overclocking

  3. Watchdog

    If you are using a third-party watchdog, you can disable the built-in
    watchdog by using --no-watchdog option.

    Example:

      CryptoDredge -a lyra2v2-old -o stratum+tcp://<POOL> -u <WALLET_ADDRESS> --no-watchdog

  4. Lyra2REv2 Issues

    In case if you have issues with the current implementation of Lyra2REv2
    (lyra2v2), you might want to try lyra2v2-old.

    Example:

      CryptoDredge -a lyra2v2-old -o stratum+tcp://<POOL> -u <WALLET_ADDRESS>

  5. Several Instances After a While

    It seems that you are using an own restart mechanism of CryptoDredge
    (see the "Watchdog" item).

CONTACT

  If you have problems, questions, ideas or suggestions, please contact us
  by posting to cryptodredge@gmail.com

WEB SITE

  Visit the CryptoDredge web site for the latest news and downloads:

        https://cryptodredge.org/
