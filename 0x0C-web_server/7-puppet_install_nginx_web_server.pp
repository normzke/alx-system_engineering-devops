# Install nginx package
package { 'nginx':
  ensure => installed,
}

# Ensure nginx service is running and enabled
service { 'nginx':
  ensure     => running,
  enable     => true,
  require    => Package['nginx'],
}

# Create the custom index page
file { '/var/www/html/index.nginx-debian.html':
  ensure  => file,
  content => "<html>\n  <head>\n    <title>Welcome to nginx!</title>\n  </head>\n  <body>\n    <h1>Hello World!</h1>\n  </body>\n</html>\n",
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Configure nginx default site with redirect
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => @(END),
    server {
        listen 80 default_server;
        listen [::]:80 default_server;

        root /var/www/html;
        index index.nginx-debian.html;

        server_name _;

        location / {
            try_files $uri $uri/ =404;
        }

        location /redirect_me {
            return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
        }
    }
    | END
  require => Package['nginx'],
  notify  => Service['nginx'],
} 