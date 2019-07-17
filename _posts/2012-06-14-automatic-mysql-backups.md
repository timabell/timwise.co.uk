\--- layout: post title: automatic mysql backups date: '2012-06-14T15:10:00.000Z' author: Tim Abell tags: - howto - mysql - linux modified\_time: '2012-06-14T15:12:25.991Z' blogger\_id: tag:blogger.com,1999:blog-5082828566240519947.post-7356368576752162435 blogger\_orig\_url: https://timwise.blogspot.com/2012/06/automatic-mysql-backups.html --- On a debian server with mediawiki installed and running with a local mysql.  
  
`root@myserver:~# apt-get install automysqlbackup  
  
root@myserver:~# crontab -e  
  
# m  h  dom mon dow   command  
  5  4  *   *   *     automysqlbackup  
  
  
root@myserver:~# automysqlbackup  
root@myserver:~# cd /var/lib/automysqlbackup/  
root@myserver:/var/lib/automysqlbackup# find .  
.  
./weekly  
./weekly/wikidb  
./weekly/information_schema  
./daily  
./daily/wikidb  
./daily/wikidb/wikidb_2012-06-14_16h03m.Thursday.sql.gz  
./daily/information_schema  
./daily/information_schema/information_schema_2012-06-14_16h03m.Thursday.sql.gz  
./monthly`  
  
Result! No longer need to write a custom cron script each time.  
  

[![](http://farm8.staticflickr.com/7226/7255107648_929530d9e0_n.jpg)](http://www.flickr.com/photos/tim_abell/7255107648/)

  
Project homepage: [http://sourceforge.net/projects/automysqlbackup/](http://sourceforge.net/projects/automysqlbackup/)