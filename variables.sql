SELECT @@innodb_buffer_pool_instances,
	@@innodb_buffer_pool_size,
	@@thread_stack,
	@@net_buffer_length,
	@@innodb_sort_buffer_size,
    @@innodb_log_file_size,
    @@innodb_flush_log_at_trx_commit,
    @@sync_binlog,
    @@innodb_flush_method,
    @@innodb_thread_concurrency,
    @@innodb_adaptive_hash_index,
    @@query_cache_type,
    @@innodb_checksum_algorithm,
	@@max_connections;

SELECT @@innodb_flush_method;
SELECT @@long_query_time;

SHOW GLOBAL variables LIKE "%slow%";

SET GLOBAL slow_query_log = "ON";
flush logs;
SET GLOBAL long_query_time = 0;

SHOW engine innodb status;
select sleep(60);
SHOW engine InnoDB status;

// Percona PT Query Toolkit
wget percona.com/get/pt-query-digest
