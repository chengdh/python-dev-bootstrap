class openerp {
    package { 
      ["libxml2","libxml2-dev","libxslt2","libxslt1-dev","postgresql-server-dev-all","libldap2-dev"]:
        ensure => ["installed"],
        require => Exec['apt-update']    
    }


    exec {
      "pychart":
      command => "/usr/bin/sudo pip install http://download.gna.org/pychart/PyChart-1.39.tar.gz",
      require => Package["python-dev", "python-pip"]
    }
 
    exec {
      "pytz":
      command => "/usr/bin/sudo pip install pytz",
      require => Package["python-dev", "python-pip"]
    }
    exec {
      "docutils":
      command => "/usr/bin/sudo pip install docutils",
      require => Package["python-dev", "python-pip"]
    }
    exec {
      "feedparser":
      command => "/usr/bin/sudo pip install feedparser",
      require => Package["python-dev", "python-pip"]
    }
    exec {
      "gdata":
      command => "/usr/bin/sudo pip install gdata",
      require => Package["python-dev", "python-pip"]
    }

    exec {
      "Jinja2":
      command => "/usr/bin/sudo pip install Jinja2",
      require => Package["python-dev", "python-pip"]
    }

    exec {
      "lxml":
      command => "/usr/bin/sudo pip install lxml",
      require => Package["python-dev", "python-pip"]
    }

    exec {
      "mako":
      command => "/usr/bin/sudo pip install mako",
      require => Package["python-dev", "python-pip"]
    }
    exec {
      "mock":
      command => "/usr/bin/sudo pip install mock",
      require => Package["python-dev", "python-pip"]
    }

    exec {
      "PIL":
      command => "/usr/bin/sudo pip install PIL",
      require => Package["python-dev", "python-pip"]
    }

    exec {
      "psutil":
      command => "/usr/bin/sudo pip install psutil",
      require => Package["python-dev", "python-pip"]
    }
    exec {
      "psycopg2":
      command => "/usr/bin/sudo pip install psycopg2",
      require => Package["python-dev", "python-pip"]
    }

    exec {
      "python-dateutil":
      command => "/usr/bin/sudo pip install python-dateutil",
      require => Package["python-dev", "python-pip"]
    }
    exec {
      "python-ldap":
      command => "/usr/bin/sudo pip install python-ldap",
      require => Package["python-dev", "python-pip"]
    }
    exec {
      "python-openid":
      command => "/usr/bin/sudo pip install python-openid",
      require => Package["python-dev", "python-pip"]
    }

    exec {
      "pywebdav":
      command => "/usr/bin/sudo pip install pywebdav",
      require => Package["python-dev", "python-pip"]
    }
    exec {
      "pyyaml":
      command => "/usr/bin/sudo pip install pyyaml",
      require => Package["python-dev", "python-pip"]
    }

    exec {
      "reportlab":
      command => "/usr/bin/sudo pip install reportlab",
      require => Package["python-dev", "python-pip"]
    }

    exec {
      "simplejson":
      command => "/usr/bin/sudo pip install simplejson",
      require => Package["python-dev", "python-pip"]
    }

    exec {
      "unittest2":
      command => "/usr/bin/sudo pip install unittest2",
      require => Package["python-dev", "python-pip"]
    }
    exec {
      "vatnumber":
      command => "/usr/bin/sudo pip install vatnumber",
      require => Package["python-dev", "python-pip"]
    }
    exec {
      "vobject":
      command => "/usr/bin/sudo pip install vobject",
      require => Package["python-dev", "python-pip"]
    }

    exec {
      "werkzeug":
      command => "/usr/bin/sudo pip install werkzeug",
      require => Package["python-dev", "python-pip"]
    }
    exec {
      "xlwt":
      command => "/usr/bin/sudo pip install xlwt",
      require => Package["python-dev", "python-pip"]
    }
    exec {
      "gunicorn":
      command => "/usr/bin/sudo pip install gunicorn",
      require => Package["python-dev", "python-pip"]
    }
}
