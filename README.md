# linux-c0mbine

\_VERSION=4.9.11-1

* based on 'linux-ck(-haswell)@{{\_VERSION}}"
  * `Linux d3sktop {{\_VERSION}}-c0mbine #1 SMP PREEMPT Sun Feb 12 01:30:25 CET 2017 x86_64 GNU/Linux`
* patched in vfio (ACS override and i915 VGA arbiter)
  * not in use (but everything compiled just fine)
* changed parameters to [wireguard](https://www.wireguard.io/install)'s requirements
  * `wireguard, 0.0.20170115, {{\_VERSION}}-c0mbine, x86_64: installed`
* enabled f2fs on module basis
* fixed modules required by docker thanks to [check-docker.sh](https://github.com/docker/docker/blob/master/contrib/check-config.sh)

### build
(check releases or:)
`$ makepkg -Cfs`

### install
`# pacman -U linux-c0mbine-headers-{{\_VERSION}}-x86_64.pkg.tar.xz linux-c0mbine-{{\_VERSION}}-x86_64.pkg.tar.xz`

### credits / thanks
* Con Kolivas [@ckolivas](https://github.com/ckolivas) for -ck
* All the people involved in vfio-development [kernel.org](https://www.kernel.org/doc/Documentation/vfio.txt) [blog](http://vfio.blogspot.de/). AWESOME WORK FROM EACH AND EVERYBODY!
* Jason A [@zx2c4](https://www.zx2c4.com/) for `wireguard` (and `pass` btw ;))
