Vagrant Vim Pair Programming Setup
===================================

This vagrant setup allows you to setup a quick pair programming session using vim.

**Please beware that there might be security risks using this method**


Getting started
-----------------------------------

Run vagrant and let it provision the box
```
vagrant up
```

SSH into the virtual machine
```
vagrant ssh
```

Create a GNU Screen session
```
screen -U
```

Get the virtual machine's ip adress
```
ifconfig
```
You can now tell your pairing buddy to ssh into your virtual machine with this command (using the correct ip address that you just got from `ifconfig`). The password for the 'pair' user is 'pair'.
```
ssh pair@<ip-address>
```

Tell your buddy to join your screen session by issuing this command
```
screen -x vagrant/
```

Enjoy programming together in your favorite text editor (Vim, Emacs, ...)
