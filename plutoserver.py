def setup_plutoserver():
  return {
    "command": ["julia", "-Jprecompile.so", "-e", 'import Pluto; Pluto.run("0.0.0.0", {port}; configuration=Pluto.ServerConfiguration(launch_browser=false), security=Pluto.ServerSecurity(false))'],
    "timeout": 60,
    "launcher_entry": {
        "title": "Pluto.jl",
    },
  }