class javatools::sts {
	archive { 'sts-3.4.0':
		ensure 		 => present,
		url 		 => 'http://download.springsource.com/release/STS/3.6.0/dist/e4.4/spring-tool-suite-3.6.0.RELEASE-e4.4-linux-gtk-x86_64.tar.gz',
		target 		 => '/opt/springsource',
		strip_components => 1,
		timeout 	 => 600,
		checksum 	 => false
	}->
	file { '/home/dev/Desktop/sts.desktop' :
                ensure  => present,
                source  => 'puppet:///modules/javatools/sts.desktop',
                mode    => 'a+rx,u+w',
                owner   => 'dev',
                group   => 'dev'
        }

}
