FROM pierrezemb/gostatic
# The dot '.' refers to the current directory of the build context
COPY . /srv/http/
CMD ["-port","8080","-https-promote", "-enable-logging"]