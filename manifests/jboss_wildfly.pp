class javatools::jboss_wildfly {
	archive { 'jboss-wildfly-8.1.0':
		ensure 	=> present,
		url 	=> 'http://download.jboss.org/wildfly/8.1.0.Final/wildfly-8.1.0.Final.tar.gz',
		target 	=> '/opt/jboss-wildfly',
		timeout => 600,
		checksum => false
	}->
	file { '/opt/jboss-wildfly/current':
		ensure => 'link',
		target => '/opt/jboss-wildfly/wildfly-8.1.0.Final',
		require => Archive['jboss-wildfly-8.1.0']
	}
}
