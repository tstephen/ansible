external_url "http://code.knowprocess.com/"
# The directory where Git repositories will be stored.
#git_data_dir "/var/opt/gitlab/git-data"

gitlab_rails['gitlab_email_from'] = "donotreply@knowprocess.com"
gitlab_rails['gitlab_support_email'] = "donotreply@knowprocess.com"


# Whether to redirect http to https.
#nginx['redirect_http_to_https'] = true
#nginx['ssl_certificate'] = "/etc/gitlab/ssl/gitlab.crt"
#nginx['ssl_certificate_key'] = "/etc/gitlab/ssl/gitlab.key"

unicorn['worker_processes'] =2
unicorn['worker_timeout'] = 90


# with 1 http commit is disabled, 
# with 2 startup is very slow, 10 is better but still slow
sidekiq['concurrency'] = 10 #25 is the default

