#!/usr/bin/env ruby

CHECK_CMD = "ps ax|grep 'puma: cluster worker' |grep -v auto"
RUN_PUMA = 'cd /srv/http/xxx; puma -C config/puma_production.rb'

ret = system CHECK_CMD

if not ret
  system RUN_PUMA
end
