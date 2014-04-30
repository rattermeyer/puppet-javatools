class javatools::apache_maven {
	archive { 'apache-maven-3.1.1':
		ensure 	=> present,
		url 	=> 'http://archive.apache.org/dist/maven/binaries/apache-maven-3.1.1-bin.tar.gz',
		target 	=> '/opt/apache-maven',
		checksum => false
	}

	file { '/opt/apache-maven/current':
		ensure => 'link',
		target => '/opt/apache-maven/apache-maven-3.1.1',
		require => Archive['apache-maven-3.1.1']
	}
}
