class apt_update {
    exec { "aptGetUpdate":
        command => "sudo apt-get update",
        path => ["/bin", "/usr/bin"]
    }
}

class othertools {
    package { "curl":
        ensure => present,
        require => Exec["aptGetUpdate"]
    }
}

#include apt_update
#include othertools