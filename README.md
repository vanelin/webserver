# requirements
## Installing netcat
netcat is a powerful networking utility tool. Its purpose is reading and writing data across the network, through TCP or UDP.

## Installing netcat in Debian Based Linux
To install netcat on Debian based Linux (such as Ubuntu), we’ll use the apt-get command:

```bash
$ apt-get install -y netcat
```

## Installing ncat in RHEL Based Linux
For RHEL based Linux (such as CentOS) users, we’ll install the ncat program instead of the netcat program. ncat is similar to netcat, except it offers more features than the latter. Despite the differences, examples in this article are compatible with both.

Let’s install the ncat program:

```bash
$ yum install epel-release && yum install -y nc
```
Similar to installing netcat in Debian based Linux, an nc symlink will be created that points to ncat.
For brevity, in the examples that follow, we’ll use nc instead of netcat or ncat when running the command.


### NetCat (nc) as a single-line webserver.
This command will run http static server, available at http://localhost:8000.

```shell
$ while true; do echo -e "HTTP/1.1 200 OK\r\n\r\n<h1>$(hostname) is live</h1>$(date)" | nc -vl -p 8000 -q 1; done
```
