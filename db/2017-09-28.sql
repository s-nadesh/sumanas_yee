/*
SQLyog Ultimate v8.55 
MySQL - 5.5.5-10.1.19-MariaDB : Database - sumanas_yee
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `auth` */

DROP TABLE IF EXISTS `auth`;

CREATE TABLE `auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `source_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_auth_user` (`user_id`),
  CONSTRAINT `fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth` */

/*Table structure for table `auth_assignment` */

DROP TABLE IF EXISTS `auth_assignment`;

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `fk_user_id_auth_assignment_table` (`user_id`),
  CONSTRAINT `fk_item_name_auth_assignment_table` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id_auth_assignment_table` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_assignment` */

/*Table structure for table `auth_item` */

DROP TABLE IF EXISTS `auth_item`;

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `auth_item_type` (`type`),
  KEY `fk_auth_item_table_rule_name` (`rule_name`),
  KEY `fk_auth_item_table_group_code` (`group_code`),
  CONSTRAINT `fk_auth_item_table_group_code` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_auth_item_table_rule_name` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_item` */

insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`group_code`,`data`,`created_at`,`updated_at`) values ('/admin',3,NULL,NULL,NULL,NULL,1505536227,1505536227),('/admin/#mediafile',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/*',3,NULL,NULL,NULL,NULL,1505536227,1505536227),('/admin/block/*',3,NULL,NULL,NULL,NULL,1505743691,1505743691),('/admin/block/default/*',3,NULL,NULL,NULL,NULL,1505743691,1505743691),('/admin/block/default/bulk-delete',3,NULL,NULL,NULL,NULL,1505743691,1505743691),('/admin/block/default/create',3,NULL,NULL,NULL,NULL,1505743691,1505743691),('/admin/block/default/delete',3,NULL,NULL,NULL,NULL,1505743691,1505743691),('/admin/block/default/grid-page-size',3,NULL,NULL,NULL,NULL,1505743691,1505743691),('/admin/block/default/grid-sort',3,NULL,NULL,NULL,NULL,1505743691,1505743691),('/admin/block/default/index',3,NULL,NULL,NULL,NULL,1505743691,1505743691),('/admin/block/default/update',3,NULL,NULL,NULL,NULL,1505743691,1505743691),('/admin/comment/*',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/comment/default/*',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/comment/default/bulk-activate',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/comment/default/bulk-deactivate',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/comment/default/bulk-delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/comment/default/bulk-spam',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/comment/default/bulk-trash',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/comment/default/create',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/comment/default/delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/comment/default/grid-page-size',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/comment/default/grid-sort',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/comment/default/index',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/comment/default/toggle-attribute',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/comment/default/update',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/comment/default/view',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/default/*',3,NULL,NULL,NULL,NULL,1505536227,1505536227),('/admin/media/*',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/album/*',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/album/bulk-delete',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/album/create',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/album/delete',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/album/grid-page-size',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/album/grid-sort',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/album/index',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/album/toggle-attribute',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/album/update',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/category/*',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/category/bulk-delete',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/category/create',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/category/delete',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/category/grid-page-size',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/category/grid-sort',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/category/index',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/category/toggle-attribute',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/category/update',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/default/*',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/default/index',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/default/settings',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/manage/delete',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/manage/index',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/manage/info',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/manage/resize',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/manage/update',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/manage/upload',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/media/manage/uploader',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/menu/*',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/default/*',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/default/bulk-delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/default/create',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/default/delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/default/grid-page-size',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/default/grid-sort',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/default/index',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/default/update',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/default/view',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/link/*',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/link/bulk-delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/link/create',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/link/delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/link/grid-page-size',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/link/grid-sort',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/link/index',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/link/update',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/menu/link/view',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/page/*',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/page/default/*',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/page/default/bulk-activate',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/page/default/bulk-deactivate',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/page/default/bulk-delete',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/page/default/create',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/page/default/delete',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/page/default/grid-page-size',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/page/default/grid-sort',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/page/default/index',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/page/default/toggle-attribute',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/page/default/update',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/page/default/view',3,NULL,NULL,NULL,NULL,1505536229,1505536229),('/admin/post/*',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/category/*',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/category/bulk-delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/category/create',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/category/delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/category/grid-page-size',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/category/grid-sort',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/category/index',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/category/toggle-attribute',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/category/update',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/default/*',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/default/bulk-activate',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/default/bulk-deactivate',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/default/bulk-delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/default/create',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/default/delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/default/grid-page-size',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/default/grid-sort',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/default/index',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/default/toggle-attribute',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/default/update',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/default/view',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/tag/bulk-delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/tag/create',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/tag/delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/tag/grid-page-size',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/tag/grid-sort',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/tag/index',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/tag/toggle-attribute',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/post/tag/update',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/settings/*',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/settings/cache/flush',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/settings/default/*',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/settings/default/index',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/settings/reading/index',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/site/index',3,NULL,NULL,NULL,NULL,1505536227,1505536227),('/admin/translation/*',3,NULL,NULL,NULL,NULL,1505536230,1505536230),('/admin/translation/default/*',3,NULL,NULL,NULL,NULL,1505536230,1505536230),('/admin/translation/default/index',3,NULL,NULL,NULL,NULL,1505536230,1505536230),('/admin/translation/source/*',3,NULL,NULL,NULL,NULL,1505536230,1505536230),('/admin/translation/source/create',3,NULL,NULL,NULL,NULL,1505536230,1505536230),('/admin/translation/source/delete',3,NULL,NULL,NULL,NULL,1505536230,1505536230),('/admin/translation/source/update',3,NULL,NULL,NULL,NULL,1505536230,1505536230),('/admin/user/*',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/default/*',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/default/bulk-activate',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/default/bulk-deactivate',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/default/bulk-delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/default/change-password',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/default/create',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/default/delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/default/grid-page-size',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/default/grid-sort',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/default/index',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/default/toggle-attribute',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/default/update',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission-groups/*',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission-groups/bulk-delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission-groups/create',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission-groups/delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission-groups/grid-page-size',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission-groups/grid-sort',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission-groups/index',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission-groups/update',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission/*',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission/bulk-delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission/create',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission/delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission/grid-page-size',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission/grid-sort',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission/index',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission/refresh-routes',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission/set-child-permissions',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission/set-child-routes',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission/update',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/permission/view',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/role/*',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/role/bulk-delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/role/create',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/role/delete',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/role/grid-page-size',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/role/grid-sort',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/role/index',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/role/set-child-permissions',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/role/set-child-roles',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/role/update',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/role/view',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/user-permission/*',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/user-permission/set',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/user-permission/set-roles',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/visit-log/*',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/visit-log/grid-page-size',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/visit-log/grid-sort',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/visit-log/index',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('/admin/user/visit-log/view',3,NULL,NULL,NULL,NULL,1505536228,1505536228),('administrator',1,'Administrator',NULL,NULL,NULL,1505536227,1505536227),('assignRolesToUsers',2,'Assign Roles To Users',NULL,'userManagement',NULL,1505536228,1505536228),('author',1,'Author',NULL,NULL,NULL,1505536227,1505536227),('bindUserToIp',2,'Bind User To IP',NULL,'userManagement',NULL,1505536228,1505536228),('changeGeneralSettings',2,'Change General Settings',NULL,'settings',NULL,1505536228,1505536228),('changeOwnPassword',2,'Change Own Password',NULL,'userCommonPermissions',NULL,1505536227,1505536227),('changeReadingSettings',2,'Change Reading Settings',NULL,'settings',NULL,1505536228,1505536228),('changeUserPassword',2,'Change User Password',NULL,'userManagement',NULL,1505536228,1505536228),('commonPermission',2,'Common Permission',NULL,'userCommonPermissions',NULL,1505536227,1505536227),('createBlocks',2,'Create Blocks',NULL,'blockManagement',NULL,1505743691,1505743691),('createComments',2,'Create Comments',NULL,'commentManagement',NULL,1505536228,1505536228),('createMediaAlbums',2,'Create Media Albums',NULL,'mediaManagement',NULL,1505536229,1505536229),('createMediaCategories',2,'Create Media Categories',NULL,'mediaManagement',NULL,1505536229,1505536229),('createMenuLinks',2,'Create Menu Links',NULL,'menuManagement',NULL,1505536228,1505536228),('createMenus',2,'Create Menus',NULL,'menuManagement',NULL,1505536228,1505536228),('createPages',2,'Create Pages',NULL,'pageManagement',NULL,1505536229,1505536229),('createPostCategories',2,'Create Post Categories',NULL,'postManagement',NULL,1505536228,1505536228),('createPosts',2,'Create Posts',NULL,'postManagement',NULL,1505536228,1505536228),('createPostTags',2,'Create Post Tags',NULL,'postManagement',NULL,1505536228,1505536228),('createSourceMessages',2,'Create Source Messages',NULL,'translations',NULL,1505536230,1505536230),('createUsers',2,'Create Users',NULL,'userManagement',NULL,1505536228,1505536228),('deleteBlocks',2,'Delete Blocks',NULL,'blockManagement',NULL,1505743691,1505743691),('deleteComments',2,'Delete Comments',NULL,'commentManagement',NULL,1505536228,1505536228),('deleteMedia',2,'Delete Media',NULL,'mediaManagement',NULL,1505536229,1505536229),('deleteMediaAlbums',2,'Delete Media Albums',NULL,'mediaManagement',NULL,1505536229,1505536229),('deleteMediaCategories',2,'Delete Media Categories',NULL,'mediaManagement',NULL,1505536229,1505536229),('deleteMenuLinks',2,'Delete Menu Links',NULL,'menuManagement',NULL,1505536228,1505536228),('deleteMenus',2,'Delete Menus',NULL,'menuManagement',NULL,1505536228,1505536228),('deletePages',2,'Delete Pages',NULL,'pageManagement',NULL,1505536229,1505536229),('deletePostCategories',2,'Delete Post Categories',NULL,'postManagement',NULL,1505536228,1505536228),('deletePosts',2,'Delete Posts',NULL,'postManagement',NULL,1505536228,1505536228),('deletePostTags',2,'Delete Post Tags',NULL,'postManagement',NULL,1505536228,1505536228),('deleteSourceMessages',2,'Delete Source Messages',NULL,'translations',NULL,1505536230,1505536230),('deleteUsers',2,'Delete Users',NULL,'userManagement',NULL,1505536228,1505536228),('editBlocks',2,'Edit Blocks',NULL,'blockManagement',NULL,1505743691,1505743691),('editComments',2,'Edit Comments',NULL,'commentManagement',NULL,1505536228,1505536228),('editMedia',2,'Edit Media',NULL,'mediaManagement',NULL,1505536229,1505536229),('editMediaAlbums',2,'Edit Media Albums',NULL,'mediaManagement',NULL,1505536229,1505536229),('editMediaCategories',2,'Edit Media Categories',NULL,'mediaManagement',NULL,1505536229,1505536229),('editMediaSettings',2,'Edit Media Settings',NULL,'mediaManagement',NULL,1505536229,1505536229),('editMenuLinks',2,'Edit Menu Links',NULL,'menuManagement',NULL,1505536228,1505536228),('editMenus',2,'Edit Menus',NULL,'menuManagement',NULL,1505536228,1505536228),('editPages',2,'Edit Pages',NULL,'pageManagement',NULL,1505536229,1505536229),('editPostCategories',2,'Edit Post Categories',NULL,'postManagement',NULL,1505536228,1505536228),('editPosts',2,'Edit Posts',NULL,'postManagement',NULL,1505536228,1505536228),('editPostTags',2,'Edit Post Tags',NULL,'postManagement',NULL,1505536228,1505536228),('editUserEmail',2,'Edit User Email',NULL,'userManagement',NULL,1505536228,1505536228),('editUsers',2,'Edit Users',NULL,'userManagement',NULL,1505536228,1505536228),('flushCache',2,'Flush Cache',NULL,'settings',NULL,1505536228,1505536228),('fullBlockAccess',2,'Full Block Access',NULL,'blockManagement',NULL,1505743691,1505743691),('fullMediaAccess',2,'Full Media Access',NULL,'mediaManagement',NULL,1505536229,1505536229),('fullMediaAlbumAccess',2,'Full Media Albums Access',NULL,'mediaManagement',NULL,1505536229,1505536229),('fullMediaCategoryAccess',2,'Full Media Categories Access',NULL,'mediaManagement',NULL,1505536229,1505536229),('fullMenuAccess',2,'Full Menu Access',NULL,'menuManagement',NULL,1505536228,1505536228),('fullMenuLinkAccess',2,'Full Menu Links Access',NULL,'menuManagement',NULL,1505536228,1505536228),('fullPageAccess',2,'Full Page Access',NULL,'pageManagement',NULL,1505536229,1505536229),('fullPostAccess',2,'Full Post Access',NULL,'postManagement',NULL,1505536228,1505536228),('fullPostCategoryAccess',2,'Full Post Categories Access',NULL,'postManagement',NULL,1505536228,1505536228),('fullPostTagAccess',2,'Full Post Tags Access',NULL,'postManagement',NULL,1505536228,1505536228),('manageRolesAndPermissions',2,'Manage Roles And Permissions',NULL,'userManagement',NULL,1505536228,1505536228),('moderator',1,'Moderator',NULL,NULL,NULL,1505536227,1505536227),('updateImmutableSourceMessages',2,'Update Immutable Source Messages',NULL,'translations',NULL,1505536230,1505536230),('updateSourceMessages',2,'Update Source Messages',NULL,'translations',NULL,1505536230,1505536230),('updateTranslations',2,'Update Message Translations',NULL,'translations',NULL,1505536230,1505536230),('uploadMedia',2,'Upload Media',NULL,'mediaManagement',NULL,1505536229,1505536229),('user',1,'User',NULL,NULL,NULL,1505536227,1505536227),('viewBlocks',2,'View Blocks',NULL,'blockManagement',NULL,1505743691,1505743691),('viewComments',2,'View Comments',NULL,'commentManagement',NULL,1505536228,1505536228),('viewDashboard',2,'View Dashboard',NULL,'dashboard',NULL,1505536227,1505536227),('viewMedia',2,'View Media',NULL,'mediaManagement',NULL,1505536229,1505536229),('viewMediaAlbums',2,'View Media Albums',NULL,'mediaManagement',NULL,1505536229,1505536229),('viewMediaCategories',2,'View Media Categories',NULL,'mediaManagement',NULL,1505536229,1505536229),('viewMenuLinks',2,'View Menu Links',NULL,'menuManagement',NULL,1505536228,1505536228),('viewMenus',2,'View Menus',NULL,'menuManagement',NULL,1505536228,1505536228),('viewPages',2,'View Pages',NULL,'pageManagement',NULL,1505536229,1505536229),('viewPostCategories',2,'View Posts',NULL,'postManagement',NULL,1505536228,1505536228),('viewPosts',2,'View Posts',NULL,'postManagement',NULL,1505536228,1505536228),('viewPostTags',2,'View Tags',NULL,'postManagement',NULL,1505536228,1505536228),('viewRegistrationIp',2,'View Registration IP',NULL,'userManagement',NULL,1505536228,1505536228),('viewRolesAndPermissions',2,'View Roles And Permissions',NULL,'userManagement',NULL,1505536228,1505536228),('viewTranslations',2,'View Message Translations',NULL,'translations',NULL,1505536230,1505536230),('viewUserEmail',2,'View User Email',NULL,'userManagement',NULL,1505536228,1505536228),('viewUserRoles',2,'View User Roles',NULL,'userManagement',NULL,1505536228,1505536228),('viewUsers',2,'View Users',NULL,'userManagement',NULL,1505536228,1505536228),('viewVisitLog',2,'View Visit Logs',NULL,'userManagement',NULL,1505536228,1505536228);

/*Table structure for table `auth_item_child` */

DROP TABLE IF EXISTS `auth_item_child`;

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `fk_child_auth_item_child_table` (`child`),
  CONSTRAINT `fk_child_auth_item_child_table` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_parent_auth_item_child_table` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_item_child` */

insert  into `auth_item_child`(`parent`,`child`) values ('administrator','assignRolesToUsers'),('administrator','author'),('administrator','bindUserToIp'),('administrator','changeGeneralSettings'),('administrator','changeReadingSettings'),('administrator','changeUserPassword'),('administrator','createBlocks'),('administrator','createMenuLinks'),('administrator','createMenus'),('administrator','createPages'),('administrator','createSourceMessages'),('administrator','createUsers'),('administrator','deleteBlocks'),('administrator','deleteMedia'),('administrator','deleteMediaAlbums'),('administrator','deleteMediaCategories'),('administrator','deleteMenuLinks'),('administrator','deleteMenus'),('administrator','deletePages'),('administrator','deletePostCategories'),('administrator','deletePostTags'),('administrator','deleteSourceMessages'),('administrator','deleteUsers'),('administrator','editBlocks'),('administrator','editMenuLinks'),('administrator','editMenus'),('administrator','editPages'),('administrator','editUserEmail'),('administrator','editUsers'),('administrator','flushCache'),('administrator','fullBlockAccess'),('administrator','fullMenuAccess'),('administrator','fullMenuLinkAccess'),('administrator','fullPageAccess'),('administrator','manageRolesAndPermissions'),('administrator','moderator'),('administrator','updateSourceMessages'),('administrator','updateTranslations'),('administrator','user'),('administrator','viewBlocks'),('administrator','viewMenuLinks'),('administrator','viewMenus'),('administrator','viewPages'),('administrator','viewRegistrationIp'),('administrator','viewRolesAndPermissions'),('administrator','viewTranslations'),('administrator','viewUserRoles'),('administrator','viewVisitLog'),('assignRolesToUsers','/admin/user/user-permission/set'),('assignRolesToUsers','/admin/user/user-permission/set-roles'),('assignRolesToUsers','viewUserRoles'),('assignRolesToUsers','viewUsers'),('author','createMediaAlbums'),('author','createPosts'),('author','editPosts'),('author','uploadMedia'),('author','user'),('author','viewDashboard'),('author','viewPostCategories'),('author','viewPosts'),('author','viewPostTags'),('changeGeneralSettings','/admin/settings/default/index'),('changeReadingSettings','/admin/settings/reading/index'),('changeUserPassword','/admin/user/default/change-password'),('changeUserPassword','viewUsers'),('createBlocks','/admin/block/default/create'),('createBlocks','viewBlocks'),('createComments','/admin/comment/default/create'),('createComments','viewComments'),('createMediaAlbums','/admin/media/album/create'),('createMediaAlbums','viewMediaAlbums'),('createMediaCategories','/admin/media/category/create'),('createMediaCategories','viewMediaCategories'),('createMenuLinks','/admin/menu/link/create'),('createMenuLinks','viewMenuLinks'),('createMenus','/admin/menu/default/create'),('createMenus','viewMenus'),('createPages','/admin/page/default/create'),('createPages','viewPages'),('createPostCategories','/admin/post/category/create'),('createPostCategories','viewPosts'),('createPosts','/admin/post/default/create'),('createPosts','viewPosts'),('createPostTags','/admin/post/tag/create'),('createPostTags','viewPostTags'),('createSourceMessages','/admin/translation/source/create'),('createSourceMessages','updateSourceMessages'),('createSourceMessages','viewTranslations'),('createUsers','/admin/user/default/create'),('createUsers','viewUsers'),('deleteBlocks','/admin/block/default/bulk-delete'),('deleteBlocks','/admin/block/default/delete'),('deleteBlocks','viewBlocks'),('deleteComments','/admin/comment/default/bulk-delete'),('deleteComments','/admin/comment/default/delete'),('deleteComments','viewComments'),('deleteMedia','/admin/media/manage/delete'),('deleteMedia','viewMedia'),('deleteMediaAlbums','/admin/media/album/bulk-delete'),('deleteMediaAlbums','/admin/media/album/delete'),('deleteMediaAlbums','viewMediaAlbums'),('deleteMediaCategories','/admin/media/category/bulk-delete'),('deleteMediaCategories','/admin/media/category/delete'),('deleteMediaCategories','viewMediaCategories'),('deleteMenuLinks','/admin/menu/link/bulk-delete'),('deleteMenuLinks','/admin/menu/link/delete'),('deleteMenuLinks','viewMenuLinks'),('deleteMenus','/admin/menu/default/bulk-delete'),('deleteMenus','/admin/menu/default/delete'),('deleteMenus','viewMenus'),('deletePages','/admin/page/default/bulk-delete'),('deletePages','/admin/page/default/delete'),('deletePages','viewPages'),('deletePostCategories','/admin/post/category/bulk-delete'),('deletePostCategories','/admin/post/category/delete'),('deletePostCategories','viewPosts'),('deletePosts','/admin/post/default/bulk-delete'),('deletePosts','/admin/post/default/delete'),('deletePosts','viewPosts'),('deletePostTags','/admin/post/tag/bulk-delete'),('deletePostTags','/admin/post/tag/delete'),('deletePostTags','viewPostTags'),('deleteSourceMessages','/admin/translation/source/delete'),('deleteSourceMessages','updateSourceMessages'),('deleteSourceMessages','viewTranslations'),('deleteUsers','/admin/user/default/bulk-delete'),('deleteUsers','/admin/user/default/delete'),('deleteUsers','viewUsers'),('editBlocks','/admin/block/default/update'),('editBlocks','viewBlocks'),('editComments','/admin/comment/default/bulk-activate'),('editComments','/admin/comment/default/bulk-deactivate'),('editComments','/admin/comment/default/bulk-spam'),('editComments','/admin/comment/default/bulk-trash'),('editComments','/admin/comment/default/toggle-attribute'),('editComments','/admin/comment/default/update'),('editComments','viewComments'),('editMedia','/admin/media/manage/update'),('editMedia','viewMedia'),('editMediaAlbums','/admin/media/album/toggle-attribute'),('editMediaAlbums','/admin/media/album/update'),('editMediaAlbums','viewMediaAlbums'),('editMediaCategories','/admin/media/category/toggle-attribute'),('editMediaCategories','/admin/media/category/update'),('editMediaCategories','viewMediaCategories'),('editMediaSettings','/admin/media/default/settings'),('editMediaSettings','/admin/media/manage/resize'),('editMediaSettings','viewMedia'),('editMenuLinks','/admin/menu/link/update'),('editMenuLinks','viewMenuLinks'),('editMenus','/admin/menu/default/update'),('editMenus','viewMenus'),('editPages','/admin/page/default/bulk-activate'),('editPages','/admin/page/default/bulk-deactivate'),('editPages','/admin/page/default/toggle-attribute'),('editPages','/admin/page/default/update'),('editPages','viewPages'),('editPostCategories','/admin/post/category/toggle-attribute'),('editPostCategories','/admin/post/category/update'),('editPostCategories','viewPosts'),('editPosts','/admin/post/default/bulk-activate'),('editPosts','/admin/post/default/bulk-deactivate'),('editPosts','/admin/post/default/toggle-attribute'),('editPosts','/admin/post/default/update'),('editPosts','viewPosts'),('editPostTags','/admin/post/tag/toggle-attribute'),('editPostTags','/admin/post/tag/update'),('editPostTags','viewPostTags'),('editUserEmail','viewUserEmail'),('editUsers','/admin/user/default/bulk-activate'),('editUsers','/admin/user/default/bulk-deactivate'),('editUsers','/admin/user/default/toggle-attribute'),('editUsers','/admin/user/default/update'),('editUsers','viewUsers'),('flushCache','/admin/settings/cache/flush'),('fullMediaAccess','viewMedia'),('fullMenuAccess','viewMenus'),('fullMenuLinkAccess','viewMenuLinks'),('manageRolesAndPermissions','/admin/user/permission-groups/bulk-delete'),('manageRolesAndPermissions','/admin/user/permission-groups/create'),('manageRolesAndPermissions','/admin/user/permission-groups/delete'),('manageRolesAndPermissions','/admin/user/permission-groups/update'),('manageRolesAndPermissions','/admin/user/permission/bulk-delete'),('manageRolesAndPermissions','/admin/user/permission/create'),('manageRolesAndPermissions','/admin/user/permission/delete'),('manageRolesAndPermissions','/admin/user/permission/refresh-routes'),('manageRolesAndPermissions','/admin/user/permission/set-child-permissions'),('manageRolesAndPermissions','/admin/user/permission/set-child-routes'),('manageRolesAndPermissions','/admin/user/permission/update'),('manageRolesAndPermissions','/admin/user/permission/view'),('manageRolesAndPermissions','/admin/user/role/bulk-delete'),('manageRolesAndPermissions','/admin/user/role/create'),('manageRolesAndPermissions','/admin/user/role/delete'),('manageRolesAndPermissions','/admin/user/role/set-child-permissions'),('manageRolesAndPermissions','/admin/user/role/set-child-roles'),('manageRolesAndPermissions','/admin/user/role/update'),('manageRolesAndPermissions','/admin/user/role/view'),('manageRolesAndPermissions','editUsers'),('manageRolesAndPermissions','viewRolesAndPermissions'),('manageRolesAndPermissions','viewUsers'),('moderator','author'),('moderator','createComments'),('moderator','createMediaCategories'),('moderator','createPostCategories'),('moderator','createPostTags'),('moderator','deleteComments'),('moderator','deletePosts'),('moderator','editComments'),('moderator','editMediaAlbums'),('moderator','editMediaCategories'),('moderator','editPostCategories'),('moderator','editPostTags'),('moderator','fullMediaAccess'),('moderator','fullMediaAlbumAccess'),('moderator','fullMediaCategoryAccess'),('moderator','fullPostAccess'),('moderator','fullPostCategoryAccess'),('moderator','fullPostTagAccess'),('moderator','user'),('moderator','viewComments'),('moderator','viewUserEmail'),('moderator','viewUsers'),('updateImmutableSourceMessages','updateSourceMessages'),('updateImmutableSourceMessages','viewTranslations'),('updateSourceMessages','/admin/translation/source/update'),('updateSourceMessages','updateTranslations'),('updateSourceMessages','viewTranslations'),('updateTranslations','viewTranslations'),('uploadMedia','/admin/media/manage/upload'),('uploadMedia','/admin/media/manage/uploader'),('uploadMedia','editMedia'),('uploadMedia','viewMedia'),('user','changeOwnPassword'),('user','commonPermission'),('viewBlocks','/admin/block/default/grid-page-size'),('viewBlocks','/admin/block/default/grid-sort'),('viewBlocks','/admin/block/default/index'),('viewComments','/admin/comment/default/grid-page-size'),('viewComments','/admin/comment/default/grid-sort'),('viewComments','/admin/comment/default/index'),('viewComments','/admin/comment/default/view'),('viewDashboard','/admin'),('viewDashboard','/admin/site/index'),('viewMedia','/admin/#mediafile'),('viewMedia','/admin/media/default/index'),('viewMedia','/admin/media/manage/index'),('viewMedia','/admin/media/manage/info'),('viewMediaAlbums','/admin/media/album/grid-page-size'),('viewMediaAlbums','/admin/media/album/grid-sort'),('viewMediaAlbums','/admin/media/album/index'),('viewMediaCategories','/admin/media/category/grid-page-size'),('viewMediaCategories','/admin/media/category/grid-sort'),('viewMediaCategories','/admin/media/category/index'),('viewMenuLinks','/admin/menu/link/grid-page-size'),('viewMenuLinks','/admin/menu/link/grid-sort'),('viewMenuLinks','/admin/menu/link/index'),('viewMenuLinks','/admin/menu/link/view'),('viewMenuLinks','viewMenus'),('viewMenus','/admin/menu/default/grid-page-size'),('viewMenus','/admin/menu/default/grid-sort'),('viewMenus','/admin/menu/default/index'),('viewMenus','/admin/menu/default/view'),('viewPages','/admin/page/default/grid-page-size'),('viewPages','/admin/page/default/grid-sort'),('viewPages','/admin/page/default/index'),('viewPages','/admin/page/default/view'),('viewPostCategories','/admin/post/category/grid-page-size'),('viewPostCategories','/admin/post/category/grid-sort'),('viewPostCategories','/admin/post/category/index'),('viewPostCategories','viewPosts'),('viewPosts','/admin/post/default/grid-page-size'),('viewPosts','/admin/post/default/grid-sort'),('viewPosts','/admin/post/default/index'),('viewPosts','/admin/post/default/view'),('viewPostTags','/admin/post/tag/grid-page-size'),('viewPostTags','/admin/post/tag/grid-sort'),('viewPostTags','/admin/post/tag/index'),('viewPostTags','viewPosts'),('viewRolesAndPermissions','/admin/user/permission-groups/grid-page-size'),('viewRolesAndPermissions','/admin/user/permission-groups/grid-sort'),('viewRolesAndPermissions','/admin/user/permission-groups/index'),('viewRolesAndPermissions','/admin/user/permission/grid-page-size'),('viewRolesAndPermissions','/admin/user/permission/grid-sort'),('viewRolesAndPermissions','/admin/user/permission/index'),('viewRolesAndPermissions','/admin/user/role/grid-page-size'),('viewRolesAndPermissions','/admin/user/role/grid-sort'),('viewRolesAndPermissions','/admin/user/role/index'),('viewRolesAndPermissions','viewUserRoles'),('viewRolesAndPermissions','viewUsers'),('viewTranslations','/admin/translation/default/index'),('viewUsers','/admin/user/default/grid-page-size'),('viewUsers','/admin/user/default/grid-sort'),('viewUsers','/admin/user/default/index'),('viewVisitLog','/admin/user/visit-log/grid-page-size'),('viewVisitLog','/admin/user/visit-log/grid-sort'),('viewVisitLog','/admin/user/visit-log/index'),('viewVisitLog','/admin/user/visit-log/view'),('viewVisitLog','viewUsers');

/*Table structure for table `auth_item_group` */

DROP TABLE IF EXISTS `auth_item_group`;

CREATE TABLE `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_item_group` */

insert  into `auth_item_group`(`code`,`name`,`created_at`,`updated_at`) values ('blockManagement','Block Management',1505743691,1505743691),('commentManagement','Comment Management',1505536228,1505536228),('dashboard','Dashboard',1505536227,1505536227),('mediaManagement','Media Management',1505536229,1505536229),('menuManagement','Menu Management',1505536228,1505536228),('pageManagement','Page Management',1505536229,1505536229),('postManagement','Post Management',1505536228,1505536228),('settings','Settings',1505536228,1505536228),('translations','Translations',1505536230,1505536230),('userCommonPermissions','Common Permissions',1505536227,1505536227),('userManagement','User Management',1505536228,1505536228);

/*Table structure for table `auth_rule` */

DROP TABLE IF EXISTS `auth_rule`;

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_rule` */

/*Table structure for table `block` */

DROP TABLE IF EXISTS `block`;

CREATE TABLE `block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `block_slug` (`slug`),
  KEY `fk_block_created_by` (`created_by`),
  KEY `fk_block_updated_by` (`updated_by`),
  CONSTRAINT `fk_block_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_block_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `block` */

insert  into `block`(`id`,`slug`,`created_by`,`created_at`,`updated_at`,`updated_by`) values (1,'get_in_touch',1,1505819614,1506316607,1),(2,'mobile-app-development',1,1506344333,1506344333,1),(3,'ui-ux-design',1,1506344549,1506344549,1),(4,'digital-marketing',1,1506344623,1506344696,1),(5,'website-development',1,1506344753,1506344768,1),(6,'dataanalytics',1,1506344886,1506402357,1);

/*Table structure for table `block_lang` */

DROP TABLE IF EXISTS `block_lang`;

CREATE TABLE `block_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `block_lang_post_id` (`block_id`),
  KEY `block_lang_language` (`language`),
  CONSTRAINT `fk_block_lang` FOREIGN KEY (`block_id`) REFERENCES `block` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `block_lang` */

insert  into `block_lang`(`id`,`block_id`,`language`,`content`) values (1,1,'en-US','<div class=\"lets lets1\">\r\n    <div class=\"container-fluid\">\r\n        <h4> LETS GET STARTED </h4>\r\n        <p> <span> We help your business grow. We mean it. </span> </p>\r\n        <p> <a href=\"contact-sumanas\" class=\"btn request-quotebtn\"> <i class=\"fa fa-paper-plane\" aria-hidden=\"true\"></i> Get In Touch </a> </p>\r\n    </div>\r\n</div>'),(2,2,'en-US','<div class=\"col-xs-12 col-sm-4 col-lg-4 col-lg-4  sevice-part sevice-part1 \">\r\n                    <h3> MOBILE App Development </h3>\r\n                    <p> Find the finest of services in mobile application development, compatible with IOS, Android and windows. All that you wanted is at the tap of your finger</p>\r\n                    <p> <a href=\"mobile-app-development\" class=\"readmore1\"> Read More... </a> </p>\r\n                </div>'),(3,3,'en-US','<div class=\"sevice-part2\">\r\n                            <h3> Web Design </h3>\r\n                            <p> Your one stop-shop for great website designs, exotic logos, and awesome Graphic Designs. Ask for more and you will get more! </p>\r\n                            <p> <a href=\"ui-ux-design\" class=\"readmore1\"> Read More... </a> </p>\r\n                        </div>'),(4,4,'en-US','<div class=\"sevice-part3\">\r\n                            <h3> Digital\r\n                                Marketing </h3>\r\n                            <p> This is the platformthat\'s makes your business catch the spotlight! We help your brand get the much needed attention and we make sure it is here to stay! </p>\r\n                            <p> <a href=\"digital-marketing\" class=\"readmore1\"> Read More... </a> </p>\r\n                        </div>'),(5,5,'en-US','<div class=\"sevice-part4\">\r\n                            <h3>Web \r\n                                Development</h3>\r\n                            <p> We build custom applications that are tailor-made to fit your requirements. Have an idea? Share it with us and see it come to life with our technical expertise. </p>\r\n                            <p> <a href=\"website-development\" class=\"readmore1\"> Read More... </a> </p>\r\n                        </div>'),(6,6,'en-US','<div class=\"sevice-part5\">\r\n                            <h3> DATA Analytics </h3>\r\n                            <p>Stay in pace with the ever-changing user behavior and tap it to your business advantage. Our unmatched data analytic services show you the real big picture.</p>\r\n                            <p> <a href=\"dataanalytics\" class=\"readmore1\"> Read More... </a> </p>\r\n                        </div>');

/*Table structure for table `clients` */

DROP TABLE IF EXISTS `clients`;

CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `thumbnail` varchar(255) DEFAULT NULL,
  `visible` int(11) NOT NULL DEFAULT '1' COMMENT '0-hidden,1-visible',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_clients_created_by` (`created_by`),
  KEY `fk_clients_updated_by` (`updated_by`),
  CONSTRAINT `fk_clients_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_clients_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `clients` */

insert  into `clients`(`id`,`slug`,`title`,`description`,`thumbnail`,`visible`,`created_at`,`updated_at`,`created_by`,`updated_by`) values (1,'daniel-murphy','Daniel Murphy','Sumanas Technologies have an experienced team of developers and designers.  We have used them for a range of services including laravel application development, API and middleware development, front end UX design and development, Wordpress and more!','/uploads/2017/09/daniel-400x300.jpg',1,1506433261,1506433261,1,1),(2,'tahir','Tahir','Great place to propel your ideas. I have always received exceptional quality of work with faster turn around.The work dedication is great, and they are always up with instant fixes! Loved working with them.','/uploads/2017/09/tahir-400x300.jpg',1,1506433298,1506433298,1,1),(3,'jessica-murphy','Jessica Murphy','As a web development company we have worked with a number of different local and overseas developers and development companies. Raj and his team are amongst the very best and have consistently provided quality work!','/uploads/2017/09/jeesica-400x300.jpg',1,1506433333,1506433349,1,1),(4,'cj-lewis','CJ lewis','I have worked with Raj on multiple projects, and I have received excellent quality work every time. Communication is always excellent, and I have never gone more than a day or two without a response. Reciprocation is always at pace.','/uploads/2017/09/client-400x300.jpg',1,1506433385,1506433385,1,1),(5,'martine-breton','Martine Breton','I have been working with Raj and his team for more than 3 years now. We have worked on several very complex projects which had strict deadlines.I am happy to say that the team has always delivered the job on time and moreimportantly with high quality and professionalism.','/uploads/2017/09/martine-breton-400x300.jpg',1,1506433447,1506490887,1,1);

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL DEFAULT '',
  `model_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL COMMENT 'null-is not a reply, int-replied comment id',
  `content` text,
  `status` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '0-pending,1-published,2-spam,3-deleted',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `user_ip` varchar(15) DEFAULT NULL,
  `super_parent_id` int(11) DEFAULT NULL COMMENT 'null-has no parent, int-1st level parent id',
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_model` (`model`),
  KEY `comment_model_id` (`model`,`model_id`),
  KEY `comment_status` (`status`),
  KEY `comment_reply` (`parent_id`),
  KEY `comment_super_parent_id` (`super_parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

/*Table structure for table `media` */

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `type` varchar(127) DEFAULT NULL,
  `url` text,
  `size` varchar(127) DEFAULT NULL,
  `thumbs` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_media_album` (`album_id`),
  KEY `fk_media_created_by` (`created_by`),
  KEY `fk_media_updated_by` (`updated_by`),
  CONSTRAINT `fk_media_album` FOREIGN KEY (`album_id`) REFERENCES `media_album` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_media_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_media_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `media` */

insert  into `media`(`id`,`album_id`,`filename`,`type`,`url`,`size`,`thumbs`,`created_at`,`updated_at`,`created_by`,`updated_by`) values (1,NULL,'martine-breton.jpg','image/jpeg','/uploads/2017/09/martine-breton.jpg','16638','a:3:{s:5:\"small\";s:42:\"/uploads/2017/09/martine-breton-120x80.jpg\";s:6:\"medium\";s:43:\"/uploads/2017/09/martine-breton-400x300.jpg\";s:5:\"large\";s:43:\"/uploads/2017/09/martine-breton-800x600.jpg\";}',1505823887,1505823887,1,1),(2,NULL,'client.jpg','image/jpeg','/uploads/2017/09/client.jpg','16252','a:3:{s:5:\"small\";s:34:\"/uploads/2017/09/client-120x80.jpg\";s:6:\"medium\";s:35:\"/uploads/2017/09/client-400x300.jpg\";s:5:\"large\";s:35:\"/uploads/2017/09/client-800x600.jpg\";}',1505828713,1505828715,1,1),(3,NULL,'jeesica.jpg','image/jpeg','/uploads/2017/09/jeesica.jpg','16628','a:3:{s:5:\"small\";s:35:\"/uploads/2017/09/jeesica-120x80.jpg\";s:6:\"medium\";s:36:\"/uploads/2017/09/jeesica-400x300.jpg\";s:5:\"large\";s:36:\"/uploads/2017/09/jeesica-800x600.jpg\";}',1505828824,1505828824,1,1),(4,NULL,'tahir.jpg','image/jpeg','/uploads/2017/09/tahir.jpg','11354','a:3:{s:5:\"small\";s:33:\"/uploads/2017/09/tahir-120x80.jpg\";s:6:\"medium\";s:34:\"/uploads/2017/09/tahir-400x300.jpg\";s:5:\"large\";s:34:\"/uploads/2017/09/tahir-800x600.jpg\";}',1505828904,1505828904,1,1),(5,NULL,'daniel.jpg','image/jpeg','/uploads/2017/09/daniel.jpg','18059','a:3:{s:5:\"small\";s:34:\"/uploads/2017/09/daniel-120x80.jpg\";s:6:\"medium\";s:35:\"/uploads/2017/09/daniel-400x300.jpg\";s:5:\"large\";s:35:\"/uploads/2017/09/daniel-800x600.jpg\";}',1505829046,1505829046,1,1),(6,NULL,'project1.jpg','image/jpeg','/uploads/2017/09/project1.jpg','152848','a:3:{s:5:\"small\";s:36:\"/uploads/2017/09/project1-120x80.jpg\";s:6:\"medium\";s:37:\"/uploads/2017/09/project1-400x300.jpg\";s:5:\"large\";s:37:\"/uploads/2017/09/project1-800x600.jpg\";}',1506505396,1506505397,1,1),(7,NULL,'project2.jpg','image/jpeg','/uploads/2017/09/project2.jpg','208320','a:3:{s:5:\"small\";s:36:\"/uploads/2017/09/project2-120x80.jpg\";s:6:\"medium\";s:37:\"/uploads/2017/09/project2-400x300.jpg\";s:5:\"large\";s:37:\"/uploads/2017/09/project2-800x600.jpg\";}',1506505485,1506505485,1,1),(8,NULL,'project3.jpg','image/jpeg','/uploads/2017/09/project3.jpg','281949','a:3:{s:5:\"small\";s:36:\"/uploads/2017/09/project3-120x80.jpg\";s:6:\"medium\";s:37:\"/uploads/2017/09/project3-400x300.jpg\";s:5:\"large\";s:37:\"/uploads/2017/09/project3-800x600.jpg\";}',1506505493,1506505493,1,1),(9,NULL,'project4.jpg','image/jpeg','/uploads/2017/09/project4.jpg','225976','a:3:{s:5:\"small\";s:36:\"/uploads/2017/09/project4-120x80.jpg\";s:6:\"medium\";s:37:\"/uploads/2017/09/project4-400x300.jpg\";s:5:\"large\";s:37:\"/uploads/2017/09/project4-800x600.jpg\";}',1506505498,1506505499,1,1),(10,NULL,'team1.jpg','image/jpeg','/uploads/2017/09/team1.jpg','22697','a:3:{s:5:\"small\";s:33:\"/uploads/2017/09/team1-120x80.jpg\";s:6:\"medium\";s:34:\"/uploads/2017/09/team1-400x300.jpg\";s:5:\"large\";s:34:\"/uploads/2017/09/team1-800x600.jpg\";}',1506597229,1506597229,1,1),(12,NULL,'team2.jpg','image/jpeg','/uploads/2017/09/team2.jpg','22462','a:3:{s:5:\"small\";s:33:\"/uploads/2017/09/team2-120x80.jpg\";s:6:\"medium\";s:34:\"/uploads/2017/09/team2-400x300.jpg\";s:5:\"large\";s:34:\"/uploads/2017/09/team2-800x600.jpg\";}',1506597367,1506597367,1,1),(13,NULL,'team4.jpg','image/jpeg','/uploads/2017/09/team4.jpg','25872','a:3:{s:5:\"small\";s:33:\"/uploads/2017/09/team4-120x80.jpg\";s:6:\"medium\";s:34:\"/uploads/2017/09/team4-400x300.jpg\";s:5:\"large\";s:34:\"/uploads/2017/09/team4-800x600.jpg\";}',1506597385,1506597385,1,1),(14,NULL,'team5.jpg','image/jpeg','/uploads/2017/09/team5.jpg','23864','a:3:{s:5:\"small\";s:33:\"/uploads/2017/09/team5-120x80.jpg\";s:6:\"medium\";s:34:\"/uploads/2017/09/team5-400x300.jpg\";s:5:\"large\";s:34:\"/uploads/2017/09/team5-800x600.jpg\";}',1506597397,1506597397,1,1),(15,NULL,'team6.jpg','image/jpeg','/uploads/2017/09/team6.jpg','21943','a:3:{s:5:\"small\";s:33:\"/uploads/2017/09/team6-120x80.jpg\";s:6:\"medium\";s:34:\"/uploads/2017/09/team6-400x300.jpg\";s:5:\"large\";s:34:\"/uploads/2017/09/team6-800x600.jpg\";}',1506597409,1506597409,1,1),(16,NULL,'team7.jpg','image/jpeg','/uploads/2017/09/team7.jpg','28245','a:3:{s:5:\"small\";s:33:\"/uploads/2017/09/team7-120x80.jpg\";s:6:\"medium\";s:34:\"/uploads/2017/09/team7-400x300.jpg\";s:5:\"large\";s:34:\"/uploads/2017/09/team7-800x600.jpg\";}',1506597421,1506597421,1,1),(17,NULL,'team8.jpg','image/jpeg','/uploads/2017/09/team8.jpg','21088','a:3:{s:5:\"small\";s:33:\"/uploads/2017/09/team8-120x80.jpg\";s:6:\"medium\";s:34:\"/uploads/2017/09/team8-400x300.jpg\";s:5:\"large\";s:34:\"/uploads/2017/09/team8-800x600.jpg\";}',1506597455,1506597456,1,1),(18,NULL,'team9.jpg','image/jpeg','/uploads/2017/09/team9.jpg','22072','a:3:{s:5:\"small\";s:33:\"/uploads/2017/09/team9-120x80.jpg\";s:6:\"medium\";s:34:\"/uploads/2017/09/team9-400x300.jpg\";s:5:\"large\";s:34:\"/uploads/2017/09/team9-800x600.jpg\";}',1506597457,1506597457,1,1),(19,NULL,'team10.jpg','image/jpeg','/uploads/2017/09/team10.jpg','28827','a:3:{s:5:\"small\";s:34:\"/uploads/2017/09/team10-120x80.jpg\";s:6:\"medium\";s:35:\"/uploads/2017/09/team10-400x300.jpg\";s:5:\"large\";s:35:\"/uploads/2017/09/team10-800x600.jpg\";}',1506597458,1506597459,1,1),(20,NULL,'team3.jpg','image/jpeg','/uploads/2017/09/team3.jpg','21168','a:3:{s:5:\"small\";s:33:\"/uploads/2017/09/team3-120x80.jpg\";s:6:\"medium\";s:34:\"/uploads/2017/09/team3-400x300.jpg\";s:5:\"large\";s:34:\"/uploads/2017/09/team3-800x600.jpg\";}',1506597496,1506597496,1,1),(21,NULL,'team.jpg','image/jpeg','/uploads/2017/09/team.jpg','33732','a:3:{s:5:\"small\";s:32:\"/uploads/2017/09/team-120x80.jpg\";s:6:\"medium\";s:33:\"/uploads/2017/09/team-400x300.jpg\";s:5:\"large\";s:33:\"/uploads/2017/09/team-800x600.jpg\";}',1506606183,1506606183,1,1),(22,NULL,'mari.jpg','image/jpeg','/uploads/2017/09/mari.jpg','21709','a:3:{s:5:\"small\";s:32:\"/uploads/2017/09/mari-120x80.jpg\";s:6:\"medium\";s:33:\"/uploads/2017/09/mari-400x300.jpg\";s:5:\"large\";s:33:\"/uploads/2017/09/mari-800x600.jpg\";}',1506606240,1506606240,1,1);

/*Table structure for table `media_album` */

DROP TABLE IF EXISTS `media_album`;

CREATE TABLE `media_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text,
  `visible` int(11) NOT NULL DEFAULT '1' COMMENT '0-hidden,1-visible',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_album_slug` (`slug`),
  KEY `media_album_visible` (`visible`),
  KEY `fk_album_category` (`category_id`),
  KEY `fk_media_album_created_by` (`created_by`),
  KEY `fk_media_album_updated_by` (`updated_by`),
  CONSTRAINT `fk_album_category` FOREIGN KEY (`category_id`) REFERENCES `media_category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_media_album_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_media_album_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `media_album` */

/*Table structure for table `media_album_lang` */

DROP TABLE IF EXISTS `media_album_lang`;

CREATE TABLE `media_album_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_album_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `media_album_lang_language` (`language`),
  KEY `fk_media_album_lang` (`media_album_id`),
  CONSTRAINT `fk_media_album_lang` FOREIGN KEY (`media_album_id`) REFERENCES `media_album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `media_album_lang` */

/*Table structure for table `media_category` */

DROP TABLE IF EXISTS `media_category`;

CREATE TABLE `media_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `visible` int(11) NOT NULL DEFAULT '1' COMMENT '0-hidden,1-visible',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_category_slug` (`slug`),
  KEY `media_category_visible` (`visible`),
  KEY `fk_media_category_created_by` (`created_by`),
  KEY `fk_media_category_updated_by` (`updated_by`),
  CONSTRAINT `fk_media_category_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_media_category_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `media_category` */

/*Table structure for table `media_category_lang` */

DROP TABLE IF EXISTS `media_category_lang`;

CREATE TABLE `media_category_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_category_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `media_category_lang_language` (`language`),
  KEY `fk_media_category_lang` (`media_category_id`),
  CONSTRAINT `fk_media_category_lang` FOREIGN KEY (`media_category_id`) REFERENCES `media_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `media_category_lang` */

/*Table structure for table `media_lang` */

DROP TABLE IF EXISTS `media_lang`;

CREATE TABLE `media_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` int(11) DEFAULT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `media_lang_language` (`language`),
  KEY `fk_media_lang` (`media_id`),
  CONSTRAINT `fk_media_lang` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `media_lang` */

insert  into `media_lang`(`id`,`media_id`,`language`,`title`,`alt`,`description`) values (1,1,'en-US','martine-breton.jpg','martine-breton.jpg',NULL),(2,2,'en-US','client.jpg','client.jpg',NULL),(3,3,'en-US','jeesica.jpg','jeesica.jpg',NULL),(4,4,'en-US','tahir.jpg','tahir.jpg',NULL),(5,5,'en-US','daniel.jpg','daniel.jpg',NULL),(6,6,'en-US','project1.jpg','project1.jpg',NULL),(7,7,'en-US','project2.jpg','project2.jpg',NULL),(8,8,'en-US','project3.jpg','project3.jpg',NULL),(9,9,'en-US','project4.jpg','project4.jpg',NULL),(10,10,'en-US','team1.jpg','team1.jpg',NULL),(12,12,'en-US','team2.jpg','team2.jpg',NULL),(13,13,'en-US','team4.jpg','team4.jpg',NULL),(14,14,'en-US','team5.jpg','team5.jpg',NULL),(15,15,'en-US','team6.jpg','team6.jpg',NULL),(16,16,'en-US','team7.jpg','team7.jpg',NULL),(17,17,'en-US','team8.jpg','team8.jpg',NULL),(18,18,'en-US','team9.jpg','team9.jpg',NULL),(19,19,'en-US','team10.jpg','team10.jpg',NULL),(20,20,'en-US','team3.jpg','team3.jpg',NULL),(21,21,'en-US','team.jpg','team.jpg',NULL),(22,22,'en-US','mari.jpg','mari.jpg',NULL);

/*Table structure for table `media_upload` */

DROP TABLE IF EXISTS `media_upload`;

CREATE TABLE `media_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` int(11) NOT NULL,
  `owner_class` varchar(255) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `media_upload_owner_class` (`owner_class`),
  KEY `media_upload_owner_id` (`owner_id`),
  KEY `fk_media_upload_media_id` (`media_id`),
  CONSTRAINT `fk_media_upload_media_id` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `media_upload` */

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_menu_created_by` (`created_by`),
  KEY `fk_menu_updated_by` (`updated_by`),
  CONSTRAINT `fk_menu_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_menu_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`id`,`created_at`,`updated_at`,`created_by`,`updated_by`) values ('admin-menu',NULL,NULL,1,NULL),('footer-main',1506337301,1506337301,1,1),('footer-platform',1506337722,1506337722,1,1),('footer-serv',1506337605,1506337605,1,1),('footer-tech',1506337522,1506337522,1,1),('main-menu',NULL,NULL,1,NULL);

/*Table structure for table `menu_lang` */

DROP TABLE IF EXISTS `menu_lang`;

CREATE TABLE `menu_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` varchar(64) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` text,
  PRIMARY KEY (`id`),
  KEY `menu_lang_post_id` (`menu_id`),
  KEY `menu_lang_language` (`language`),
  CONSTRAINT `fk_menu_lang` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `menu_lang` */

insert  into `menu_lang`(`id`,`menu_id`,`language`,`title`) values (1,'admin-menu','en-US','Control Panel Menu'),(2,'main-menu','en-US','Main Menu'),(4,'footer-main','en-US','Footer Main'),(5,'footer-tech','en-US','Footer Technologies'),(6,'footer-serv','en-US','Footer Services'),(7,'footer-platform','en-US','Footer Platform');

/*Table structure for table `menu_link` */

DROP TABLE IF EXISTS `menu_link`;

CREATE TABLE `menu_link` (
  `id` varchar(64) NOT NULL,
  `menu_id` varchar(64) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `parent_id` varchar(64) DEFAULT '',
  `image` varchar(24) DEFAULT NULL,
  `alwaysVisible` int(1) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_menu_id` (`menu_id`),
  KEY `link_parent_id` (`parent_id`),
  KEY `fk_menu_link_created_by` (`created_by`),
  KEY `fk_menu_link_updated_by` (`updated_by`),
  CONSTRAINT `fk_menu_link` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_menu_link_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_menu_link_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `menu_link` */

insert  into `menu_link`(`id`,`menu_id`,`link`,`parent_id`,`image`,`alwaysVisible`,`order`,`created_at`,`updated_at`,`created_by`,`updated_by`) values ('aboutid','footer-main','/who-we-are','','',1,999,1506337397,1506342061,1,1),('about_id','main-menu','/site/who-we-are','','',1,0,1505730974,1505730974,1,1),('app_id','main-menu','/site/mobile-app-development','serv_id','',1,5,1505731733,1505731733,1,1),('block','admin-menu','/block/default/index','','clone',0,21,NULL,NULL,1,NULL),('career_id','footer-main','/careers','','',1,999,1506337466,1506342081,1,1),('car_id','main-menu','/site/careers','','',1,15,1506062888,1506062888,1,1),('client_id','admin-menu','/clients','','',1,2,1506433152,1506433152,1,1),('clouds_id','footer-tech','/cloud','','',1,999,1506337550,1506342520,1,1),('cloud_id','main-menu','/site/cloud','tech_id','',1,12,1505736769,1505736769,1,1),('cms_id','main-menu','/site/cms','platform_id','',1,8,1505733419,1505733419,1,1),('cm_id','footer-platform','/cms','','',1,999,1506337751,1506343412,1,1),('comment','admin-menu','/comment/default/index','','comment',0,13,NULL,NULL,1,NULL),('contact','main-menu','/site/contact-sumanas','','',1,16,NULL,1505887480,1,1),('contact_id','footer-main','/contact-sumanas','','',1,999,1506337491,1506342089,1,1),('crm_id','main-menu','/site/crm','platform_id','',1,9,1505735946,1505735946,1,1),('cr_id','footer-platform','/crm','','',1,999,1506337771,1506343419,1,1),('dashboard','admin-menu','/','','th',0,0,NULL,NULL,1,NULL),('dev_id','footer-serv','/website-development','','',1,999,1506337655,1506343379,1,1),('digi_id','footer-serv','/digital-marketing','','',1,999,1506337676,1506343395,1,1),('dig_id','main-menu','/site/digital-marketing','serv_id','',1,4,1505731360,1505731360,1,1),('ecomm_id','footer-platform','/e-commerce','','',1,999,1506337793,1506343425,1,1),('ecom_id','main-menu','/site/e-commerce','platform_id','',1,10,1505736233,1505736233,1,1),('general_id','admin-menu','/general-settings','','',1,29,1506409685,1506409734,1,1),('image-settings','admin-menu','/media/default/settings','settings',NULL,0,26,NULL,NULL,1,NULL),('media','admin-menu',NULL,'','image',0,9,NULL,NULL,1,NULL),('media-album','admin-menu','/media/album/index','media',NULL,0,11,NULL,NULL,1,NULL),('media-category','admin-menu','/media/category/index','media',NULL,0,12,NULL,NULL,1,NULL),('media-media','admin-menu','/media/default/index','media',NULL,0,10,NULL,NULL,1,NULL),('menu','admin-menu','/menu/default/index','','align-justify',0,14,NULL,NULL,1,NULL),('mob_id','footer-serv','/mobile-app-development','','',1,999,1506337697,1506343388,1,1),('open_id','main-menu','/site/opensource','tech_id','',1,13,1505736978,1505736978,1,1),('page','admin-menu','/page/default/index','','file',0,1,NULL,NULL,1,NULL),('platform_id','main-menu','/site/platform','','',1,7,1505733143,1505733143,1,1),('port_id','main-menu','/site/portfolio','','',1,14,1506157940,1506157940,1,1),('post','admin-menu',NULL,'','pencil',0,5,NULL,NULL,1,NULL),('post-category','admin-menu','/post/category/index','post',NULL,0,8,NULL,NULL,1,NULL),('post-post','admin-menu','/post/default/index','post',NULL,0,6,NULL,NULL,1,NULL),('post-tag','admin-menu','/post/tag/index','post',NULL,0,7,NULL,NULL,1,NULL),('product_id','footer-main','/products','','',1,999,1506337430,1506342098,1,1),('pro_id','main-menu','/site/products','','',1,6,1505731984,1505731984,1,1),('seo','admin-menu','/seo/default/index','','line-chart',0,22,NULL,NULL,1,NULL),('serv_id','main-menu','/site/services-overview','','',1,1,1505728882,1505728882,1,1),('settings','admin-menu',NULL,'','cog',0,23,NULL,NULL,1,NULL),('settings-cache','admin-menu','/settings/cache/flush','settings',NULL,0,28,NULL,NULL,1,NULL),('settings-general','admin-menu','/settings/default/index','settings',NULL,0,24,NULL,NULL,1,NULL),('settings-reading','admin-menu','/settings/reading/index','settings',NULL,0,25,NULL,NULL,1,NULL),('settings-translations','admin-menu','/translation/default/index','settings',NULL,0,27,NULL,NULL,1,NULL),('source_id','footer-tech','/opensource','','',1,999,1506337579,1506342526,1,1),('team_id','admin-menu','/team','','',1,4,1506607744,1506607744,1,1),('tech_id','main-menu','/site/technologies','','',1,11,1505736530,1505736530,1,1),('test-page','main-menu','/site/test','about',NULL,1,7,NULL,NULL,1,NULL),('ui_id','main-menu','/site/ui-ux-design','serv_id','',1,2,1505543079,1505543079,1,1),('user','admin-menu',NULL,'','user',0,15,NULL,NULL,1,NULL),('user-groups','admin-menu','/user/permission-groups/index','user',NULL,0,19,NULL,NULL,1,NULL),('user-log','admin-menu','/user/visit-log/index','user',NULL,0,20,NULL,NULL,1,NULL),('user-permission','admin-menu','/user/permission/index','user',NULL,0,18,NULL,NULL,1,NULL),('user-role','admin-menu','/user/role/index','user',NULL,0,17,NULL,NULL,1,NULL),('user-user','admin-menu','/user/default/index','user',NULL,0,16,NULL,NULL,1,NULL),('ux_id','footer-serv','/ui-ux-design','','',1,999,1506337635,1506343371,1,1),('web_id','main-menu','/site/website-development','serv_id','',1,3,1505730286,1505730286,1,1),('work_id','admin-menu','/works','','',1,3,1506503725,1506503725,1,1);

/*Table structure for table `menu_link_lang` */

DROP TABLE IF EXISTS `menu_link_lang`;

CREATE TABLE `menu_link_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_id` varchar(64) NOT NULL,
  `language` varchar(6) NOT NULL,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_link_lang_link_id` (`link_id`),
  KEY `menu_link_lang_language` (`language`),
  CONSTRAINT `fk_menu_link_lang` FOREIGN KEY (`link_id`) REFERENCES `menu_link` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

/*Data for the table `menu_link_lang` */

insert  into `menu_link_lang`(`id`,`link_id`,`language`,`label`) values (1,'dashboard','en-US','Dashboard'),(2,'settings','en-US','Settings'),(3,'settings-general','en-US','General Settings'),(4,'settings-reading','en-US','Reading Settings'),(5,'settings-cache','en-US','Flush Cache'),(6,'menu','en-US','Menus'),(7,'comment','en-US','Comments'),(8,'user','en-US','Users'),(9,'user-groups','en-US','Permission groups'),(10,'user-log','en-US','Visit log'),(11,'user-permission','en-US','Permissions'),(12,'user-role','en-US','Roles'),(13,'user-user','en-US','Users'),(14,'post','en-US','Posts'),(15,'post-post','en-US','Posts'),(16,'post-category','en-US','Categories'),(17,'media','en-US','Media'),(18,'media-media','en-US','Media'),(19,'media-album','en-US','Albums'),(20,'media-category','en-US','Categories'),(21,'image-settings','en-US','Image Settings'),(22,'page','en-US','Pages'),(23,'settings-translations','en-US','Message Translation'),(24,'seo','en-US','SEO'),(25,'post-tag','en-US','Tags'),(28,'test-page','en-US','Test Page'),(29,'contact','en-US','Contact'),(32,'ui_id','en-US','UI/UX Design'),(34,'serv_id','en-US','What We Do '),(35,'web_id','en-US','Web Development'),(36,'about_id','en-US','Who We Are'),(37,'dig_id','en-US','Digital Marketing'),(38,'app_id','en-US','Mobile App Development'),(39,'pro_id','en-US','Products'),(41,'platform_id','en-US','Platform'),(42,'cms_id','en-US','CMS'),(43,'crm_id','en-US','CRM'),(44,'ecom_id','en-US','eCommerce'),(45,'tech_id','en-US','Technologies'),(46,'cloud_id','en-US','Cloud'),(47,'open_id','en-US','Open Source'),(48,'block','en-US','HTML Blocks'),(49,'car_id','en-US','Careers'),(50,'port_id','en-US','Portfolio'),(68,'aboutid','en-US','Who We Are'),(69,'product_id','en-US','Products'),(70,'career_id','en-US','Careers'),(71,'contact_id','en-US','Contact'),(72,'clouds_id','en-US','Cloud'),(73,'source_id','en-US','Open Source'),(74,'ux_id','en-US','UI/UX Design'),(75,'dev_id','en-US','Web Development'),(76,'digi_id','en-US','Digital Marketing'),(77,'mob_id','en-US','Mobile App Development'),(78,'cm_id','en-US','CMS'),(79,'cr_id','en-US','CRM'),(80,'ecomm_id','en-US','eCommerce'),(82,'general_id','en-US','Settings'),(83,'client_id','en-US','Clients'),(84,'work_id','en-US','Works'),(85,'team_id','en-US','Team');

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `language` varchar(16) NOT NULL,
  `translation` text,
  PRIMARY KEY (`id`),
  KEY `message_index` (`source_id`,`language`),
  CONSTRAINT `fk_message_source_message` FOREIGN KEY (`source_id`) REFERENCES `message_source` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `message` */

/*Table structure for table `message_source` */

DROP TABLE IF EXISTS `message_source`;

CREATE TABLE `message_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(32) NOT NULL,
  `message` text,
  `immutable` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8;

/*Data for the table `message_source` */

insert  into `message_source`(`id`,`category`,`message`,`immutable`) values (1,'yee','--- With selected ---',1),(2,'yee','Activate',1),(3,'yee','Active',1),(4,'yee','Add New',1),(5,'yee','All',1),(6,'yee','Always Visible',1),(7,'yee','An unknown error occurred.',1),(8,'yee','Approved',1),(9,'yee','Author',1),(10,'yee','Banned',1),(11,'yee','Bind to IP',1),(12,'yee','Browse',1),(13,'yee','Browser',1),(14,'yee','Cancel',1),(15,'yee','Category',1),(16,'yee','Clear filters',1),(17,'yee','Closed',1),(18,'yee','Code',1),(19,'yee','Comment Status',1),(20,'yee','Comments Activity',1),(21,'yee','Confirm',1),(22,'yee','Confirmation Token',1),(23,'yee','Content',1),(24,'yee','Control Panel',1),(25,'yee','Create {item}',1),(26,'yee','Create',1),(27,'yee','Created By',1),(28,'yee','Created',1),(29,'yee','Dashboard',1),(30,'yee','Data',1),(31,'yee','Deactivate',1),(32,'yee','Default Language',1),(33,'yee','Default Value',1),(34,'yee','Delete',1),(35,'yee','Description',1),(36,'yee','E-mail confirmed',1),(37,'yee','E-mail',1),(38,'yee','Edit',1),(39,'yee','Error',1),(40,'yee','For example',1),(41,'yee','Group',1),(42,'yee','ID',1),(43,'yee','IP',1),(44,'yee','Icon',1),(45,'yee','Inactive',1),(46,'yee','Insert',1),(47,'yee','Invalid settings for dashboard widgets',1),(48,'yee','Key',1),(49,'yee','Label',1),(50,'yee','Language',1),(51,'yee','Link ID can only contain lowercase alphanumeric characters, underscores and dashes.',1),(52,'yee','Link',1),(53,'yee','Login',1),(54,'yee','Logout {username}',1),(55,'yee','Menu ID can only contain lowercase alphanumeric characters, underscores and dashes.',1),(56,'yee','Menu',1),(57,'yee','Name',1),(58,'yee','No Parent',1),(59,'yee','No comments found.',1),(60,'yee','Not Selected',1),(61,'yee','OK',1),(62,'yee','OS',1),(63,'yee','Open',1),(64,'yee','Order',1),(65,'yee','PHP Version',1),(66,'yee','Parent Link',1),(67,'yee','Password',1),(68,'yee','Pending',1),(69,'yee','Processing',1),(70,'yee','Publish',1),(71,'yee','Published',1),(72,'yee','Read more',1),(73,'yee','Records per page',1),(74,'yee','Registration IP',1),(75,'yee','Repeat password',1),(76,'yee','Required',1),(77,'yee','Revision',1),(78,'yee','Role',1),(79,'yee','Roles',1),(80,'yee','Rule',1),(81,'yee','Save All',1),(82,'yee','Save',1),(83,'yee','Saved',1),(84,'yee','Settings',1),(85,'yee','Size',1),(86,'yee','Slug',1),(87,'yee','Spam',1),(88,'yee','Start',1),(89,'yee','Status',1),(90,'yee','Superadmin',1),(91,'yee','System Info',1),(92,'yee','The changes have been saved.',1),(93,'yee','This e-mail already exists',1),(94,'yee','Title',1),(95,'yee','Token',1),(96,'yee','Trash',1),(97,'yee','Type',1),(98,'yee','URL',1),(99,'yee','Unpublish',1),(100,'yee','Update \"{item}\"',1),(101,'yee','Update',1),(102,'yee','Updated By',1),(103,'yee','Updated',1),(104,'yee','Uploaded',1),(105,'yee','User agent',1),(106,'yee','User',1),(107,'yee','Username',1),(108,'yee','Value',1),(109,'yee','View',1),(110,'yee','Visible',1),(111,'yee','Visit Time',1),(112,'yee','Wrong format. Enter valid IPs separated by comma',1),(113,'yee','Yee CMS Version',1),(114,'yee','Yee Core Version',1),(115,'yee','Yii Framework Version',1),(116,'yee','Your item has been updated.',1),(117,'yee','Your item has been created.',1),(118,'yee','Your item has been deleted.',1),(119,'yee','Male',1),(120,'yee','Female',1),(121,'yee','First Name',1),(122,'yee','Last Name',1),(123,'yee','Skype',1),(124,'yee','Phone',1),(125,'yee','Gender',1),(126,'yee','Birthday',1),(127,'yee','Birth month',1),(128,'yee','Birth year',1),(129,'yee','Short Info',1),(130,'yee/translation','Add New Source Message',1),(131,'yee/translation','Category',1),(132,'yee/translation','Create Message Source',1),(133,'yee/translation','Create New Category',1),(134,'yee/translation','Immutable',1),(135,'yee/translation','Message Translation',1),(136,'yee/translation','New Category Name',1),(137,'yee/translation','Please, select message group and language to view translations...',1),(138,'yee/translation','Source Message',1),(139,'yee/translation','Update Message Source',1),(140,'yee/translation','{n, plural, =1{1 message} other{# messages}}',1),(141,'yee/media','Add files',1),(142,'yee/media','Album',1),(143,'yee/media','Albums',1),(144,'yee/media','All Media Items',1),(145,'yee/media','Alt Text',1),(146,'yee/media','Back to file manager',1),(147,'yee/media','Cancel upload',1),(148,'yee/media','Categories',1),(149,'yee/media','Category',1),(150,'yee/media','Changes have been saved.',1),(151,'yee/media','Changes haven\'t been saved.',1),(152,'yee/media','Create Category',1),(153,'yee/media','Current thumbnail sizes',1),(154,'yee/media','Dimensions',1),(155,'yee/media','Do resize thumbnails',1),(156,'yee/media','File Size',1),(157,'yee/media','Filename',1),(158,'yee/media','If you change the thumbnails sizes, it is strongly recommended resize image thumbnails.',1),(159,'yee/media','Image Settings',1),(160,'yee/media','Large size',1),(161,'yee/media','Manage Albums',1),(162,'yee/media','Manage Categories',1),(163,'yee/media','Media Activity',1),(164,'yee/media','Media Details',1),(165,'yee/media','Media',1),(166,'yee/media','Medium size',1),(167,'yee/media','No images found.',1),(168,'yee/media','Original',1),(169,'yee/media','Please, select file to view details.',1),(170,'yee/media','Select image size',1),(171,'yee/media','Small size',1),(172,'yee/media','Sorry, [{filetype}] file type is not permitted!',1),(173,'yee/media','Start upload',1),(174,'yee/media','Thumbnails settings',1),(175,'yee/media','Thumbnails sizes has been resized successfully!',1),(176,'yee/media','Thumbnails',1),(177,'yee/media','Update Category',1),(178,'yee/media','Updated By',1),(179,'yee/media','Upload New File',1),(180,'yee/media','Uploaded By',1),(181,'yee/menu','Menu',1),(182,'yee/menu','Menus',1),(183,'yee/menu','Link ID can only contain lowercase alphanumeric characters, underscores and dashes.',1),(184,'yee/menu','Parent Link',1),(185,'yee/menu','Always Visible',1),(186,'yee/menu','No Parent',1),(187,'yee/menu','Create Menu Link',1),(188,'yee/menu','Update Menu Link',1),(189,'yee/menu','Menu Links',1),(190,'yee/menu','Add New Menu',1),(191,'yee/menu','Add New Link',1),(192,'yee/menu','An error occurred during saving menu!',1),(193,'yee/menu','The changes have been saved.',1),(194,'yee/menu','Please, select menu to view menu links...',1),(195,'yee/menu','Selected menu doesn\'t contain any link. Click \"Add New Link\" to create a link for this menu.',1),(196,'yee/page','Page',1),(197,'yee/page','Pages',1),(198,'yee/page','Create Page',1),(199,'yee/post','Create Tag',1),(200,'yee/post','Update Tag',1),(201,'yee/post','No posts found.',1),(202,'yee/post','Post',1),(203,'yee/post','Posted in',1),(204,'yee/post','Posts Activity',1),(205,'yee/post','Posts',1),(206,'yee/post','Tag',1),(207,'yee/post','Tags',1),(208,'yee/post','Thumbnail',1),(209,'yee/settings','General Settings',1),(210,'yee/settings','Reading Settings',1),(211,'yee/settings','Site Title',1),(212,'yee/settings','Site Description',1),(213,'yee/settings','Admin Email',1),(214,'yee/settings','Timezone',1),(215,'yee/settings','Date Format',1),(216,'yee/settings','Time Format',1),(217,'yee/settings','Page Size',1),(218,'yee/user','Child permissions',1),(219,'yee/user','Child roles',1),(220,'yee/user','Create Permission Group',1),(221,'yee/user','Create Permission',1),(222,'yee/user','Create Role',1),(223,'yee/user','Create User',1),(224,'yee/user','Log №{id}',1),(225,'yee/user','No users found.',1),(226,'yee/user','Password',1),(227,'yee/user','Permission Groups',1),(228,'yee/user','Permission',1),(229,'yee/user','Permissions for \"{role}\" role',1),(230,'yee/user','Permissions',1),(231,'yee/user','Refresh routes',1),(232,'yee/user','Registration date',1),(233,'yee/user','Role',1),(234,'yee/user','Roles and Permissions for \"{user}\"',1),(235,'yee/user','Roles',1),(236,'yee/user','Routes',1),(237,'yee/user','Search route',1),(238,'yee/user','Show all',1),(239,'yee/user','Show only selected',1),(240,'yee/user','Update Permission Group',1),(241,'yee/user','Update Permission',1),(242,'yee/user','Update Role',1),(243,'yee/user','Update User Password',1),(244,'yee/user','Update User',1),(245,'yee/user','User not found',1),(246,'yee/user','User',1),(247,'yee/user','Users',1),(248,'yee/user','Visit Log',1),(249,'yee/user','You can not change own permissions',1),(250,'yee/user','You can\'t update own permissions!',1),(251,'yee/user','{permission} Permission Settings',1),(252,'yee/user','{permission} Role Settings',1),(253,'yee/auth','Are you sure you want to delete your profile picture?',1),(254,'yee/auth','Are you sure you want to unlink this authorization?',1),(255,'yee/auth','Authentication error occurred.',1),(256,'yee/auth','Authorization',1),(257,'yee/auth','Authorized Services',1),(258,'yee/auth','Captcha',1),(259,'yee/auth','Change profile picture',1),(260,'yee/auth','Check your E-mail for further instructions',1),(261,'yee/auth','Check your e-mail {email} for instructions to activate account',1),(262,'yee/auth','Click to connect with service',1),(263,'yee/auth','Click to unlink service',1),(264,'yee/auth','Confirm E-mail',1),(265,'yee/auth','Confirm',1),(266,'yee/auth','Could not send confirmation email',1),(267,'yee/auth','Current password',1),(268,'yee/auth','E-mail confirmation for',1),(269,'yee/auth','E-mail confirmed',1),(270,'yee/auth','E-mail is invalid',1),(271,'yee/auth','E-mail with activation link has been sent to <b>{email}</b>. This link will expire in {minutes} min.',1),(272,'yee/auth','E-mail',1),(273,'yee/auth','Forgot password?',1),(274,'yee/auth','Incorrect username or password',1),(275,'yee/auth','Login has been taken',1),(276,'yee/auth','Login',1),(277,'yee/auth','Logout',1),(278,'yee/auth','Non Authorized Services',1),(279,'yee/auth','Password has been updated',1),(280,'yee/auth','Password recovery',1),(281,'yee/auth','Password reset for',1),(282,'yee/auth','Password',1),(283,'yee/auth','Registration - confirm your e-mail',1),(284,'yee/auth','Registration',1),(285,'yee/auth','Remember me',1),(286,'yee/auth','Remove profile picture',1),(287,'yee/auth','Repeat password',1),(288,'yee/auth','Reset Password',1),(289,'yee/auth','Reset',1),(290,'yee/auth','Save Profile',1),(291,'yee/auth','Save profile picture',1),(292,'yee/auth','Set Password',1),(293,'yee/auth','Set Username',1),(294,'yee/auth','Signup',1),(295,'yee/auth','This E-mail already exists',1),(296,'yee/auth','Token not found. It may be expired',1),(297,'yee/auth','Token not found. It may be expired. Try reset password once more',1),(298,'yee/auth','Too many attempts',1),(299,'yee/auth','Unable to send message for email provided',1),(300,'yee/auth','Update Password',1),(301,'yee/auth','User Profile',1),(302,'yee/auth','User with the same email as in {client} account already exists but isn\'t linked to it. Login using email first to link it.',1),(303,'yee/auth','The username should contain only Latin letters, numbers and the following characters: \"-\" and \"_\".',1),(304,'yee/auth','Username contains not allowed characters or words.',1),(305,'yee/auth','Wrong password',1),(306,'yee/auth','You could not login from this IP',1),(307,'yee/seo','Create SEO Record',1),(308,'yee/seo','Follow',1),(309,'yee/seo','Index',1),(310,'yee/seo','Keywords',1),(311,'yee/seo','SEO',1),(312,'yee/seo','Search Engine Optimization',1),(313,'yee/seo','Update SEO Record',1),(314,'yee/block','HTML Block',1),(315,'yee/block','HTML Blocks',1);

/*Table structure for table `migration` */

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `alias` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `migration` */

insert  into `migration`(`version`,`alias`,`apply_time`) values ('m000000_000000_base','@app/migrations',1505536171),('m130524_201442_init','@app/migrations',1505536175),('m150319_150657_alter_user_table','@yeesoft/yii2-yee-core/migrations/',1505536178),('m150319_155941_init_yee_core','@yeesoft/yii2-yee-core/migrations/',1505536187),('m150319_184824_init_settings','@yeesoft/yii2-yee-core/migrations/',1505536188),('m150319_194321_init_menus','@yeesoft/yii2-yee-core/migrations/',1505536196),('m150320_102452_init_translations','@yeesoft/yii2-yee-translation/migrations/',1505536197),('m150628_124401_create_media_table','@yeesoft/yii2-yee-media/migrations/',1505536210),('m150630_121101_create_post_table','@yeesoft/yii2-yee-post/migrations/',1505536220),('m150703_182055_create_auth_table','@yeesoft/yii2-yee-auth/migrations/',1505536221),('m150706_175101_create_comment_table','@yeesoft/yii2-comments/migrations/',1505536223),('m150719_154955_add_setting_menu_links','@yeesoft/yii2-yee-settings/migrations/',1505536223),('m150719_182533_add_menu_and_links','@yeesoft/yii2-yee-menu/migrations/',1505536223),('m150727_175300_add_comments_menu_links','@yeesoft/yii2-yee-comment/migrations/',1505536224),('m150729_121634_add_user_menu_links','@yeesoft/yii2-yee-user/migrations/',1505536224),('m150729_122614_add_post_menu_links','@yeesoft/yii2-yee-post/migrations/',1505536224),('m150729_131014_add_media_menu_links','@yeesoft/yii2-yee-media/migrations/',1505536225),('m150731_150101_create_page_table','@yeesoft/yii2-yee-page/migrations/',1505536227),('m150731_150644_add_page_menu_links','@yeesoft/yii2-yee-page/migrations/',1505536227),('m150821_140141_add_core_permissions','@yeesoft/yii2-yee-core/migrations/',1505536228),('m150825_202231_add_post_permissions','@yeesoft/yii2-yee-post/migrations/',1505536228),('m150825_205531_add_user_permissions','@yeesoft/yii2-yee-user/migrations/',1505536228),('m150825_211322_add_menu_permissions','@yeesoft/yii2-yee-menu/migrations/',1505536228),('m150825_212310_add_settings_permissions','@yeesoft/yii2-yee-settings/migrations/',1505536228),('m150825_212941_add_comments_permissions','@yeesoft/yii2-yee-comment/migrations/',1505536229),('m150825_213610_add_media_permissions','@yeesoft/yii2-yee-media/migrations/',1505536229),('m150825_220620_add_page_permissions','@yeesoft/yii2-yee-page/migrations/',1505536229),('m151116_212614_add_translations_menu_links','@yeesoft/yii2-yee-translation/migrations/',1505536229),('m151121_091144_i18n_yee_source','@yeesoft/yii2-yee-core/migrations/',1505536229),('m151121_131210_add_translation_permissions','@yeesoft/yii2-yee-translation/migrations/',1505536230),('m151121_184634_i18n_yee_translation_source','@yeesoft/yii2-yee-translation/migrations/',1505536230),('m151121_225504_i18n_yee_media_source','@yeesoft/yii2-yee-media/migrations/',1505536230),('m151121_232115_i18n_yee_menu_source','@yeesoft/yii2-yee-menu/migrations/',1505536231),('m151121_233615_i18n_yee_page_source','@yeesoft/yii2-yee-page/migrations/',1505536231),('m151121_233715_i18n_yee_post_source','@yeesoft/yii2-yee-post/migrations/',1505536231),('m151121_235015_i18n_yee_settings_source','@yeesoft/yii2-yee-settings/migrations/',1505536231),('m151121_235512_i18n_yee_user_source','@yeesoft/yii2-yee-user/migrations/',1505536231),('m151126_061233_i18n_yee_auth_source','@yeesoft/yii2-yee-auth/migrations/',1505536231),('m151226_230101_create_seo_table','@yeesoft/yii2-yee-seo/migrations/',1505536234),('m151226_231101_add_seo_menu_links','@yeesoft/yii2-yee-seo/migrations/',1505536234),('m151226_233401_add_seo_permissions','@yeesoft/yii2-yee-seo/migrations/',1505536234),('m151226_234401_i18n_yee_seo_source','@yeesoft/yii2-yee-seo/migrations/',1505536234),('m160207_123123_add_super_parent_id','@yeesoft/yii2-comments/migrations/',1505536235),('m160414_212551_add_view_page','@yeesoft/yii2-yee-page/migrations/',1505536237),('m160414_212558_add_view_post','@yeesoft/yii2-yee-post/migrations/',1505536238),('m160418_150101_create_block_table','@vendor/yeesoft/yii2-yee-block/migrations/',1505743690),('m160418_150644_add_block_menu_links','@vendor/yeesoft/yii2-yee-block/migrations/',1505743691),('m160418_220620_add_block_permissions','@vendor/yeesoft/yii2-yee-block/migrations/',1505743691),('m160418_233615_i18n_yee_block_source','@vendor/yeesoft/yii2-yee-block/migrations/',1505743693),('m160426_122854_create_uploader_images_table','@yeesoft/yii2-yee-media/migrations/',1505536241),('m160530_224510_add_url_field','@yeesoft/yii2-comments/migrations/',1505536241),('m160605_214907_create_tag_table','@yeesoft/yii2-yee-post/migrations/',1505536247),('m160605_215105_init_tag_settings','@yeesoft/yii2-yee-post/migrations/',1505536247),('m160610_120101_init_demo','@app/migrations',1505536249),('m160831_224932_alter_user_table','@yeesoft/yii2-yee-core/migrations/',1505536255),('m160903_113810_update_auth_foreign_key','@yeesoft/yii2-yee-auth/migrations/',1505536256),('m170926_073408_create_clients_table','@common/modules/clients/migrations',1506431554),('m170927_060027_create_works_table','@common/modules/works/migrations',1506495535),('m170928_102047_create_team_table','@common/modules/team/migrations',1506595172);

/*Table structure for table `page` */

DROP TABLE IF EXISTS `page`;

CREATE TABLE `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0-pending,1-published',
  `comment_status` int(1) NOT NULL DEFAULT '1' COMMENT '0-closed,1-open',
  `published_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `revision` int(1) NOT NULL DEFAULT '1',
  `view` varchar(255) NOT NULL DEFAULT 'page',
  `layout` varchar(255) NOT NULL DEFAULT 'main',
  PRIMARY KEY (`id`),
  KEY `page_slug` (`slug`),
  KEY `page_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `page` */

insert  into `page`(`id`,`slug`,`status`,`comment_status`,`published_at`,`created_at`,`updated_at`,`created_by`,`updated_by`,`revision`,`view`,`layout`) values (4,'ui-ux-design',1,0,1505520000,1505543218,1506347433,1,1,18,'page','inner_get_in_touch'),(6,'services-overview',1,0,1505692800,1505728821,1506416126,1,1,19,'page','inner'),(7,'website-development',1,0,1505692800,1505730227,1506087310,1,1,6,'page','inner_get_in_touch'),(8,'who-we-are',1,0,1505692800,1505730928,1506316666,1,1,6,'page','inner'),(9,'digital-marketing',1,0,1505692800,1505731313,1505828378,1,1,4,'page','inner_get_in_touch'),(10,'mobile-app-development',1,0,1505692800,1505731688,1505828378,1,1,3,'page','inner_get_in_touch'),(11,'products',1,0,1505692800,1505731941,1506408126,1,1,21,'page','inner_get_in_touch'),(12,'hospital-management-software',1,0,1505692800,1505732355,1506333556,1,1,14,'page','inner_get_in_touch'),(13,'platform',1,0,1505692800,1505733070,1506416418,1,1,10,'page','inner_get_in_touch'),(14,'cms',1,0,1505692800,1505733382,1505828310,1,1,3,'page','inner_get_in_touch'),(15,'crm',1,0,1505692800,1505735911,1505828304,1,1,3,'page','inner_get_in_touch'),(16,'e-commerce',1,0,1505692800,1505736181,1505828249,1,1,3,'page','inner_get_in_touch'),(17,'technologies',1,0,1505692800,1505736487,1506335531,1,1,6,'page','inner_get_in_touch'),(18,'cloud',1,0,1505692800,1505736738,1506317333,1,1,4,'page','inner_get_in_touch'),(19,'opensource',1,0,1505692800,1505736935,1505828195,1,1,4,'page','inner_get_in_touch'),(21,'work-status-tracker',1,0,1506124800,1506162295,1506333541,1,1,5,'page','inner_get_in_touch'),(22,'dataanalytics',1,0,1506297600,1506316487,1506316543,1,1,3,'page','inner_get_in_touch'),(23,'latch-note',1,0,1506297600,1506328947,1506408151,1,1,2,'page','inner_get_in_touch');

/*Table structure for table `page_lang` */

DROP TABLE IF EXISTS `page_lang`;

CREATE TABLE `page_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` text,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `page_lang_post_id` (`page_id`),
  KEY `page_lang_language` (`language`),
  CONSTRAINT `fk_page_lang` FOREIGN KEY (`page_id`) REFERENCES `page` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `page_lang` */

insert  into `page_lang`(`id`,`page_id`,`language`,`title`,`content`) values (4,4,'en-US','UI/UX Design','<div class=\"inner-page-heading \">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<h1>UI / UX Design</h1>\r\nMore than meets the eye</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\" ui-ux-cont\">\r\n<div class=\"container-fluid\">\r\n<div class=\"ui-ux-points1\"><img src=\"/themes/st_theme/images/ui-1.png\" alt=\"User Experience Design\" />\r\n<h2>1.User Experience Design</h2>\r\n<p>Being a Branding agency our implications and definitions to the User Experience holds better standards and most of the design we do is user centric.Being a Branding agency our implications and definitions to the User Experience holds better standards and most of the design we do is user centric.</p>\r\n</div>\r\n<div class=\"ui-ux-points1\"><img class=\"pull-right\" src=\"/themes/st_theme/images/ui-2.png\" alt=\"UI/UX Design Goals\" />\r\n<h2>2.UI/UX Design Goals</h2>\r\n<p>Our expertise would be on proper construction of the website, following the remarkable principles of the golden ratio.Our expertise would be on proper construction of the website, following the remarkable principles of the golden ratio.</p>\r\n</div>\r\n<div class=\"ui-ux-points1\"><img src=\"/themes/st_theme/images/ui-3.png\" alt=\"Responsive Design Outlay\" />\r\n<h2>3.Responsive Design Outlay</h2>\r\n<p>Responsive design: Constructing designs that deploy well in smartphones. We help you reach your customers in every possible way effectively.</p>\r\n</div>\r\n<div class=\"ui-ux-points1\"><img class=\"pull-right\" src=\"/themes/st_theme/images/ui-4.png\" alt=\"Infographic Design\" />\r\n<h2>4.Infographic Design</h2>\r\n<p>Since we know Images speak better than words, we render the Image depiction principle to all the words you write.Since we know Images speak better than words, we render the Image depiction principle to all the words you write.</p>\r\n</div>\r\n</div>\r\n</div>'),(6,6,'en-US','What We Do','<div class=\"inner-page-heading \">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<h1>What We Do</h1>\r\nYou get more than just what you want!</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"whatwedo\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<div class=\" converstion-bg\">\r\n<h2>This little conversation will tell you more about how we work &amp; why the clients love us!</h2>\r\n<div id=\"demo-chat-body\" class=\"collapse in\">\r\n<div class=\"nano has-scrollbar\" style=\"height: auto;\">\r\n<div class=\"nano-content pad-all\" style=\"right: -17px;\" tabindex=\"0\">\r\n<ul class=\"list-unstyled media-block\">\r\n<li class=\"mar-btm\">\r\n<div class=\"media-left\"><img class=\"img-circle img-sm\" src=\"https://bootdey.com/img/Content/avatar/avatar1.png\" alt=\"Profile Picture\" /></div>\r\n<div class=\"media-body pad-hor\">\r\n<div class=\"speech\">\r\n<p>Hey there! I am looking out for expanding my business and thought you guys could help !</p>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"mar-btm\">\r\n<div class=\"media-right\"><img class=\"img-circle img-sm\" src=\"https://bootdey.com/img/Content/avatar/avatar2.png\" alt=\"Profile Picture\" /></div>\r\n<div class=\"media-body pad-hor speech-right\">\r\n<div class=\"speech\">\r\n<p>Absolutely! That\'s why we are here for the last whole decade...How about a jaw-dropping website to let people know you are here to make a mark?!</p>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"mar-btm\">\r\n<div class=\"media-left\"><img class=\"img-circle img-sm\" src=\"https://bootdey.com/img/Content/avatar/avatar1.png\" alt=\"Profile Picture\" /></div>\r\n<div class=\"media-body pad-hor\">\r\n<div class=\"speech\">\r\n<p>Oh so how would you do that.....</p>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"mar-btm\">\r\n<div class=\"media-right\"><img class=\"img-circle img-sm\" src=\"https://bootdey.com/img/Content/avatar/avatar2.png\" alt=\"Profile Picture\" /></div>\r\n<div class=\"media-body pad-hor speech-right\">\r\n<div class=\"speech\">\r\n<p>Let\'s get started with your requirements</p>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"mar-btm\">\r\n<div class=\"media-left\"><img class=\"img-circle img-sm\" src=\"https://bootdey.com/img/Content/avatar/avatar1.png\" alt=\"Profile Picture\" /></div>\r\n<div class=\"media-body pad-hor\">\r\n<div class=\"speech\">\r\n<p>A website that reflects my brand…..</p>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"mar-btm\">\r\n<div class=\"media-right\"><img class=\"img-circle img-sm\" src=\"https://bootdey.com/img/Content/avatar/avatar2.png\" alt=\"Profile Picture\" /></div>\r\n<div class=\"media-body pad-hor speech-right\">\r\n<div class=\"speech\">\r\n<p>That\'s great! But how exactly do you want the website to be?</p>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"mar-btm\">\r\n<div class=\"media-left\"><img class=\"img-circle img-sm\" src=\"https://bootdey.com/img/Content/avatar/avatar1.png\" alt=\"Profile Picture\" /></div>\r\n<div class=\"media-body pad-hor\">\r\n<div class=\"speech\">\r\n<p>Bright and vibrant, with a User centric design.</p>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"mar-btm\">\r\n<div class=\"media-right\"><img class=\"img-circle img-sm\" src=\"https://bootdey.com/img/Content/avatar/avatar2.png\" alt=\"Profile Picture\" /></div>\r\n<div class=\"media-body pad-hor speech-right\">\r\n<div class=\"speech\">\r\n<p>There you go with the mock, how do you like it?</p>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"mar-btm\">\r\n<div class=\"media-left\"><img class=\"img-circle img-sm\" src=\"https://bootdey.com/img/Content/avatar/avatar1.png\" alt=\"Profile Picture\" /></div>\r\n<div class=\"media-body pad-hor\">\r\n<div class=\"speech\">\r\n<p>Impressive...Would my website look the same way?</p>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"mar-btm\">\r\n<div class=\"media-right\"><img class=\"img-circle img-sm\" src=\"https://bootdey.com/img/Content/avatar/avatar2.png\" alt=\"Profile Picture\" /></div>\r\n<div class=\"media-body pad-hor speech-right\">\r\n<div class=\"speech\">\r\n<p>Without a doubt!</p>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"mar-btm\">\r\n<div class=\"media-left\"><img class=\"img-circle img-sm\" src=\"https://bootdey.com/img/Content/avatar/avatar1.png\" alt=\"Profile Picture\" /></div>\r\n<div class=\"media-body pad-hor\">\r\n<div class=\"speech\">\r\n<p>I am just so eager to get my website done.</p>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"mar-btm\">\r\n<div class=\"media-right\"><img class=\"img-circle img-sm\" src=\"https://bootdey.com/img/Content/avatar/avatar2.png\" alt=\"Profile Picture\" /></div>\r\n<div class=\"media-body pad-hor speech-right\">\r\n<div class=\"speech\">\r\n<p>We are done with the first look of your website. Wantto catch a glimpse?</p>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"mar-btm\">\r\n<div class=\"media-left\"><img class=\"img-circle img-sm\" src=\"https://bootdey.com/img/Content/avatar/avatar1.png\" alt=\"Profile Picture\" /></div>\r\n<div class=\"media-body pad-hor\">\r\n<div class=\"speech\">\r\n<p>Spectacular! To say, it\'s way more than what I actually expected...</p>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"mar-btm\">\r\n<div class=\"media-right\"><img class=\"img-circle img-sm\" src=\"https://bootdey.com/img/Content/avatar/avatar2.png\" alt=\"Profile Picture\" /></div>\r\n<div class=\"media-body pad-hor speech-right\">\r\n<div class=\"speech\">\r\n<p>Glad! You liked it…..!</p>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"mar-btm\">\r\n<div class=\"media-left\"><img class=\"img-circle img-sm\" src=\"https://bootdey.com/img/Content/avatar/avatar1.png\" alt=\"Profile Picture\" /></div>\r\n<div class=\"media-body pad-hor\">\r\n<div class=\"speech\">\r\n<p>That\'s truly fabulous!</p>\r\n</div>\r\n</div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"nano-pane\"> </div>\r\n</div>\r\n<!--Widget footer--></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"conversation-txt-cont\">\r\n<div class=\"paper-plane\"><img src=\"/themes/st_theme/images/paper-plane.png\" alt=\"\" /></div>\r\n<div class=\"container-fluid\">\r\n<div class=\"conversation-txt\">\r\n<p>The conversation doesn\'t here! There is more coming…..</p>\r\n<p><strong> And the actual \'Wow\' moment is when we deliver the website to the clients only to see their vibrantly happy face! </strong></p>\r\n<p>That\'s our moment of success!</p>\r\n<p>So if you wish to have such an overwhelming experience, try out our services…..</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"services-cont\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 secondary-heading\">\r\n<h2>What We offer</h2>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-3 col-lg-3\">\r\n<div class=\"servicebg1\">\r\n<p><a href=\"/ui-ux-design\"><img src=\"/themes/st_theme/images/service-icon1.png\" alt=\"UI / UX\" /></a></p>\r\n<p class=\"service-name\"><a href=\"/ui-ux-design\"> UI / UX Design</a></p>\r\n<p class=\"service-txt\">Your one stop-shop for great website designs, exotic logos, and awesome Graphic Designs. Ask for more and you will get more!</p>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-3 col-lg-3\">\r\n<div class=\"servicebg1 servicebg2\">\r\n<p class=\"service-name\"><a href=\"website-development\"><img src=\"/themes/st_theme/images/service-icon2.png\" alt=\"Web Development\" /></a></p>\r\n<p class=\"service-name\"><a href=\"website-development\">Web Development</a></p>\r\n<p class=\"service-txt\">We build custom applications that are tailor-made to fit your requirements. Have an idea? Share it with us and see it come to life with our technical expertise.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-3 col-lg-3\">\r\n<div class=\"servicebg1 servicebg3\">\r\n<p><a href=\"/digital-marketing\"><img src=\"/themes/st_theme/images/service-icon3.png\" alt=\"Digital Marketing\" /></a></p>\r\n<p class=\"service-name\"><a href=\"/digital-marketing \">Digital Marketing</a></p>\r\n<p class=\"service-txt\">This is the platform that\'s makes your business catch the spotlight! We help your brand get the much needed attention and we make sure it is here to stay! </p>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-3 col-lg-3\">\r\n<div class=\"servicebg1 servicebg4\">\r\n<p><a href=\"/mobile-app-development\"><img src=\"/themes/st_theme/images/service-icon4.png\" alt=\"Mobile App\" /></a></p>\r\n<p class=\"service-name\"><a href=\"/mobile-app-development\">Mobile App Development </a></p>\r\n<p class=\"service-txt\">Find the finest of services in mobile application development, compatible with IOS, Android and windows. All that you wanted is at the tap of your finger. </p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),(7,7,'en-US','Web Development','<div class=\"inner-page-heading webdev-heading \">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<h1>Web Development</h1>\r\nTransforming ideas into spectacular websites</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"clearfix\"> </div>\r\n<div class=\" web-development-cont\">\r\n<div class=\"stem-wrapper\"> </div>\r\n<div class=\"section header\">\r\n<div class=\"section-inner\">\r\n<div class=\"master-head\">\r\n<p>\" Just as we thought! Want to know more about what we do?<br />Its time to fasten your seatbelts!\"</p>\r\n<p class=\"scroll-button\">Ready to go for a ride?</p>\r\n</div>\r\n</div>\r\n<!-- section-inner --></div>\r\n<!-- header -->\r\n<div class=\"section main-content\">\r\n<div class=\"section-inner\">\r\n<div class=\"stem-padding\"> </div>\r\n<div class=\"post-wrapper\">\r\n<article class=\"post web-icon1\" data-stem-color=\"green\">\r\n<div class=\"stem-overlay\"> </div>\r\n<div class=\"post-content post-content1\">\r\n<div class=\"edge\"><img src=\"/themes/st_theme/images/edge.png\" alt=\"\" /></div>\r\n<div class=\"stepimg\"><img src=\"/themes/st_theme/images/webdevelop-img1.png\" alt=\"Kick-Off &amp; Discovery\" /></div>\r\n<div class=\"entry-content\">\r\n<h2 class=\"post-title\">01 Kick-Off &amp; Discovery</h2>\r\n<p>With your ideas in mind, we begin sketching the layout of your requirements. Your needs go through our microscopic eyes, to make sure that we don\'t miss out on even the smallest of things.</p>\r\n</div>\r\n<div class=\"post-logan1\">Feasibility Study, Software Requirement Specification (SRS), Software Requirement Validation (SRV)</div>\r\n</div>\r\n</article>\r\n<article class=\"post web-icon2\" data-stem-color=\"yellow\">\r\n<div class=\"stem-overlay\"> </div>\r\n<div class=\"post-content post-content1 post-content2\">\r\n<div class=\"edge2\"><img src=\"/themes/st_theme/images/edge2.png\" alt=\"\" /></div>\r\n<div class=\"stepimg\"><img src=\"/themes/st_theme/images/webdevelop-img2.png\" alt=\"The Core Architecture\" /></div>\r\n<div class=\"entry-content\">\r\n<h2 class=\"post-title\">02 The Core Architecture</h2>\r\n<p>Step-by-step your website gets an iron framework on which your brand is going to stand tall. The architecture is designed with precision so that the website not only looks elegant but is also robust from the inside.</p>\r\n</div>\r\n<div class=\"post-logan1\">Attribute-Driven Design Method, Architecture Tradeoff Analysis Method, System of Systems (SoS) Architecture Evaluation</div>\r\n</div>\r\n</article>\r\n<article class=\"post web-icon3\" data-stem-color=\"blue\">\r\n<div class=\"stem-overlay\"> </div>\r\n<div class=\"post-content post-content1 post-content3\">\r\n<div class=\"edge\"><img src=\"/themes/st_theme/images/edge.png\" alt=\"\" /></div>\r\n<div class=\"stepimg\"><img src=\"/themes/st_theme/images/webdevelop-img3.png\" alt=\"Design &amp; Mocks\" /></div>\r\n<div class=\"entry-content\">\r\n<h2 class=\"post-title\">03 Design &amp; Mocks</h2>\r\n<p>Now it\'s time to make your website look beautiful from the outside! We don\'t stop till we see that smile of content on your face. The mock is a reflection of your brand which is nothing less than the very best.</p>\r\n</div>\r\n<div class=\"post-logan1\"><img src=\"/themes/st_theme/images/web-design-logo.png\" alt=\"\" /></div>\r\n</div>\r\n</article>\r\n<article class=\"post web-icon4\" data-stem-color=\"white\">\r\n<div class=\"stem-overlay\"> </div>\r\n<div class=\"post-content post-content1 post-content4\">\r\n<div class=\"edge2\"><img src=\"/themes/st_theme/images/edge2.png\" alt=\"\" /></div>\r\n<div class=\"stepimg\"><img src=\"/themes/st_theme/images/webdevelop-img4.png\" alt=\"Getting Coded!\" /></div>\r\n<div class=\"entry-content\">\r\n<h2 class=\"post-title\">04 Getting Coded!</h2>\r\n<p>We code your website according to the highest coding standards. Your website will stand the test of time with our cutting-edge coding abilities and technologies.</p>\r\n</div>\r\n<div class=\"post-logan1\"><img src=\"/themes/st_theme/images/web-development-logos.jpg\" alt=\"\" /></div>\r\n</div>\r\n</article>\r\n<article class=\"post web-icon5\" data-stem-color=\"green\">\r\n<div class=\"stem-overlay\"> </div>\r\n<div class=\"post-content post-content1 post-content5\">\r\n<div class=\"edge\"><img src=\"/themes/st_theme/images/edge.png\" alt=\"\" /></div>\r\n<div class=\"stepimg\"><img src=\"/themes/st_theme/images/webdevelop-img5.png\" alt=\"Quality Checks &amp; Re-checks\" /></div>\r\n<div class=\"entry-content\">\r\n<h2 class=\"post-title\">05 Quality Checks &amp; Re-checks</h2>\r\n<p>With everything in place, our testing experts zap out bugs from your website making it clean and healthy. Bug-free and stunning, the website is all set to make heads turn.</p>\r\n</div>\r\n<div class=\"post-logan1\">Manual Testing (unit, functional, integration, system, performance, regression), Automation Testing (Selenium, SilkTest, TestComplete, WinRunner, LoadRunner, WATIR)</div>\r\n</div>\r\n</article>\r\n<article class=\"post  web-icon6\" data-stem-color=\"yellow\">\r\n<div class=\"stem-overlay\"> </div>\r\n<div class=\"post-content post-content1 post-content6\">\r\n<div class=\"edge2\"><img src=\"/themes/st_theme/images/edge2.png\" alt=\"\" /></div>\r\n<div class=\"stepimg\"><img src=\"/themes/st_theme/images/webdevelop-img6.png\" alt=\"Its Launch Time\" /></div>\r\n<div class=\"entry-content\">\r\n<h2 class=\"post-title\">06 Its Launch Time</h2>\r\n<p>The countdown begins. In 5…4…3…2…and 1, the world gets to see a never-seen-before experience. Your brand is ready to grab the spotlight and is definitely here to stay!</p>\r\n</div>\r\n<div class=\"post-logan1\">LAMP, GITHUB, HOSTING</div>\r\n</div>\r\n</article>\r\n<article class=\"post web-icon7\" data-stem-color=\"blue\">\r\n<div class=\"stem-overlay\"> </div>\r\n<div class=\"post-content post-content1 post-content7\">\r\n<div class=\"edge\"><img src=\"/themes/st_theme/images/edge.png\" alt=\"\" /></div>\r\n<div class=\"stepimg\"><img src=\"/themes/st_theme/images/webdevelop-img7.png\" alt=\"Let\'s get optmized\" /></div>\r\n<div class=\"entry-content\">\r\n<h2 class=\"post-title\">07 Let\'s get optmized</h2>\r\n<p>The countdown begins. In 5…4…3…2…and 1, the world gets to see a never-seen-before experience. Your brand is ready to grab the spotlight and is definitely here to stay!</p>\r\n</div>\r\n<div class=\"post-logan1\">SEO, SMM, Digital Marketing, Content Writing</div>\r\n</div>\r\n</article>\r\n</div>\r\n<!-- post-wrapper -->\r\n<div class=\"single-stem-icon scroll-to-top trigger-scroll-to-top\"> </div>\r\n</div>\r\n</div>\r\n</div>'),(8,8,'en-US','Who We Are','<div class=\"inner-page-heading aboutus-heading \">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<h1>Who We Are</h1>\r\nFind answers to all those curious questions about us</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"aboutus-cont\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<div class=\" aboutus1\">\r\n<h2>BECOME VISIBLE</h2>\r\n<p>And this is exactly what we help you do!</p>\r\n<p>We are a bunch of passionate individuals, who love building creative products with cutting-edge technology. Our love for innovation has taken us through a journey that makes us extremely proud.</p>\r\n<p class=\"aboutusimg\"><img src=\"/themes/st_theme/images/visible.png\" alt=\"BECOME VISIBLE\" /></p>\r\n</div>\r\n</div>\r\n<div class=\"aboutsus-row1\">\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4 aboutsus-in-img pull-right\"><img src=\"/themes/st_theme/images/aboutus-img1.png\" alt=\"Creative Heads\" /></div>\r\n<div class=\"col-xs-12 col-sm-8 col-md-8 col-lg-8 abouus-txt1\">\r\n<p><span class=\"company-name\">\'Sumanas <strong> Technologies</strong> \'</span> professional base runs for a decade in the market, marking its inception in 2008. Transforming into a full-fledged Private Limited Enterprise, our identity has got itself a facelift and is yet another milestone in our journey towards excellence.</p>\r\n<p>Our masterminds onboard are pioneers of forward thinking and it has always been a battle of the \'Creative Heads\'.</p>\r\n</div>\r\n</div>\r\n<div class=\"aboutsus-row1\">\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-5 aboutsus-in-img\"><img src=\"/themes/st_theme/images/aboutus-img2.png\" alt=\"creativity and innovation.\" /></div>\r\n<div class=\"col-xs-12 col-sm-8 col-md-8 col-lg-7 abouus-txt1 abouus-txt2\">\r\n<p>Delivering nothing but the best runs in our DNA! Our services comprise of Web Designing &amp; development, Software &amp; Mobile application development, Digital Marketing, and Custom Applications Development; anything and everything that your business has ever wanted!</p>\r\n<p>Building products is like penning a story. Each chapter awes you with our creativity and innovation.</p>\r\n</div>\r\n</div>\r\n<div class=\"aboutsus-row1\">\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-5 aboutsus-in-img pull-right\"><img src=\"/themes/st_theme/images/aboutus-img3.png\" alt=\"About Sumanas\" /></div>\r\n<div class=\"col-xs-12 col-sm-8 col-md-8 col-lg-7 abouus-txt1 abouus-txt2\">\r\n<p>The chats over a cup of coffee , the never-ending brain storming sessions are the key ingredients that go into making your product the very BEST!</p>\r\n<p>We believe in doing and not just talking. Because people love to \'see\' results and not just \'hear\'.</p>\r\n</div>\r\n</div>\r\n<div class=\"aboutsus-row1\">\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6 aboutsus-in-img\"><img src=\"/themes/st_theme/images/aboutus-img4.png\" alt=\"\" /></div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6 abouus-txt1 aboutus-txt3\">\r\n<p>Ready to scale <br />New heights <br />with us? !</p>\r\n<p><a class=\" btn btn1\" href=\"contact-sumanas\"> Get In Touch </a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),(9,9,'en-US','Digital Marketing','<div class=\"inner-page-heading \">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<h1>Digital Marketing</h1>\r\nTaking your brand through the never-heard-before experience</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\" ui-ux-cont\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"ui-ux-points1 digital-points1\">\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4\"><img src=\"/themes/st_theme/images/digital-marketing1.jpg\" alt=\"Search Engine Optimization ( SEO)\" /></div>\r\n<div class=\"col-xs-12 col-sm-8 col-md-8 col-lg-8\">\r\n<h2>1. Search Engine Optimization ( SEO)</h2>\r\n<p>Our SEO services are of the finest quality and are targeted towards improving your online visibility. With us your brand will steal the limelight no matter what!</p>\r\n<p><strong> Quick look at how you will get optimized! </strong></p>\r\n<ul>\r\n<li>1. Keyword optimization</li>\r\n<li>2. Website Traffic Analysis</li>\r\n<li>3. Search Engine Rankings</li>\r\n<li>4. Competitor Analysis</li>\r\n<li>5. Web site optimization</li>\r\n<li>6.Link building</li>\r\n<li>7. URL &amp; Image Optimization</li>\r\n<li>8.Content Optimization</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"ui-ux-points1 digital-points1\">\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-right\"><img src=\"/themes/st_theme/images/digital-marketing2.png\" alt=\"Social Media Marketing (SMM)\" /></div>\r\n<div class=\"col-xs-12 col-sm-8 col-md-8 col-lg-8\">\r\n<h2>2. Social Media Marketing (SMM)</h2>\r\n<p>When the world is hooked to the social media, it\'s the right time to strike the chord. Our social media marketing helps your business reach out to customers far and wide.</p>\r\n<p><strong> Our Check list includes: </strong></p>\r\n<ul>\r\n<li>1.Live Tweeting</li>\r\n<li>2.Social Seedling</li>\r\n<li>3.Video promotions</li>\r\n<li>4.Publishing/Sponsoring posts in social Media</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"ui-ux-points1 digital-points1\">\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4\"><img src=\"/themes/st_theme/images/digital-marketing3.png\" alt=\"Content writing\" /></div>\r\n<div class=\"col-xs-12 col-sm-8 col-md-8 col-lg-8\">\r\n<h2>3. Content writing</h2>\r\n<p>No matter what comes and goes, content is always the king. Our exclusive content writing services are not only of the highest standards but also plagiarism-free!</p>\r\n<p><strong> What\'s in store! </strong></p>\r\n<ul>\r\n<li>1.Blog Posts</li>\r\n<li>2.Product Descriptions</li>\r\n<li>3.Meta data</li>\r\n<li>4.Website content</li>\r\n<li>5.E-books</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),(10,10,'en-US','Mobile App Development','<div class=\"inner-page-heading \">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<h1>Mobile Application Development</h1>\r\n\'Becoming visible is now just a tap away!\'</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\" ui-ux-cont\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"ui-ux-points1 mobile-app-points\">\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4\"><img src=\"/themes/st_theme/images/mobile-app1.png\" alt=\"iOS App Development\" /></div>\r\n<div class=\"col-xs-12 col-sm-8 col-md-8 col-lg-8\">\r\n<h2>1. iOS App Development</h2>\r\n<p>The potential leader, slaying the Smart Phone\'s world just like a virtuoso! With the inception of Apple devices, you definitely would have experienced the greatest transformation budge! Everything appears fast..The processing Speed, The display Rate and then to what not?</p>\r\n<p>We devise the perfect apps, envisaging your requirement plate into a great finished product. With our in-depth expertise in the integrated development environment provided by the iOS, we create apps that stand out. Apps that are not just known for their progressive features, but also their user friendliness and the fact that end users can optimize their use.</p>\r\n<p><strong>Our Services Include: </strong></p>\r\n<ul>\r\n<li>Media Support in context with Gaming and Entertainment applications</li>\r\n<li>ICS and full browser support</li>\r\n<li>Multi-functional mobile application development</li>\r\n<li>Flawless Quality testing enabling bug-free operational apps</li>\r\n<li>Qualitative application development</li>\r\n<li>Dependable and various file formats</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"ui-ux-points1 mobile-app-points\">\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-right\"><img src=\"/themes/st_theme/images/mobile-app2.png\" alt=\"Android App Development\" /></div>\r\n<div class=\"col-xs-12 col-sm-8 col-md-8 col-lg-8\">\r\n<h2>2. Android App Development</h2>\r\n<p>Powering easy build of the apps, with the most vibrant programming language.The construction of the OS captivates many Users. Although iPhone is the leader, most of the world populace operate on the Android OS. Ensuring flexibility and ease of operation makes working with Android much simpler.</p>\r\n<p>With the million apps in the Play Store, would you need a firmer index? At Ark Infotec, we utilize the huge potential of the Android OS to deliver apps that meet the highest standards of technical excellence. By doing so, we provide very rich apps to our clients and thus play a very important role in helping them achieve their emphasized growth targets.</p>\r\n<p><strong>Android Development with us:</strong></p>\r\n<ul>\r\n<li>Android App GSM, EDGE, CDMA, Bluetooth, Wi-Fi, EV-DO and UMTS technologies to send/receive data across mobile networks.</li>\r\n<li>Android Apps that include libraries for 2D and 3D graphics.</li>\r\n<li>Android Apps Interprocess communication (IPC) message passing.</li>\r\n<li>Choosing a perfect Android App database: SQLite for data storage.</li>\r\n<li>Android App: P2P using Google Talk.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"ui-ux-points1 mobile-app-points\">\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4\"><img src=\"/themes/st_theme/images/mobile-app3.png\" alt=\"Windows App Development\" /></div>\r\n<div class=\"col-xs-12 col-sm-8 col-md-8 col-lg-8\">\r\n<h2>3. Windows App Development</h2>\r\n<p>Preeminent and innovative in establishing a User-friendly Operating system, next venture of Microsoft landed on making a creative genesis that could impact the Smart Phone world! \"Windows taking over Symbian\",turned a breakthrough, for the makers of the Windows Phone!</p>\r\n<p>Ark infotec developers are well versed with Windows Mobile Operating system. We believe that it\'s only the Users satisfaction that drives the success of any solution irrespective of the platform on which it is founded.</p>\r\n<p><strong> Our Process includes : </strong></p>\r\n<ul>\r\n<li>Windows App conceptualization and Design</li>\r\n<li>Porting and migration</li>\r\n<li>Windows App Testing &amp; Analysis.</li>\r\n<li>Windows App support, maintenance, and progressive upgrades.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),(11,11,'en-US','Products','<div class=\"inner-page-heading \">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<h1>Our Products</h1>\r\nAgile products built to redefine innovation and convenience.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\" ui-ux-cont\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\"><!--<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n                  <div class=\"mobile-app career\">\r\n                    <h2> The workplace </h2>\r\n                    <p> Together we work smart; Code, design and write great content.We brainstorm round-the-clock; we craft technology with passion and deliver the best in town..... And well, this is US!</p>\r\n                    <p> You get to work with the best tech heads in business, and we alsoopen up great opportunities to help you explore your inner potential. </p>\r\n                  </div>\r\n                </div>-->\r\n<div class=\"products-cont product1\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-5 col-md-5 col-lg-5\">\r\n<div class=\"productbg\">\r\n<div class=\"productbg2\"><img src=\"/themes/st_theme/images/product1.jpg\" alt=\"Hospital Management Software\" /></div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-7 col-md-7 col-lg-7 products-txt\">\r\n<h2>Hospital <br />Management<br />Software</h2>\r\n<p>A comprehensive Hospital Management Software tailor-made to fit needs of all sizes. Get to explore a whole new dimension of convenience with its best-in-class features and user interface. The HMS comes packed with multi-layer user control, quick appointment booking, easy billing and a lot more awesome features to discover.</p>\r\n<p><a class=\"btn readmore2\" href=\"/hospital-management-software\"> Read More </a></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"products-cont product1 product4\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-5 col-md-5 col-lg-5\">\r\n<div class=\"productbg\">\r\n<div class=\"productbg2\"><img src=\"/themes/st_theme/images/latch-note.jpg\" alt=\"Latch Note\" /></div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-7 col-md-7 col-lg-7 products-txt products-txt2\">\r\n<h2>Latch <br />Note</h2>\r\n<p>This handy app is a must have if you wish to keep your secrets locked away. Now you can lock your notes with a 4-digit pin and ensure only you have the key to unlock your secrets. You can also lock the whole app and keep it protected from imposters. Get to do all this and much more with this user-friendly and highly secure app.</p>\r\n<p><a class=\"btn readmore2\" href=\"/latch-note\"> Read More </a></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"products-cont product1 product3\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-5 col-md-5 col-lg-5\">\r\n<div class=\"productbg\">\r\n<div class=\"productbg2\"><img src=\"/themes/st_theme/images/product3.jpg\" alt=\"Sugar CRM\" /></div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-7 col-md-7 col-lg-7 products-txt products-txt3\">\r\n<h2>Work <br />Status<br />Tracker</h2>\r\n<p>Work and employee management has never been this easy. Get access to some of the finest features that make it easy to track work status and manpower attendance. You can now keep a close watch on the daily work status and attendance related activities with just a click. Explore a new level of flexibility with this feature-rich product.</p>\r\n<p><a class=\"btn readmore2\" href=\"work-status-tracker\"> Read More </a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),(12,12,'en-US','Hospital Management Software','<div class=\"inner-page-heading product-heading2\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-1 col-md-1 col-lg-1 arrow-left\"><a href=\"work-status-tracker\"><img src=\"/themes/st_theme/images/left.jpg\" alt=\"\" /></a></div>\r\n<div class=\"col-xs-12 col-sm-10 col-md-10 col-lg-10\">\r\n<h1>Hospital Management Software</h1>\r\n<p>User Friendly, flexible and cutting-edge features for a breath-taking experience</p>\r\n<p><a href=\"#\"><img src=\"/themes/st_theme/images/fb.png\" alt=\"facebook\" /></a> <a href=\"#\"><img src=\"/themes/st_theme/images/twitter.png\" alt=\"twitter\" /></a> <a href=\"#\"><img src=\"/themes/st_theme/images/gplus.png\" alt=\"google plus\" /></a> <a href=\"#\"><img src=\"/themes/st_theme/images/pintrest.png\" alt=\"pininterest\" /></a></p>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-1 col-md-1 col-lg-1 arrow-right\"><a href=\"/work-status-tracker\"><img src=\"/themes/st_theme/images/right.jpg\" alt=\"\" /></a></div>\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 product-laptop\"><img src=\"/themes/st_theme/images/product-laptop1.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\" ui-ux-cont product-details-cont1\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"plane1\"><img src=\"/themes/st_theme/images/plane1.png\" alt=\"\" /></div>\r\n<div class=\"plane2\"><img src=\"/themes/st_theme/images/plane2.png\" alt=\"\" /></div>\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 feature-heading\">\r\n<h2>Features</h2>\r\nAll that you ever wanted in a HMS!</div>\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4 feature1\">\r\n<p class=\"feature-icon\"><img src=\"/themes/st_theme/images/feature-icon1.png\" alt=\"Boost Performance\" /></p>\r\n<p><strong> Quick Customization </strong></p>\r\n<p>Get the software to work wonders for you. Customize features on the fly and make hospital administration a cakewalk.</p>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4 feature1\">\r\n<p class=\"feature-icon\"><img src=\"/themes/st_theme/images/feature-icon2.png\" alt=\"Easy to customize\" /></p>\r\n<p><strong> Greater Security </strong></p>\r\n<p>With role based access, get to experience control and security. You decide what other users should see or play around with.</p>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4 feature1\">\r\n<p class=\"feature-icon\"><img src=\"/themes/st_theme/images/feature-icon3.png\" alt=\"Modern design\" /></p>\r\n<p><strong> User-Centric </strong></p>\r\n<p>The software comes with sleek features that give a new level of convenience to the end-users. What else to ask for!</p>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4 feature1\">\r\n<p class=\"feature-icon\"><img src=\"/themes/st_theme/images/feature-icon4.png\" alt=\"Easy Tools navigation\" /></p>\r\n<p><strong> Incredible Looks </strong></p>\r\n<p>The HMS is one of its kinds with a fabulous user interface to work with. With smooth navigation and guided links, it’s easier than you think!</p>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4 feature1\">\r\n<p class=\"feature-icon\"><img src=\"/themes/st_theme/images/feature-icon5.png\" alt=\"Analysis and Reports\" /></p>\r\n<p><strong> Seamless Integration </strong></p>\r\n<p>Integrate external entities like pharmacy and laboratory with greater ease. Experience ease-of-accessibility with your data centralized.</p>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4 feature1\">\r\n<p class=\"feature-icon\"><img src=\"/themes/st_theme/images/feature-icon6.png\" alt=\"Simplified Workflow\" /></p>\r\n<p><strong> Better performance </strong></p>\r\n<p>With greater focus on optimization, the HMS takes its stand when it comes to delivering performance. And it’s nothing but the best!</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"product-details-cont2\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-6 col-lg-6\">\r\n<div class=\"screen1\"><img src=\"/themes/st_theme/images/screen1.png\" alt=\"\" /></div>\r\n<div class=\"shadow\"><img src=\"/themes/st_theme/images/shadow.png\" alt=\"\" /></div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-12 col-md-6 col-lg-6 product-description\">\r\n<div class=\"description-heading\">\r\n<h3>Description</h3>\r\nDiscover the ‘New’!</div>\r\n<p>The Hospital Management software is designed to make handling of hospital administration easier. The software revolves around the patients and has every feature to ensure that the end-user finds it convenient to use it at every stage of requirement. Moreover the high-end prescription module, Out-Patient / In-Patient module, Pharmacy Module &amp; Patient’s EPR menus are few of the many stunning highlights of the software. The software is built to the best keeping in mind data security to the minutest level. The USP is its awesome UI that gives life to daily monotonous administrative activities. All this and much more; only with our HMS!</p>\r\n<ul>\r\n<li>Role based access to core modules</li>\r\n<li>Easy-to-use prescription</li>\r\n<li>Convenient EPR menus for greater control on patient data</li>\r\n<li>OP/IP modules with a new look &amp; feel</li>\r\n<li>Personalized Dashboard with plug and play widgets</li>\r\n<li>Seamless integration of Pharmacy, Lab and other modules</li>\r\n<li>Quick links to core modules</li>\r\n<li>Robust &amp; highly secure</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"product-screenshot\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 product-screenshot-heading\">\r\n<h4>Quick Preview</h4>\r\nA sneak-peek into a fresh experience!</div>\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 owl-theme\"><!-- Set up your HTML -->\r\n<div id=\"productscreens\" class=\"owl-carousel hover-demo \">\r\n<div><img src=\"/themes/st_theme/images/slider-screen1.jpg\" alt=\"\" /></div>\r\n<div><img src=\"/themes/st_theme/images/slider-screen1.jpg\" alt=\"\" /></div>\r\n<div><img src=\"/themes/st_theme/images/slider-screen1.jpg\" alt=\"\" /></div>\r\n<div><img src=\"/themes/st_theme/images/slider-screen1.jpg\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n<div class=\"shadow\"><img src=\"/themes/st_theme/images/shadow.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),(13,13,'en-US','Platform','<div class=\"inner-page-heading \">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<h1>Platform</h1>\r\nThe platforms we work on are diverse and extensive in terms of scalability.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\" platform-cont\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4\">\r\n<div class=\"platform1\">\r\n<div class=\"platform1-heading\">CMS</div>\r\n<div class=\"platform1-icon\"><img src=\"/themes/st_theme/images/platform-icon1.png\" alt=\"CMS\" /></div>\r\n<p>Our SEO services are of the finest quality and are targeted towards improving your online visibility. With us your brand will steal the limelight no matter what!</p>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4\">\r\n<div class=\"platform1 platform2\">\r\n<div class=\"platform1-heading\">CRM</div>\r\n<div class=\"platform1-icon\"><img src=\"/themes/st_theme/images/platform-icon2.png\" alt=\"CRM\" /></div>\r\n<p>Effective customer relationship management solutions that brings in greater transparency</p>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4\">\r\n<div class=\"platform1 platform3\">\r\n<div class=\"platform1-heading\">eCommerce</div>\r\n<div class=\"platform1-icon\"><img src=\"/themes/st_theme/images/platform-icon3.png\" alt=\"eCommerce\" /></div>\r\n<p>Robust online platforms to build high-end web marketplaces</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),(14,14,'en-US','CMS','<div class=\"inner-page-heading \">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<h1>Content Management System</h1>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"cms-cont\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-6 col-md-4 col-lg-4\">\r\n<div class=\"cms-1\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"/themes/st_theme/images/cms1.png\" alt=\"WordPress\" /></p>\r\n<p>WordPress</p>\r\n</div>\r\n<div class=\"cms-txt\">With themes and plugins, Wordpress is extremely search-engine friendly. With almost 27% of the top websites powered by Wordpress, this open source CMS makes customizations a cakewalk. The plugin-in architecture along with the template structure makes Wordpress extremely reliable for blog management. Moreover Wordpress is flexible since it supports creation of multiple categories for publishing posts and comes with an integrated link management system.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-4 col-lg-4\">\r\n<div class=\"cms-1\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"/themes/st_theme/images/cms2.png\" alt=\"Joomla\" /></p>\r\n<p>Joomla</p>\r\n</div>\r\n<div class=\"cms-txt\">High end features and free commercial extensions makes it the user\'s best pick. Joomla is absolutely free, open source and also an independently usable framework. With the heart of this CMS built in PHP, it uses more of the OOPs techniques like page caching and support for multiple languages. It offers a great deal of commercial extensions making it one of the widely used content management systems.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-4 col-lg-4\">\r\n<div class=\"cms-1\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"/themes/st_theme/images/cms3.png\" alt=\"Concrete5\" /></p>\r\n<p>Concrete5</p>\r\n</div>\r\n<div class=\"cms-txt\">User friendly and competent features like in-context editing. Concrete5 is an open source SMS which supports content publishing on the World Wide Web. It is also a powerful enough in the intranet as well. This CMS calls for minimal technical know-how since it supports version management for each and every page. Features like embedded editor, integrated server caching and search engine optimization gave this CMS a cutting-edge in conversion rates and user engagement.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-4 col-lg-4\">\r\n<div class=\"cms-1\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"/themes/st_theme/images/cms4.png\" alt=\"October\" /></p>\r\n<p>October</p>\r\n</div>\r\n<div class=\"cms-txt\">Self hosted CMS built with PHP and Laravel framework. It also extends support to MySQL and SQLite for an effective backend management. October CMS is popular for its simplicity since it makes design, editing and development of a website quite easier. October CMS is prominently used as themes which power simple and complicated web developments. The concept of user permissions and plugins make this platform highly scalable and user-friendly.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-4 col-lg-4\">\r\n<div class=\"cms-1\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"/themes/st_theme/images/cms5.png\" alt=\"Typo3\" /></p>\r\n<p>Typo3</p>\r\n</div>\r\n<div class=\"cms-txt\">Free and open source CMS running on multi-servers. Typo3 is written in PHP and distributed under the General Public License. This is CMS is flexible since it allows writing of new functions without having to draft any code. The software comes with multilingual support and is said to house almost 50 languages. A built-in system allows users to publish content in any one of the 50 languages of their choice. This makes Typo3 extremely user-friendly and scalable.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-4 col-lg-4\">\r\n<div class=\"cms-1\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"/themes/st_theme/images/cms6.png\" alt=\"Drupal\" /></p>\r\n<p>Drupal</p>\r\n</div>\r\n<div class=\"cms-txt\">open source CMS written on PHP that provides a robust backend framework for countless websites across the globe. Drupal is the backbone for about 2.3% of websites since it powers everything from a simple blog to a powerful government website. With features like account registration to page layout customization, Drupal favours developers to a major extent. Modules and themes make this platform convenient to use and easy to customize.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),(15,15,'en-US','CRM','<div class=\"inner-page-heading \">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<h1>Customer Relationship Management</h1>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"cms-cont\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6\">\r\n<div class=\"cms-1 crm\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"/themes/st_theme/images/sf.png\" alt=\"SalesForce\" /></p>\r\n<p><strong>SalesForce</strong></p>\r\n</div>\r\n<div class=\"cms-txt\">Effective solutions for task management and customer tracking. Salesforce majorly pulls in revenue from the fact that it is one of the most powerful customer relationship management tool. However the commercial applications that it houses, has a major share in profit generation. Force, Work, Data, Desk and its other variants makes CRM flexible and convenient. It also extends support for web service API that makes integration with other platforms almost seamless and efficient.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6\">\r\n<div class=\"cms-1 crm\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"/themes/st_theme/images/sc.png\" alt=\"SugarCRM\" /></p>\r\n<p>SugarCRM</p>\r\n</div>\r\n<div class=\"cms-txt\">Greater support for marketing campaigns, collaboration and customer support. SugarCRM generates Sugar which is a web application to power the customer relationship management system. It supports sales force automation and reporting facilities which makes it a popular platform for handling public relations. SugarCRM comes in 4 editions and flexible deployment options make this platform durable and flexible to use.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),(16,16,'en-US','eCommerce','<div class=\"inner-page-heading \">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<h1>e-Commerce</h1>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"cms-cont\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6\">\r\n<div class=\"cms-1 ecommerce1\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"/themes/st_theme/images/ecommerce1.png\" alt=\"Magento\" /></p>\r\n<p><strong>Magento</strong></p>\r\n</div>\r\n<div class=\"cms-txt\">Open source ecommerce platform supporting higher conversion rates. Magento comes with better user engagement and effective navigation. It houses a plethora of business tools which lead to a better user experience. With 2 distinct platforms of Magento Commerce and Open Source which allow addition of new plugins and implementation of core files with ease.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6\">\r\n<div class=\"cms-1 ecommerce1\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"/themes/st_theme/images/ecommerce2.png\" alt=\"OpenCart\" /></p>\r\n<p>OpenCart</p>\r\n</div>\r\n<div class=\"cms-txt\">\r\n<p>PHP, Mysql based ecommerce platform with multilingual support. OpenCart is an online store management software that is built on a few other HTML components. Moreover it offers support for multiple currencies and is distributed freely under the General Public License.This software has undergone multiple revamp sessions and with each launch a commendable feature has been added to OpenCart. This eCommerce platform has gained popularity over the years for its ease of use.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6\">\r\n<div class=\"cms-1 ecommerce1\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"/themes/st_theme/images/ecommerce3.png\" alt=\"Shopify\" /></p>\r\n<p><strong>Shopify</strong></p>\r\n</div>\r\n<div class=\"cms-txt\">Open source ecommerce platform supporting higher conversion rates. Magento comes with better user engagement and effective navigation. It houses a plethora of business tools which lead to a better user experience. With 2 distinct platforms of Magento Commerce and Open Source which allow addition of new plugins and implementation of core files with ease.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6\">\r\n<div class=\"cms-1 ecommerce1\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"/themes/st_theme/images/ecommerce4.png\" alt=\"WooCommerce\" /></p>\r\n<p>WooCommerce</p>\r\n</div>\r\n<div class=\"cms-txt\">Greater support for marketing campaigns, collaboration and customer support. SugarCRM generates Sugar which is a web application to power the customer relationship management system. It supports sales force automation and reporting facilities which makes it a popular platform for handling public relations. SugarCRM comes in 4 editions and flexible deployment options make this platform durable and flexible to use.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),(17,17,'en-US','Technologies','<div class=\"inner-page-heading \">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<h1>Technologies</h1>\r\nHigh-end technologies wrapped in time-tested expertise</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\" platform-cont\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4 col-lg-offset-2\">\r\n<div class=\"platform1\">\r\n<div class=\"platform1-heading\">Open Source</div>\r\n<div class=\"platform1-icon\"><img src=\"/themes/st_theme/images/tech1.png\" alt=\"Open Source\" /></div>\r\n<p>Flexible and free to use, the power of open-source is yet to unleash</p>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4\">\r\n<div class=\"platform1 platform2\">\r\n<div class=\"platform1-heading\">Cloud</div>\r\n<div class=\"platform1-icon\"><img src=\"/themes/st_theme/images/tech2.png\" alt=\"Cloud\" /></div>\r\n<p>Adept and ubiquitous access to shared resources with ease of use</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),(18,18,'en-US','Cloud','<div class=\"inner-page-heading \">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<h1>Open Source</h1>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"cms-cont\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6\">\r\n<div class=\"cms-1 crm\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"themes/st_theme/images/could1.png\" alt=\"Amazon Web Services\" /></p>\r\n<p><strong>Amazon Web Services</strong></p>\r\n</div>\r\n<div class=\"cms-txt\">\r\n<p>On-demand cloud services with large scale computing capabilities. AWS offers greater computing capacity and offers atabase storage. This helps your business scale from all fronts. Amazon Web Services are unique and reliable that contributes towards building sophisticated applications. Customers can customize the services to fit their requirement with its ease-of-use deployment services.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6\">\r\n<div class=\"cms-1 crm\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"themes/st_theme/images/could2.png\" alt=\"Google Cloud Platform\" /></p>\r\n<p>Google Cloud Platform</p>\r\n</div>\r\n<div class=\"cms-txt\">\r\n<p>Modular cloud services with greater data storage and analytics capacity. The cloud services of Google are powered by the same infrastructure that it uses to fuel its other core products. It offers modular services that make it possible to empower machine learning. The platform has been updated to accommodate even more competent features in the long run.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6  col-md-offset-3 col-lg-offset-3\">\r\n<div class=\"cms-1 crm\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"themes/st_theme/images/could3.png\" alt=\"Microsoft Azure\" /></p>\r\n<p><strong>Microsoft Azure</strong></p>\r\n</div>\r\n<div class=\"cms-txt\">Cross platform, open source technology that fuels Javascript execution. Node.js is extremely fast and supports event driven programming. Its asynchronous functioning and single-thread based functioning make it highly scalable. Node.js reduces processing time extensively and ensures faster execution of applications. Being open source adding new features is extremely easy.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6\"> </div>\r\n</div>\r\n</div>\r\n</div>'),(19,19,'en-US','Open Source','<div class=\"inner-page-heading \">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<h1>Open Source</h1>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"cms-cont\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6\">\r\n<div class=\"cms-1 crm\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"/themes/st_theme/images/opensource1.png\" alt=\"PHP\" /></p>\r\n<p><strong>PHP</strong></p>\r\n</div>\r\n<div class=\"cms-txt\">Popular server-side scripting language that comes free and open sourced. PHP is free to download and is highly efficient. This interpreted language is faster at the same simple with respect to the coding aspect. PHP is platform independent and runs across platform offering greater scalability. A key feature of the language isits portability that allows it function on divergent operating systems.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6\">\r\n<div class=\"cms-1 crm\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"/themes/st_theme/images/opensource2.png\" alt=\"Ruby on Rails\" /></p>\r\n<p>Ruby on Rails</p>\r\n</div>\r\n<div class=\"cms-txt\">Model-view controller with default builds for database and web pages. The MVC structure allows data to be distinguished from its display or presentation. Ruby-on-rails has its own Database Library which simplifies the process of data handling to a major extent. Coding is simplified with its general access to a host of libraries. Session Management and its extensive Ajax functions make this platform more robust. This framework supports the generation of search-engine friendly URLs.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6\">\r\n<div class=\"cms-1 crm\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"/themes/st_theme/images/opensource3.png\" alt=\"Node.js\" /></p>\r\n<p>Node.js</p>\r\n</div>\r\n<div class=\"cms-txt\">Cross platform, open source technology that fuels Javascript execution. Node.js is extremely fast and supports event driven programming. Its asynchronous functioning and single-thread based functioning make it highly scalable. Node.js reduces processing time extensively and ensures faster execution of applications. Being open source adding new features is extremely easy.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6\">\r\n<div class=\"cms-1 crm\">\r\n<div class=\"cms-icon\">\r\n<p><img src=\"/themes/st_theme/images/opensource4.png\" alt=\"PYTHON\" /></p>\r\n<p>PYTHON</p>\r\n</div>\r\n<div class=\"cms-txt\">High end, general purpose programming language with greater code readability. The pseudo-code behaviour of the language is one of its competent features.Its simple and easy to learn. Being a high level language its absolutely portable and extensible. A set of standard libraries in Python and its document generation features make it highly flexible. Moreover Python excels when it comes to performance and reuse of existing structure.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),(21,21,'en-US','Work Status Tracker','<div class=\"inner-page-heading product-heading2\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-1 col-md-1 col-lg-1 arrow-left\"><a href=\"/hospital-management-software\"><img src=\"/themes/st_theme/images/left.jpg\" alt=\"\" /></a></div>\r\n<div class=\"col-xs-12 col-sm-10 col-md-10 col-lg-10\">\r\n<h1>WORK STATUS TRACKER</h1>\r\n<p>A one stop shop for all your employee task management needs</p>\r\n<p><a href=\"#\"><img src=\"/themes/st_theme/images/fb.png\" alt=\"facebook\" /></a> <a href=\"#\"><img src=\"/themes/st_theme/images/twitter.png\" alt=\"twitter\" /></a> <a href=\"#\"><img src=\"/themes/st_theme/images/gplus.png\" alt=\"google plus\" /></a> <a href=\"#\"><img src=\"/themes/st_theme/images/pintrest.png\" alt=\"pininterest\" /></a></p>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-1 col-md-1 col-lg-1 arrow-right\"><a href=\"hospital-management-software\"><img src=\"/themes/st_theme/images/right.jpg\" alt=\"\" /></a></div>\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 product-laptop\"><img src=\"/themes/st_theme/images/product-laptop1.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\" ui-ux-cont product-details-cont1\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"plane1\"><img src=\"/themes/st_theme/images/plane1.png\" alt=\"\" /></div>\r\n<div class=\"plane2\"><img src=\"/themes/st_theme/images/plane2.png\" alt=\"\" /></div>\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 feature-heading\">\r\n<h2>Features</h2>\r\nAll that you ever wanted in a WST!</div>\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4 feature1\">\r\n<p class=\"feature-icon\"><img src=\"/themes/st_theme/images/feature-icon1.png\" alt=\"Boost Performance\" /></p>\r\n<p><strong> One Access </strong></p>\r\n<p>Get a centralized access to all your employee’s worked hours and get daily work status updates directly from them.</p>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4 feature1\">\r\n<p class=\"feature-icon\"><img src=\"/themes/st_theme/images/feature-icon2.png\" alt=\"Easy to customize\" /></p>\r\n<p><strong> Better Monitoring </strong></p>\r\n<p>Now you can keep a better check on your employee’s work timings, tasks done by them and their comprehensive attendance log.</p>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4 feature1\">\r\n<p class=\"feature-icon\"><img src=\"/themes/st_theme/images/feature-icon3.png\" alt=\"Modern design\" /></p>\r\n<p><strong> Higher Control </strong></p>\r\n<p>Create sub-users and grant admin rights for greater control over attendance management and daily activity tracking.</p>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4 feature1\">\r\n<p class=\"feature-icon\"><img src=\"/themes/st_theme/images/feature-icon4.png\" alt=\"Easy Tools navigation\" /></p>\r\n<p><strong> Elegant UI </strong></p>\r\n<p>The user interface is extremely friendly with a customized dashboard that support centralized views of employee work activities.</p>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4 feature1\">\r\n<p class=\"feature-icon\"><img src=\"/themes/st_theme/images/feature-icon5.png\" alt=\"Analysis and Reports\" /></p>\r\n<p><strong> Organized Reports </strong></p>\r\n<p>Get to view customized reports generated on the daily status and attendance logs of the employees.</p>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-4 col-md-4 col-lg-4 feature1\">\r\n<p class=\"feature-icon\"><img src=\"/themes/st_theme/images/feature-icon6.png\" alt=\"Simplified Workflow\" /></p>\r\n<p><strong> Flawless Management </strong></p>\r\n<p>Now managing employee attendance and work status is as easy as you think. Handle all processes with greater visibility and flexibility.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"product-details-cont2\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-6 col-lg-6\">\r\n<div class=\"screen1\"><img src=\"/themes/st_theme/images/screen1.png\" alt=\"\" /></div>\r\n<div class=\"shadow\"><img src=\"/themes/st_theme/images/shadow.png\" alt=\"\" /></div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-12 col-md-6 col-lg-6 product-description\">\r\n<div class=\"description-heading\">\r\n<h3>Description</h3>\r\nGet to experience total convenience!</div>\r\n<p>The Work Status Tracker is a comprehensive software that allows users to manage employee attendance and daily work activities; all at one place. Moreover the friendly UI makes it easy to access all core entities of the employee management processes. Users can take a quick view of the in-time and out-time status of employees. They have access to the employee’s worksheet with a summary of the daily activities. Users can view month-wise reports, accept/decline leave and permission requests, update public holidays, activate or deactivate employees with just a click. Get to do more with this all-in-one software that gives you greater access to your management needs.</p>\r\n<ul>\r\n<li>Track daily attendance</li>\r\n<li>Track daily work status</li>\r\n<li>Accept/ Decline leave requests and permissions</li>\r\n<li>Customized dashboard for centralized view</li>\r\n<li>Schedule timely meetings with the team</li>\r\n<li>Update holidays and send bulk or private mails to employees</li>\r\n<li>Feasible complaint handling</li>\r\n<li>Integrate Biometric attendance with the software</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"product-screenshot\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 product-screenshot-heading\">\r\n<h4>Quick Preview</h4>\r\nA sneak-peek into a fresh experience!</div>\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 owl-theme\"><!-- Set up your HTML -->\r\n<div id=\"productscreens\" class=\"owl-carousel hover-demo \">\r\n<div><img src=\"/themes/st_theme/images/slider-screen1.jpg\" alt=\"\" /></div>\r\n<div><img src=\"/themes/st_theme/images/slider-screen1.jpg\" alt=\"\" /></div>\r\n<div><img src=\"/themes/st_theme/images/slider-screen1.jpg\" alt=\"\" /></div>\r\n<div><img src=\"/themes/st_theme/images/slider-screen1.jpg\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n<div class=\"shadow\"><img src=\"/themes/st_theme/images/shadow.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),(22,22,'en-US','Data Analytics','<div class=\"inner-page-heading \">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<h1>Data Analytics</h1>\r\nThe power of user behaviour now in your hands</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\" ui-ux-cont\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<div class=\"data-analytics\">\r\n<p>It\'s all about \'DATA\'. Your company\'s progress is always associated with the effective utilization of data.</p>\r\n<p>A phase-shift approach is required for handling voluminous data, and that\'s when Data transforms into Intelligence; Making your data turn into meaningful insights!</p>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 data-analytics-heading\">\r\n<h2>Understanding DATA Insights from Sumanas</h2>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6\">\r\n<div class=\"data-analytics-cont\">\r\n<div class=\"data-analytics-icon\"><img src=\"/themes/st_theme/images/data-analytics1.png\" alt=\"Next-Gen Analytics\" /></div>\r\n<h4>1.Next-Gen Analytics</h4>\r\n<p>A little extra is always loved! With Next Gen Analytics in pace, we transform voluminous data into Big data visualization.</p>\r\n<p>Deploying Next-Gen Analytics keeps you closer to the consumers, strengthens decision-making, improved value chain insights and helps in perfect data analysis.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6\">\r\n<div class=\"data-analytics-cont\">\r\n<div class=\"data-analytics-icon\"><img src=\"/themes/st_theme/images/data-analytics2.png\" alt=\"Data Visualization\" /></div>\r\n<h4>2.Data Visualization</h4>\r\n<p>Presenting Data Visually\' in a pictorial or graphical format. With Data visualization technique, new patterns and difficult concepts could be significantly understood.</p>\r\n<p>A wise investment you make to your Big data Future.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6\">\r\n<div class=\"data-analytics-cont\">\r\n<div class=\"data-analytics-icon\"><img src=\"/themes/st_theme/images/data-analytics3.png\" alt=\"Business Intelligence\" /></div>\r\n<h4>3.Business Intelligence</h4>\r\n<p>Business Intelligence enables you to know more about the Business and the Market. Incorporating Business Intelligence techniques would improve the agility and efficiency of the organization.</p>\r\n<p>At Sumanas we believe delivering right information to correct people at perfect time is the best strategy for adapting Business Intelligence.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-6\">\r\n<div class=\"data-analytics-cont\">\r\n<div class=\"data-analytics-icon\"><img src=\"/themes/st_theme/images/data-analytics4.png\" alt=\"Big Data\" /></div>\r\n<h4>4.Big Data</h4>\r\n<p>Big data is the new buzz in town. So let\'s get to know what is \'Big data?\'</p>\r\n<p>Channelizing Structured and Unstructured data and transforming it into meaningful data and we do it the right way!</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),(23,23,'en-US','Latch Note','<div class=\"inner-page-heading \">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\r\n<h1>LATCH NOTE</h1>\r\n<p>Lock away your secrets with the key only known to you!</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"app-cont\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 col-sm-6 col-md-5 col-lg-4 col-md-offset-1 col-lg-offset-2 app-img\"><img src=\"/themes/st_theme/images/latch-note.png\" alt=\"\" /></div>\r\n<div class=\"col-xs-12 col-sm-6 col-md-5 col-lg-4 app-details\">\r\n<h2>Features</h2>\r\n<p>Now your secrets will remain a secret with \'Latch Note\'. This innovative app allows you to lock all your notes with a 4-digit pin. Your data remains safe in your hands with this app. You can add new notes, edit and delete them on the fly. Want more? You can lock the whole app with a pin and no one will ever get to peek into it. The chic design and decluttered views will give you a stunning user experience. Now the key to your secrets will always be yours!</p>\r\n<ul>\r\n<li>Lock/Unlock notes with a 4-digit pin</li>\r\n<li>View/Add/Edit/Delete notes</li>\r\n<li>Center lock the App</li>\r\n<li>Quick pin retrieval</li>\r\n<li>Change pin in a jiffy</li>\r\n</ul>\r\n<p><a href=\"https://play.google.com/store/apps/details?id=com.locknotes.arkinfotec7.locknotes\"><img src=\"/themes/st_theme/images/android-app.png\" alt=\"\" /></a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>');

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0-pending,1-published',
  `comment_status` int(1) NOT NULL DEFAULT '1' COMMENT '0-closed,1-open',
  `thumbnail` varchar(255) DEFAULT NULL,
  `published_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `revision` int(1) NOT NULL DEFAULT '1',
  `view` varchar(255) NOT NULL DEFAULT 'post',
  `layout` varchar(255) NOT NULL DEFAULT 'main',
  PRIMARY KEY (`id`),
  KEY `post_slug` (`slug`),
  KEY `post_category_id` (`category_id`),
  KEY `post_status` (`status`),
  KEY `fk_page_created_by` (`created_by`),
  KEY `fk_page_updated_by` (`updated_by`),
  CONSTRAINT `fk_page_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_page_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_post_category_id` FOREIGN KEY (`category_id`) REFERENCES `post_category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `post` */

/*Table structure for table `post_category` */

DROP TABLE IF EXISTS `post_category`;

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) NOT NULL,
  `visible` int(11) NOT NULL DEFAULT '1' COMMENT '0-hidden,1-visible',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `left_border` int(11) NOT NULL,
  `right_border` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_category_slug` (`slug`),
  KEY `post_category_visible` (`visible`),
  KEY `left_border` (`left_border`,`right_border`),
  KEY `right_border` (`right_border`),
  KEY `fk_post_category_created_by` (`created_by`),
  KEY `fk_post_category_updated_by` (`updated_by`),
  CONSTRAINT `fk_post_category_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_post_category_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `post_category` */

insert  into `post_category`(`id`,`slug`,`visible`,`created_at`,`updated_at`,`created_by`,`updated_by`,`left_border`,`right_border`,`depth`) values (1,'root',0,1505536213,NULL,NULL,NULL,0,2147483647,0),(2,'first-category',1,1505536248,1505536248,1,1,42107523,84215044,1),(3,'clients',1,1505822409,1505823786,1,1,126322567,168430088,1);

/*Table structure for table `post_category_lang` */

DROP TABLE IF EXISTS `post_category_lang`;

CREATE TABLE `post_category_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_category_id` int(11) DEFAULT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `post_category_lang_id` (`post_category_id`),
  KEY `post_category_lang_language` (`language`),
  CONSTRAINT `fk_post_category_lang` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `post_category_lang` */

insert  into `post_category_lang`(`id`,`post_category_id`,`language`,`title`,`description`) values (1,1,'en-US','First Category',NULL),(2,3,'en-US','Clients','');

/*Table structure for table `post_lang` */

DROP TABLE IF EXISTS `post_lang`;

CREATE TABLE `post_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` text,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `post_lang_post_id` (`post_id`),
  KEY `post_lang_language` (`language`),
  CONSTRAINT `fk_post_lang` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `post_lang` */

/*Table structure for table `post_tag` */

DROP TABLE IF EXISTS `post_tag`;

CREATE TABLE `post_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tag_slug` (`slug`),
  KEY `fk_post_tag_created_by` (`created_by`),
  KEY `fk_post_tag_updated_by` (`updated_by`),
  CONSTRAINT `fk_post_tag_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_post_tag_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `post_tag` */

insert  into `post_tag`(`id`,`slug`,`created_at`,`updated_at`,`created_by`,`updated_by`) values (1,'yee-cms',1505536248,1505536248,1,1),(2,'yii2',1505536248,1505536248,1,1);

/*Table structure for table `post_tag_lang` */

DROP TABLE IF EXISTS `post_tag_lang`;

CREATE TABLE `post_tag_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_tag_id` int(11) DEFAULT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tag_lang_id` (`post_tag_id`),
  KEY `post_tag_lang_language` (`language`),
  CONSTRAINT `fk_post_tag_lang` FOREIGN KEY (`post_tag_id`) REFERENCES `post_tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `post_tag_lang` */

insert  into `post_tag_lang`(`id`,`post_tag_id`,`language`,`title`) values (1,1,'en-US','YeeCMS'),(2,2,'en-US','Yii2');

/*Table structure for table `post_tag_post` */

DROP TABLE IF EXISTS `post_tag_post`;

CREATE TABLE `post_tag_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_post_tag_post_id` (`post_id`),
  KEY `fk_post_tag_tag_id` (`tag_id`),
  CONSTRAINT `fk_post_tag_post_id` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_post_tag_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `post_tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `post_tag_post` */

/*Table structure for table `seo` */

DROP TABLE IF EXISTS `seo`;

CREATE TABLE `seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(127) NOT NULL DEFAULT '',
  `keywords` text,
  `description` text,
  `index` smallint(6) NOT NULL DEFAULT '1',
  `follow` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`),
  UNIQUE KEY `seo_url` (`url`),
  KEY `seo_created_by` (`created_by`),
  KEY `seo_author` (`created_by`),
  KEY `fk_seo_updated_by` (`updated_by`),
  CONSTRAINT `fk_seo_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_seo_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `seo` */

insert  into `seo`(`id`,`url`,`title`,`author`,`keywords`,`description`,`index`,`follow`,`created_at`,`updated_at`,`created_by`,`updated_by`) values (1,'/en','Homepage','Site Owner','yii2, cms, yeecms','Seo meta description',1,1,1452544164,1452545049,1,1),(2,'/site/contact','','','','',1,1,1505742356,1505742356,1,1);

/*Table structure for table `setting` */

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(64) DEFAULT 'general',
  `key` varchar(64) NOT NULL,
  `language` varchar(6) DEFAULT NULL,
  `value` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `setting_group_lang` (`group`,`key`,`language`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `setting` */

insert  into `setting`(`id`,`group`,`key`,`language`,`value`,`description`) values (1,'general','title','en-US','My site',NULL),(2,'general','description','en-US','',NULL),(4,'general','timezone',NULL,'Asia/Kolkata',NULL),(5,'general','dateformat',NULL,'medium',NULL),(6,'general','timeformat',NULL,'hh:mm a',NULL),(10,'general','alt_phone',NULL,'+91 98947 32541 ',NULL),(11,'general','address',NULL,'No:01, Gandhiji St,\r\nRasi Towers, Near Aparna Enclave,\r\nVelmurgan Nagar, Bypass Road,\r\nMadurai – 625010.',NULL),(12,'general','facebook',NULL,'',NULL),(13,'general','twitter',NULL,'https://twitter.com/sumanastech',NULL),(14,'general','gplus',NULL,'https://plus.google.com/+SumanasTech',NULL),(15,'general','linkedin',NULL,'',NULL),(16,'general','mobile',NULL,'+91 98947 25600',NULL),(17,'general','email',NULL,'test@gmail.com',NULL),(18,'general','pinterest',NULL,'https://www.pinterest.com/sumanastech/',NULL);

/*Table structure for table `team` */

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `designation` text,
  `hobbies1` varchar(255) NOT NULL,
  `hobbies2` varchar(255) NOT NULL,
  `hobbies3` varchar(255) NOT NULL,
  `hobbies4` varchar(255) NOT NULL,
  `hobbies5` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `visible` int(11) NOT NULL DEFAULT '1' COMMENT '0-hidden,1-visible',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_team_created_by` (`created_by`),
  KEY `fk_team_updated_by` (`updated_by`),
  CONSTRAINT `fk_team_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_team_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `team` */

insert  into `team`(`id`,`slug`,`title`,`designation`,`hobbies1`,`hobbies2`,`hobbies3`,`hobbies4`,`hobbies5`,`thumbnail`,`visible`,`created_at`,`updated_at`,`created_by`,`updated_by`) values (1,'rajendran','Rajendran','Director/Founder','Music','Meet-ups','Movies','Food','Driving','/uploads/2017/09/team1-400x300.jpg',1,1506597513,1506605638,1,1),(2,'gayatri','Gayatri','Director-Operations','Travel','Good Reads','Vegan Food','Music','Languages','/uploads/2017/09/team3-400x300.jpg',1,1506605273,1506607418,1,1),(3,'arivu','Arivu','Tech Lead','Rain','Bonsai','Crafting','Farming','Roaming','/uploads/2017/09/team2-400x300.jpg',1,1506605415,1506607481,1,1),(4,'nadesh','Nadesh','Senior PHP Developer','Travelling','Cricket','Swimming','Movies','Patriotic Books','/uploads/2017/09/team4-400x300.jpg',1,1506605620,1506605620,1,1),(5,'prakash','Prakash','Senior PHP Developer','Movies','Cricket','Shawarma','Long Drives','Chess','/uploads/2017/09/team5-400x300.jpg',1,1506605746,1506605746,1,1),(6,'vasanth','Vasanth','Senior PHP Developer','Programming','Universal Learning','Music','Trekking','Long Drives','/uploads/2017/09/team7-400x300.jpg',1,1506605871,1506607604,1,1),(8,'mari','Mariselvam','Senior UI/UX Designer','Designing','Music','Non-Vegan','Reality Show','Travel','/uploads/2017/09/mari-400x300.jpg',1,1506606370,1506607670,1,1),(9,'udhaya','Udhaya','Senior Android Developer','Reading','FM Music','Net Surfing','Indoor Games','Cooking','/uploads/2017/09/team-400x300.jpg',1,1506606436,1506606436,1,1),(10,'shamir','Shamir','Senior SEO Analyst','Reading','Digital Marketing','Sleeping','Cricket','Movies','/uploads/2017/09/team9-400x300.jpg',1,1506606538,1506606538,1,1),(11,'shamir','Shamir','Senior SEO Analyst','Reading','Digital Marketing','Sleeping','Cricket','Movies','/uploads/2017/09/team9-400x300.jpg',1,1506606538,1506606538,1,1),(12,'nachi','Nachi','PHP Developer','Swimming','Briyani','Programming','VolleyBall','Music','/uploads/2017/09/team10-400x300.jpg',1,1506606610,1506606610,1,1),(13,'nachi','Nachi','PHP Developer','Swimming','Briyani','Programming','VolleyBall','Music','/uploads/2017/09/team10-400x300.jpg',1,1506606610,1506606610,1,1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `superadmin` int(6) DEFAULT '0',
  `registration_ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bind_to_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_confirmed` int(1) DEFAULT '0',
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8_unicode_ci,
  `first_name` varchar(124) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(124) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_day` int(2) DEFAULT NULL,
  `birth_month` int(2) DEFAULT NULL,
  `birth_year` int(4) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `phone` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`,`superadmin`,`registration_ip`,`bind_to_ip`,`email_confirmed`,`confirmation_token`,`avatar`,`first_name`,`last_name`,`birth_day`,`birth_month`,`birth_year`,`gender`,`phone`,`skype`,`info`) values (1,'admin','','$2y$13$j7P.ullJhrfAkQzIS4Ug1Ou3cMJyVWIdvA6jkqhQEP4vOiU0D00ca',NULL,'admin@gmail.com',10,0,0,1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `user_setting` */

DROP TABLE IF EXISTS `user_setting`;

CREATE TABLE `user_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `user_setting_user_key` (`user_id`,`key`),
  CONSTRAINT `fk_user_id_user_setting_table` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_setting` */

/*Table structure for table `user_visit_log` */

DROP TABLE IF EXISTS `user_visit_log`;

CREATE TABLE `user_visit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `language` varchar(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `browser` varchar(30) NOT NULL,
  `os` varchar(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `visit_log_user_id` (`user_id`),
  CONSTRAINT `fk_user_id_user_visit_log_table` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `user_visit_log` */

insert  into `user_visit_log`(`id`,`token`,`ip`,`language`,`user_agent`,`browser`,`os`,`user_id`,`visit_time`) values (1,'59c35eb931219','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36','Chrome','Linux',1,1505975993),(2,'59c3861be3096','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36','Chrome','Linux',1,1505986075),(3,'59c609218e282','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36','Chrome','Linux',1,1506150689),(4,'59cb70d45860d','127.0.0.1','en','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36','Chrome','Linux',1,1506504916);

/*Table structure for table `works` */

DROP TABLE IF EXISTS `works`;

CREATE TABLE `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` text,
  `thumbnail` varchar(255) DEFAULT NULL,
  `visible` int(11) NOT NULL DEFAULT '1' COMMENT '0-hidden,1-visible',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_works_created_by` (`created_by`),
  KEY `fk_works_updated_by` (`updated_by`),
  CONSTRAINT `fk_works_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_works_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `works` */

insert  into `works`(`id`,`slug`,`title`,`link`,`thumbnail`,`visible`,`created_at`,`updated_at`,`created_by`,`updated_by`) values (2,'breton-jobs','Breton Jobs','http://bretonjobs.com/','/uploads/2017/09/project1-400x300.jpg',1,1506505406,1506505406,1,1),(3,'opti-guide','Opti-Guide','http://www.opti-guide.com/','/uploads/2017/09/project2-400x300.jpg',1,1506505537,1506505537,1,1),(4,'signsny','SignsNY','http://www.signsny.com/','/uploads/2017/09/project3-400x300.jpg',1,1506505591,1506505591,1,1),(5,'brooklyn-signs','Brooklyn Signs','http://www.brooklynsigns.com/','/uploads/2017/09/project4-400x300.jpg',1,1506505655,1506505655,1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
