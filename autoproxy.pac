  function FindProxyForURL(url, host) {
  if (isPlainHostName(host) || dnsDomainIs(host, "er.svcs.verizon.com") ||
      dnsDomainIs(host, "ocp1.magellan.svcs.verizon.com") ||
      dnsDomainIs(host, "ocp2.magellan.svcs.verizon.com") ||
      dnsDomainIs(host, "platformsvcs.magellan.svcs.verizon.com") ||
      host.match(/10\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/)) {
    return "SOCKS5 localhost:3142";
  } else {
    return "DIRECT";
  }
  }
