class javatools {
        class { '::java' :
                distribution => 'jdk'
        }
	require java
}
