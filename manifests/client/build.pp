class nfs::client::build {
	include nfs::params
	if !defined(File[$nfs::params::build_dir]) {
		file { $nfs::params::build_dir:
			ensure => directory,
		}
	}

	file { $nfs::params::nfs_build_dir:
		ensure  => directory,
		purge   => true,
		recurse => true,
		notify  => Exec['rebuild-auto.master'],
                before  => Exec['rebuild-auto.master'],
	}

	
	exec { 'rebuild-auto.master':
		command     => "/bin/cat ${nfs::params::nfs_build_dir}/* > /etc/auto.master",
		refreshonly => true,
		notify      => Class['nfs::client::service'],
	}

	file { '/etc/auto.master':
                mode    => '0644',
                require => Exec['rebuild-auto.master'],
        }
        
}
