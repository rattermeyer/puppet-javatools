class javatools::apache_tomcat {
	archive { 'apache-tomcat-8.0.3':
		ensure 	=> present,
		url 	=> 'http://archive.apache.org/dist/tomcat/tomcat-8/v8.0.3/bin/apache-tomcat-8.0.3.tar.gz',
		target 	=> '/opt/apache-tomcat'
	}

	file { '/opt/apache-tomcat/current':
		ensure => 'link',
		target => '/opt/apache-tomcat/apache-tomcat-8.0.3',
		require => Archive['apache-tomcat-8.0.3']
	}
}
