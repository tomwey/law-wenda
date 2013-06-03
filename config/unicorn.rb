root = "/home/deployer/apps/law-wenda/current"
working_directory root
# pid "#{root}/tmp/pids/unicorn_law-wenda.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.law-wenda.sock"
worker_processes 2
timeout 30