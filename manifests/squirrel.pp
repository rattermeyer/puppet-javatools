class javatools::squirrel {
	archive { 'squirrel-3.5.2':
		ensure 	=> present,
		url 	=> 'http://sourceforge.net/projects/squirrel-sql/files/1-stable/3.5.2-plainzip/squirrelsql-3.5.2-optional.zip/download',
		target 	=> '/opt/squirrel',
		timeout => 600,
		checksum => false,
		extension => 'zip'
	}
	file { '/opt/squirrel/current':
		ensure => 'link',
		target => '/opt/squirrel/squirrelsql-3.5.2-optional',
		require => Archive['squirrel-3.5.2']
	}
	file { '/opt/squirrel/current/squirrel-sql.sh' :
		require => File['/opt/squirrel/current'],
		mode    => 'a+x'
	}
	file { '/home/dev/Desktop/squirrel-sql.desktop' :
                ensure  => present,
                source  => 'puppet:///modules/javatools/squirrel-sql.desktop',
                mode    => 'a+rx,u+w',
                owner   => 'dev',
                group   => 'dev'
        }


}
