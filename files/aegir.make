core = 7.x
api = 2

; this makefile fetches the latest Aegir code from git from drupal.org
; it shouldn't really change at all apart from major upgrades, where
; the branch will change
projects[drupal][type] = "core"

; chain into hostmaster from git's 3.x branch
projects[hostmaster][type] = "profile"
projects[hostmaster][download][type] = "git"
projects[hostmaster][download][url] = "http://git.drupal.org/project/hostmaster.git"
projects[hostmaster][download][branch] = "7.x-3.x"


; Drulenium requirements
projects[ctools][subdir] = "contrib"
projects[libraries][subdir] = "contrib"
projects[diff][subdir] = "contrib"

; Libraries
libraries[php-webdriver][directory_name] = "selenium_webdriver"
libraries[php-webdriver][download][type] = get
libraries[php-webdriver][download][url] = https://github.com/facebook/php-webdriver/archive/master.zip
libraries[php-webdriver][destination] = libraries

; Drulenium module
projects[drulenium][version] = "1.0-beta22"
projects[drulenium][subdir] = "contrib"

; Drulenium module
projects[hosting_drulenium][version] = "3.0-alpha2"
projects[hosting_drulenium][subdir] = "contrib"

; add versions
