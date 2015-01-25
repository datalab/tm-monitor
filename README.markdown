# tm-monitor

OS X's Time Machine is great. We love it, but its scheduling and monitoring capabilities are tacky and we hate them. tm-monitor allows you to schedule a Time Machine backup once every 24 hours at your desired time. In addition, it will monitor your backups, and email you if the machine has not backed up in a interval set by you.

**It is important to note the this script requires OS X 10.10 (Yosemite)**

## Usage

It is pretty easy to use. See `tm-monitor --help` for more information, but you can setup your user defined settings with the command:

	tm-monitor --setup

If you want to test your configuration, you can run the command:

	tm-monitor --test

Once you are satisfied and you want to enable your scheduling, run the following command to enable:

	tm-monitor --install

## Installation

To install or update the script, you can run the automated installer with the following command:

    bash <(curl -Ls http://git.io/qb8uxA)

## License

This project is released under an MIT license, which pretty-much means you can do whatever you want with it. See attached LICENSE file for more information.