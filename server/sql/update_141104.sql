alter table `config_used_log` add column `consumer_profile` varchar(50) not null default '' comment 'consumer的具体profile' after `source_profile`, add unique key `uniq_source_group_id_data_id_ip_port` (`source_group_id`,`source_data_id`,`ip`,`port`),drop index `uniq_source_group_id_data_id_profile_ip_port`;