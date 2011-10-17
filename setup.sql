; Refer to email with the subject : Calendars and Events Plugins (Documentation)


CREATE TABLE IF NOT EXISTS `calendars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(155) DEFAULT NULL,
  `description` text,
  `timezone_id` int(11) DEFAULT NULL,
  `location` text,
  `owner_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;



CREATE TABLE IF NOT EXISTS `calendar_feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calendar_id` int(11) NOT NULL,
  `timezone_id` int(11) DEFAULT NULL COMMENT 'belongsTo Enumeration',
  `name` varchar(155) DEFAULT NULL,
  `description` text,
  `url` varchar(255) NOT NULL,
  `is_showing` tinyint(1) NOT NULL DEFAULT '1',
  `edit_users` text COMMENT 'comma separated list of users that can edit, if you want whole roles, then use ACL',
  `detail_users` text COMMENT 'comma separated list of users that can view all details, if you want whole user roles then use ACL',
  `view_users` text COMMENT 'comma separated list of users that can view free or busy detail only, if you want whole user roles then use ACL',
  `color` varchar(10) DEFAULT NULL COMMENT 'a color code for calendar to use during display',
  `conditions` text COMMENT 'an ini formatted list of conditional limiters, like : assignee_id = 28, 2339, 283  user_id = 828,38,39',
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;