<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitd7c957e8e1e475e6ffaeffabfccee383
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitd7c957e8e1e475e6ffaeffabfccee383::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitd7c957e8e1e475e6ffaeffabfccee383::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInitd7c957e8e1e475e6ffaeffabfccee383::$classMap;

        }, null, ClassLoader::class);
    }
}