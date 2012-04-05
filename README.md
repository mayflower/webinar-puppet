# Mayflower Puppet Webinar

These are the examples used in the puppet webinar by Franz Pletz.

## Usage

First don't forget to init/update the git submodules:

    $ git submodule update --init

The Ubuntu Precise Beta base box is unfortunately not available publicly, but
the manifests should work at least on any recent Debian-based distribution
such as Ubuntu. You can download base boxes from http://vagrantbox.es/ if you
don't want to build one yourself.

Add your base box with:

    $ vagrant box add mybasebox myurl

Next, change the base box name in the Vagrant file from "precise" to your
specified name.

Now start the VM with:

    $ vagrant up

See Vagrantfile for paths.

## License

See LICENSE or http://sam.zoy.org/wtfpl/.
