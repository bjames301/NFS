
##################################################################################
#Coments Section
#Wed Jun 22 08:16:11 EDT 2011
#Brandon James


#################################################################################
#Config Section
#
#
define nfs::server::config(
        $exportpath,
        $ipallowed,
        $perms
){ 

         file {"/etc/exports":
                content => template('nfs/exports.erb'),
                ensure  => present,
                require => Class["nfs::server::install"],
        }
}
################################################################################
