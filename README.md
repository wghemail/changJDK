# changJDK
Win chang JDK version
need install scoop and instal sudo,openjdk from scoop

    scoop install openjdk8-redhat
    scoop install openjdk11
    scoop install openjdk17

    cd ~/scoop/apps
    git clone https://github.com/wghemail/changJDK.git

    修改适合自己的jdkc.bat
    用户环境变量
        PATH，删除openjdk相关，添加%JAVA_HOME%\bin,C:\Users\USERNAME\scoop\apps\changJDK
    系统环境变量
        classpath = .;%JAVA_HOME%\lib;%JAVA_HOME%\lib\tools.jar
