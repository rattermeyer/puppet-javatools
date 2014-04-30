class javatools::sts {
	archive { 'sts-3.4.0':
		ensure 	=> present,
		url 	=> 'http://download.springsource.com/release/STS/3.4.0/dist/e4.3/spring-tool-suite-3.4.0.RELEASE-e4.3.1-linux-gtk-x86_64.tar.gz',
		target 	=> '/opt/springsource',
		timeout => 600,
		checksum => false
	}
	file { '/home/dev/Desktop/sts.desktop' :
                ensure  => present,
                source  => 'puppet:///modules/javatools/sts.desktop',
                mode    => 'a+rx,u+w',
                owner   => 'dev',
                group   => 'dev'
        }

}
