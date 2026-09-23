.class Landroidx/work/impl/WorkDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/work/impl/WorkDatabase_Impl;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->a:Landroidx/work/impl/WorkDatabase_Impl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))"

    .line 17
    .line 18
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    .line 22
    .line 23
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `WorkSpec` (`period_start_time`)"

    .line 27
    .line 28
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 32
    .line 33
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)"

    .line 37
    .line 38
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 42
    .line 43
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 47
    .line 48
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)"

    .line 52
    .line 53
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 57
    .line 58
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    .line 62
    .line 63
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 67
    .line 68
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'c103703e120ae8cc73c9248622f3cd1e\')"

    .line 72
    .line 73
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final b(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 1
    const-string v0, "DROP TABLE IF EXISTS `Dependency`"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DROP TABLE IF EXISTS `WorkSpec`"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "DROP TABLE IF EXISTS `WorkTag`"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "DROP TABLE IF EXISTS `SystemIdInfo`"

    .line 17
    .line 18
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "DROP TABLE IF EXISTS `WorkName`"

    .line 22
    .line 23
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "DROP TABLE IF EXISTS `WorkProgress`"

    .line 27
    .line 28
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "DROP TABLE IF EXISTS `Preference`"

    .line 32
    .line 33
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget p1, Landroidx/work/impl/WorkDatabase_Impl;->t:I

    .line 37
    .line 38
    iget-object p1, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->a:Landroidx/work/impl/WorkDatabase_Impl;

    .line 39
    .line 40
    iget-object v0, p1, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v1, 0x0

    .line 49
    :goto_0
    if-ge v1, v0, :cond_0

    .line 50
    .line 51
    iget-object v2, p1, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    sget v0, Landroidx/work/impl/WorkDatabase_Impl;->t:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->a:Landroidx/work/impl/WorkDatabase_Impl;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    iget-object v3, v0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroidx/room/RoomDatabase$Callback;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public final d(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->a:Landroidx/work/impl/WorkDatabase_Impl;

    .line 2
    .line 3
    sget v1, Landroidx/work/impl/WorkDatabase_Impl;->t:I

    .line 4
    .line 5
    iput-object p1, v0, Landroidx/room/RoomDatabase;->a:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 6
    .line 7
    const-string v0, "PRAGMA foreign_keys = ON"

    .line 8
    .line 9
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->a:Landroidx/work/impl/WorkDatabase_Impl;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/room/RoomDatabase;->e:Landroidx/room/InvalidationTracker;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-boolean v1, v0, Landroidx/room/InvalidationTracker;->e:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, "ROOM"

    .line 22
    .line 23
    const-string v2, "Invalidation tracker is initialized twice :/."

    .line 24
    .line 25
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    const-string v1, "PRAGMA temp_store = MEMORY;"

    .line 33
    .line 34
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "PRAGMA recursive_triggers=\'ON\';"

    .line 38
    .line 39
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    .line 43
    .line 44
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker;->c(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 "

    .line 51
    .line 52
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->x(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Landroidx/room/InvalidationTracker;->f:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    iput-boolean v1, v0, Landroidx/room/InvalidationTracker;->e:Z

    .line 60
    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->a:Landroidx/work/impl/WorkDatabase_Impl;

    .line 63
    .line 64
    iget-object v0, v0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/4 v1, 0x0

    .line 73
    :goto_1
    if-ge v1, v0, :cond_1

    .line 74
    .line 75
    iget-object v2, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->a:Landroidx/work/impl/WorkDatabase_Impl;

    .line 76
    .line 77
    iget-object v2, v2, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 84
    .line 85
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->a(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    return-void

    .line 92
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw p1
.end method

.method public final e(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SELECT name FROM sqlite_master WHERE type = \'trigger\'"

    .line 7
    .line 8
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->P(Ljava/lang/String;)Landroid/database/Cursor;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :cond_1
    :goto_1
    if-ge v3, v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    const-string v4, "room_fts_content_sync_"

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    const-string v4, "DROP TRIGGER IF EXISTS "

    .line 55
    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->s(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    return-void

    .line 65
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public final f(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    const-string v4, "work_spec_id"

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    const-string v7, "TEXT"

    .line 17
    .line 18
    const/4 v8, 0x1

    .line 19
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v4, "work_spec_id"

    .line 23
    .line 24
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    new-instance v5, Landroidx/room/util/TableInfo$Column;

    .line 28
    .line 29
    const/4 v11, 0x0

    .line 30
    const-string v6, "prerequisite_id"

    .line 31
    .line 32
    const/4 v7, 0x2

    .line 33
    const-string v9, "TEXT"

    .line 34
    .line 35
    const/4 v10, 0x1

    .line 36
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v3, "prerequisite_id"

    .line 40
    .line 41
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    new-instance v5, Ljava/util/HashSet;

    .line 45
    .line 46
    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 47
    .line 48
    .line 49
    new-instance v6, Landroidx/room/util/TableInfo$ForeignKey;

    .line 50
    .line 51
    filled-new-array {v4}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    const-string v12, "id"

    .line 60
    .line 61
    filled-new-array {v12}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    const-string v7, "WorkSpec"

    .line 70
    .line 71
    const-string v8, "CASCADE"

    .line 72
    .line 73
    const-string v9, "CASCADE"

    .line 74
    .line 75
    invoke-direct/range {v6 .. v11}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 82
    .line 83
    filled-new-array {v3}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v17

    .line 91
    filled-new-array {v12}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v18

    .line 99
    const-string v14, "WorkSpec"

    .line 100
    .line 101
    const-string v15, "CASCADE"

    .line 102
    .line 103
    const-string v16, "CASCADE"

    .line 104
    .line 105
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    new-instance v6, Ljava/util/HashSet;

    .line 112
    .line 113
    invoke-direct {v6, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 114
    .line 115
    .line 116
    new-instance v7, Landroidx/room/util/TableInfo$Index;

    .line 117
    .line 118
    filled-new-array {v4}, [Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    const-string v9, "index_Dependency_work_spec_id"

    .line 127
    .line 128
    const/4 v10, 0x0

    .line 129
    invoke-direct {v7, v9, v10, v8}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    new-instance v7, Landroidx/room/util/TableInfo$Index;

    .line 136
    .line 137
    filled-new-array {v3}, [Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    const-string v8, "index_Dependency_prerequisite_id"

    .line 146
    .line 147
    invoke-direct {v7, v8, v10, v3}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    new-instance v3, Landroidx/room/util/TableInfo;

    .line 154
    .line 155
    const-string v7, "Dependency"

    .line 156
    .line 157
    invoke-direct {v3, v7, v1, v5, v6}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v0, v7}, Landroidx/room/util/TableInfo;->a(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v3, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    const-string v6, "\n Found:\n"

    .line 169
    .line 170
    if-nez v5, :cond_0

    .line 171
    .line 172
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 173
    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v4, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n"

    .line 177
    .line 178
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-direct {v0, v1, v10}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 195
    .line 196
    .line 197
    return-object v0

    .line 198
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 199
    .line 200
    const/16 v3, 0x19

    .line 201
    .line 202
    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 203
    .line 204
    .line 205
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 206
    .line 207
    const/16 v19, 0x0

    .line 208
    .line 209
    const/16 v16, 0x1

    .line 210
    .line 211
    const/16 v18, 0x1

    .line 212
    .line 213
    const/4 v15, 0x1

    .line 214
    const-string v14, "id"

    .line 215
    .line 216
    const-string v17, "TEXT"

    .line 217
    .line 218
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 225
    .line 226
    const/16 v20, 0x0

    .line 227
    .line 228
    const/16 v17, 0x1

    .line 229
    .line 230
    const/16 v19, 0x1

    .line 231
    .line 232
    const/16 v16, 0x0

    .line 233
    .line 234
    const-string v15, "state"

    .line 235
    .line 236
    const-string v18, "INTEGER"

    .line 237
    .line 238
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string v3, "state"

    .line 242
    .line 243
    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 247
    .line 248
    const/16 v21, 0x0

    .line 249
    .line 250
    const/16 v18, 0x1

    .line 251
    .line 252
    const/16 v20, 0x1

    .line 253
    .line 254
    const/16 v17, 0x0

    .line 255
    .line 256
    const-string v16, "worker_class_name"

    .line 257
    .line 258
    const-string v19, "TEXT"

    .line 259
    .line 260
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 261
    .line 262
    .line 263
    const-string v3, "worker_class_name"

    .line 264
    .line 265
    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 269
    .line 270
    const/16 v22, 0x0

    .line 271
    .line 272
    const/16 v19, 0x1

    .line 273
    .line 274
    const/16 v21, 0x0

    .line 275
    .line 276
    const/16 v18, 0x0

    .line 277
    .line 278
    const-string v17, "input_merger_class_name"

    .line 279
    .line 280
    const-string v20, "TEXT"

    .line 281
    .line 282
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 283
    .line 284
    .line 285
    move-object/from16 v3, v16

    .line 286
    .line 287
    const-string v5, "input_merger_class_name"

    .line 288
    .line 289
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 293
    .line 294
    const/16 v19, 0x0

    .line 295
    .line 296
    const/16 v16, 0x1

    .line 297
    .line 298
    const/16 v18, 0x1

    .line 299
    .line 300
    const/4 v15, 0x0

    .line 301
    const-string v14, "input"

    .line 302
    .line 303
    const-string v17, "BLOB"

    .line 304
    .line 305
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 306
    .line 307
    .line 308
    const-string v3, "input"

    .line 309
    .line 310
    invoke-virtual {v1, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 314
    .line 315
    const/16 v20, 0x0

    .line 316
    .line 317
    const/16 v17, 0x1

    .line 318
    .line 319
    const/16 v19, 0x1

    .line 320
    .line 321
    const/16 v16, 0x0

    .line 322
    .line 323
    const-string v15, "output"

    .line 324
    .line 325
    const-string v18, "BLOB"

    .line 326
    .line 327
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 328
    .line 329
    .line 330
    const-string v3, "output"

    .line 331
    .line 332
    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 336
    .line 337
    const/16 v21, 0x0

    .line 338
    .line 339
    const/16 v18, 0x1

    .line 340
    .line 341
    const/16 v20, 0x1

    .line 342
    .line 343
    const/16 v17, 0x0

    .line 344
    .line 345
    const-string v16, "initial_delay"

    .line 346
    .line 347
    const-string v19, "INTEGER"

    .line 348
    .line 349
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 350
    .line 351
    .line 352
    const-string v3, "initial_delay"

    .line 353
    .line 354
    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 358
    .line 359
    const/16 v19, 0x1

    .line 360
    .line 361
    const/16 v21, 0x1

    .line 362
    .line 363
    const/16 v18, 0x0

    .line 364
    .line 365
    const-string v17, "interval_duration"

    .line 366
    .line 367
    const-string v20, "INTEGER"

    .line 368
    .line 369
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 370
    .line 371
    .line 372
    move-object/from16 v3, v16

    .line 373
    .line 374
    const-string v5, "interval_duration"

    .line 375
    .line 376
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 380
    .line 381
    const/16 v19, 0x0

    .line 382
    .line 383
    const/16 v16, 0x1

    .line 384
    .line 385
    const/16 v18, 0x1

    .line 386
    .line 387
    const/4 v15, 0x0

    .line 388
    const-string v14, "flex_duration"

    .line 389
    .line 390
    const-string v17, "INTEGER"

    .line 391
    .line 392
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 393
    .line 394
    .line 395
    const-string v3, "flex_duration"

    .line 396
    .line 397
    invoke-virtual {v1, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 401
    .line 402
    const/16 v20, 0x0

    .line 403
    .line 404
    const/16 v17, 0x1

    .line 405
    .line 406
    const/16 v19, 0x1

    .line 407
    .line 408
    const/16 v16, 0x0

    .line 409
    .line 410
    const-string v15, "run_attempt_count"

    .line 411
    .line 412
    const-string v18, "INTEGER"

    .line 413
    .line 414
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 415
    .line 416
    .line 417
    const-string v3, "run_attempt_count"

    .line 418
    .line 419
    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 423
    .line 424
    const/16 v21, 0x0

    .line 425
    .line 426
    const/16 v18, 0x1

    .line 427
    .line 428
    const/16 v20, 0x1

    .line 429
    .line 430
    const/16 v17, 0x0

    .line 431
    .line 432
    const-string v16, "backoff_policy"

    .line 433
    .line 434
    const-string v19, "INTEGER"

    .line 435
    .line 436
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 437
    .line 438
    .line 439
    const-string v3, "backoff_policy"

    .line 440
    .line 441
    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 445
    .line 446
    const/16 v19, 0x1

    .line 447
    .line 448
    const/16 v21, 0x1

    .line 449
    .line 450
    const/16 v18, 0x0

    .line 451
    .line 452
    const-string v17, "backoff_delay_duration"

    .line 453
    .line 454
    const-string v20, "INTEGER"

    .line 455
    .line 456
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 457
    .line 458
    .line 459
    move-object/from16 v3, v16

    .line 460
    .line 461
    const-string v5, "backoff_delay_duration"

    .line 462
    .line 463
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 467
    .line 468
    const/16 v19, 0x0

    .line 469
    .line 470
    const/16 v16, 0x1

    .line 471
    .line 472
    const/16 v18, 0x1

    .line 473
    .line 474
    const/4 v15, 0x0

    .line 475
    const-string v14, "period_start_time"

    .line 476
    .line 477
    const-string v17, "INTEGER"

    .line 478
    .line 479
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 480
    .line 481
    .line 482
    const-string v3, "period_start_time"

    .line 483
    .line 484
    invoke-virtual {v1, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 488
    .line 489
    const/16 v20, 0x0

    .line 490
    .line 491
    const/16 v17, 0x1

    .line 492
    .line 493
    const/16 v19, 0x1

    .line 494
    .line 495
    const/16 v16, 0x0

    .line 496
    .line 497
    const-string v15, "minimum_retention_duration"

    .line 498
    .line 499
    const-string v18, "INTEGER"

    .line 500
    .line 501
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 502
    .line 503
    .line 504
    const-string v5, "minimum_retention_duration"

    .line 505
    .line 506
    invoke-virtual {v1, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 510
    .line 511
    const/16 v21, 0x0

    .line 512
    .line 513
    const/16 v18, 0x1

    .line 514
    .line 515
    const/16 v20, 0x1

    .line 516
    .line 517
    const/16 v17, 0x0

    .line 518
    .line 519
    const-string v16, "schedule_requested_at"

    .line 520
    .line 521
    const-string v19, "INTEGER"

    .line 522
    .line 523
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 524
    .line 525
    .line 526
    const-string v5, "schedule_requested_at"

    .line 527
    .line 528
    invoke-virtual {v1, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 532
    .line 533
    const/16 v19, 0x1

    .line 534
    .line 535
    const/16 v21, 0x1

    .line 536
    .line 537
    const/16 v18, 0x0

    .line 538
    .line 539
    const-string v17, "run_in_foreground"

    .line 540
    .line 541
    const-string v20, "INTEGER"

    .line 542
    .line 543
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 544
    .line 545
    .line 546
    move-object/from16 v7, v16

    .line 547
    .line 548
    const-string v8, "run_in_foreground"

    .line 549
    .line 550
    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 554
    .line 555
    const/16 v19, 0x0

    .line 556
    .line 557
    const/16 v16, 0x1

    .line 558
    .line 559
    const/16 v18, 0x1

    .line 560
    .line 561
    const/4 v15, 0x0

    .line 562
    const-string v14, "out_of_quota_policy"

    .line 563
    .line 564
    const-string v17, "INTEGER"

    .line 565
    .line 566
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 567
    .line 568
    .line 569
    const-string v7, "out_of_quota_policy"

    .line 570
    .line 571
    invoke-virtual {v1, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 575
    .line 576
    const/16 v20, 0x0

    .line 577
    .line 578
    const/16 v17, 0x1

    .line 579
    .line 580
    const/16 v19, 0x0

    .line 581
    .line 582
    const/16 v16, 0x0

    .line 583
    .line 584
    const-string v15, "required_network_type"

    .line 585
    .line 586
    const-string v18, "INTEGER"

    .line 587
    .line 588
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 589
    .line 590
    .line 591
    const-string v7, "required_network_type"

    .line 592
    .line 593
    invoke-virtual {v1, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 597
    .line 598
    const/16 v21, 0x0

    .line 599
    .line 600
    const/16 v18, 0x1

    .line 601
    .line 602
    const/16 v20, 0x1

    .line 603
    .line 604
    const/16 v17, 0x0

    .line 605
    .line 606
    const-string v16, "requires_charging"

    .line 607
    .line 608
    const-string v19, "INTEGER"

    .line 609
    .line 610
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 611
    .line 612
    .line 613
    const-string v7, "requires_charging"

    .line 614
    .line 615
    invoke-virtual {v1, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 619
    .line 620
    const/16 v19, 0x1

    .line 621
    .line 622
    const/16 v21, 0x1

    .line 623
    .line 624
    const/16 v18, 0x0

    .line 625
    .line 626
    const-string v17, "requires_device_idle"

    .line 627
    .line 628
    const-string v20, "INTEGER"

    .line 629
    .line 630
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 631
    .line 632
    .line 633
    move-object/from16 v7, v16

    .line 634
    .line 635
    const-string v8, "requires_device_idle"

    .line 636
    .line 637
    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 641
    .line 642
    const/16 v19, 0x0

    .line 643
    .line 644
    const/16 v16, 0x1

    .line 645
    .line 646
    const/16 v18, 0x1

    .line 647
    .line 648
    const/4 v15, 0x0

    .line 649
    const-string v14, "requires_battery_not_low"

    .line 650
    .line 651
    const-string v17, "INTEGER"

    .line 652
    .line 653
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 654
    .line 655
    .line 656
    const-string v7, "requires_battery_not_low"

    .line 657
    .line 658
    invoke-virtual {v1, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 662
    .line 663
    const/16 v20, 0x0

    .line 664
    .line 665
    const/16 v17, 0x1

    .line 666
    .line 667
    const/16 v19, 0x1

    .line 668
    .line 669
    const/16 v16, 0x0

    .line 670
    .line 671
    const-string v15, "requires_storage_not_low"

    .line 672
    .line 673
    const-string v18, "INTEGER"

    .line 674
    .line 675
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 676
    .line 677
    .line 678
    const-string v7, "requires_storage_not_low"

    .line 679
    .line 680
    invoke-virtual {v1, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 684
    .line 685
    const/16 v21, 0x0

    .line 686
    .line 687
    const/16 v18, 0x1

    .line 688
    .line 689
    const/16 v20, 0x1

    .line 690
    .line 691
    const/16 v17, 0x0

    .line 692
    .line 693
    const-string v16, "trigger_content_update_delay"

    .line 694
    .line 695
    const-string v19, "INTEGER"

    .line 696
    .line 697
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 698
    .line 699
    .line 700
    const-string v7, "trigger_content_update_delay"

    .line 701
    .line 702
    invoke-virtual {v1, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 706
    .line 707
    const/16 v19, 0x1

    .line 708
    .line 709
    const/16 v21, 0x1

    .line 710
    .line 711
    const/16 v18, 0x0

    .line 712
    .line 713
    const-string v17, "trigger_max_content_delay"

    .line 714
    .line 715
    const-string v20, "INTEGER"

    .line 716
    .line 717
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 718
    .line 719
    .line 720
    move-object/from16 v7, v16

    .line 721
    .line 722
    const-string v8, "trigger_max_content_delay"

    .line 723
    .line 724
    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 728
    .line 729
    const/16 v19, 0x0

    .line 730
    .line 731
    const/16 v16, 0x1

    .line 732
    .line 733
    const/4 v15, 0x0

    .line 734
    const-string v14, "content_uri_triggers"

    .line 735
    .line 736
    const-string v17, "BLOB"

    .line 737
    .line 738
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 739
    .line 740
    .line 741
    const-string v7, "content_uri_triggers"

    .line 742
    .line 743
    invoke-virtual {v1, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    new-instance v7, Ljava/util/HashSet;

    .line 747
    .line 748
    invoke-direct {v7, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 749
    .line 750
    .line 751
    new-instance v8, Ljava/util/HashSet;

    .line 752
    .line 753
    invoke-direct {v8, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 754
    .line 755
    .line 756
    new-instance v9, Landroidx/room/util/TableInfo$Index;

    .line 757
    .line 758
    filled-new-array {v5}, [Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v5

    .line 762
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 763
    .line 764
    .line 765
    move-result-object v5

    .line 766
    const-string v11, "index_WorkSpec_schedule_requested_at"

    .line 767
    .line 768
    invoke-direct {v9, v11, v10, v5}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    new-instance v5, Landroidx/room/util/TableInfo$Index;

    .line 775
    .line 776
    filled-new-array {v3}, [Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v3

    .line 780
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 781
    .line 782
    .line 783
    move-result-object v3

    .line 784
    const-string v9, "index_WorkSpec_period_start_time"

    .line 785
    .line 786
    invoke-direct {v5, v9, v10, v3}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    new-instance v3, Landroidx/room/util/TableInfo;

    .line 793
    .line 794
    const-string v5, "WorkSpec"

    .line 795
    .line 796
    invoke-direct {v3, v5, v1, v7, v8}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 797
    .line 798
    .line 799
    invoke-static {v0, v5}, Landroidx/room/util/TableInfo;->a(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 800
    .line 801
    .line 802
    move-result-object v1

    .line 803
    invoke-virtual {v3, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 804
    .line 805
    .line 806
    move-result v5

    .line 807
    if-nez v5, :cond_1

    .line 808
    .line 809
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 810
    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    .line 812
    .line 813
    const-string v4, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n"

    .line 814
    .line 815
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v1

    .line 831
    invoke-direct {v0, v1, v10}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 832
    .line 833
    .line 834
    return-object v0

    .line 835
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 836
    .line 837
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 838
    .line 839
    .line 840
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 841
    .line 842
    const/16 v19, 0x0

    .line 843
    .line 844
    const/16 v16, 0x1

    .line 845
    .line 846
    const-string v14, "tag"

    .line 847
    .line 848
    const/4 v15, 0x1

    .line 849
    const-string v17, "TEXT"

    .line 850
    .line 851
    const/16 v18, 0x1

    .line 852
    .line 853
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 854
    .line 855
    .line 856
    const-string v3, "tag"

    .line 857
    .line 858
    invoke-virtual {v1, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 862
    .line 863
    const/16 v20, 0x0

    .line 864
    .line 865
    const/16 v17, 0x1

    .line 866
    .line 867
    const-string v15, "work_spec_id"

    .line 868
    .line 869
    const/16 v16, 0x2

    .line 870
    .line 871
    const-string v18, "TEXT"

    .line 872
    .line 873
    const/16 v19, 0x1

    .line 874
    .line 875
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    new-instance v3, Ljava/util/HashSet;

    .line 882
    .line 883
    const/4 v5, 0x1

    .line 884
    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 885
    .line 886
    .line 887
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 888
    .line 889
    filled-new-array {v4}, [Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v7

    .line 893
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 894
    .line 895
    .line 896
    move-result-object v17

    .line 897
    filled-new-array {v12}, [Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v7

    .line 901
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 902
    .line 903
    .line 904
    move-result-object v18

    .line 905
    const-string v14, "WorkSpec"

    .line 906
    .line 907
    const-string v15, "CASCADE"

    .line 908
    .line 909
    const-string v16, "CASCADE"

    .line 910
    .line 911
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 915
    .line 916
    .line 917
    new-instance v7, Ljava/util/HashSet;

    .line 918
    .line 919
    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 920
    .line 921
    .line 922
    new-instance v8, Landroidx/room/util/TableInfo$Index;

    .line 923
    .line 924
    filled-new-array {v4}, [Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v9

    .line 928
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 929
    .line 930
    .line 931
    move-result-object v9

    .line 932
    const-string v11, "index_WorkTag_work_spec_id"

    .line 933
    .line 934
    invoke-direct {v8, v11, v10, v9}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    new-instance v8, Landroidx/room/util/TableInfo;

    .line 941
    .line 942
    const-string v9, "WorkTag"

    .line 943
    .line 944
    invoke-direct {v8, v9, v1, v3, v7}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 945
    .line 946
    .line 947
    invoke-static {v0, v9}, Landroidx/room/util/TableInfo;->a(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 948
    .line 949
    .line 950
    move-result-object v1

    .line 951
    invoke-virtual {v8, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 952
    .line 953
    .line 954
    move-result v3

    .line 955
    if-nez v3, :cond_2

    .line 956
    .line 957
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 958
    .line 959
    new-instance v2, Ljava/lang/StringBuilder;

    .line 960
    .line 961
    const-string v3, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n"

    .line 962
    .line 963
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 967
    .line 968
    .line 969
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 973
    .line 974
    .line 975
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v1

    .line 979
    invoke-direct {v0, v1, v10}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 980
    .line 981
    .line 982
    return-object v0

    .line 983
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    .line 984
    .line 985
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 986
    .line 987
    .line 988
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 989
    .line 990
    const/16 v19, 0x0

    .line 991
    .line 992
    const/16 v16, 0x1

    .line 993
    .line 994
    const-string v14, "work_spec_id"

    .line 995
    .line 996
    const/4 v15, 0x1

    .line 997
    const-string v17, "TEXT"

    .line 998
    .line 999
    const/16 v18, 0x1

    .line 1000
    .line 1001
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v1, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1008
    .line 1009
    const/16 v20, 0x0

    .line 1010
    .line 1011
    const/16 v17, 0x1

    .line 1012
    .line 1013
    const-string v15, "system_id"

    .line 1014
    .line 1015
    const/16 v16, 0x0

    .line 1016
    .line 1017
    const-string v18, "INTEGER"

    .line 1018
    .line 1019
    const/16 v19, 0x1

    .line 1020
    .line 1021
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    const-string v3, "system_id"

    .line 1025
    .line 1026
    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    new-instance v3, Ljava/util/HashSet;

    .line 1030
    .line 1031
    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 1032
    .line 1033
    .line 1034
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1035
    .line 1036
    filled-new-array {v4}, [Ljava/lang/String;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v7

    .line 1040
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v17

    .line 1044
    filled-new-array {v12}, [Ljava/lang/String;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v7

    .line 1048
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v18

    .line 1052
    const-string v14, "WorkSpec"

    .line 1053
    .line 1054
    const-string v15, "CASCADE"

    .line 1055
    .line 1056
    const-string v16, "CASCADE"

    .line 1057
    .line 1058
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1062
    .line 1063
    .line 1064
    new-instance v7, Ljava/util/HashSet;

    .line 1065
    .line 1066
    invoke-direct {v7, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 1067
    .line 1068
    .line 1069
    new-instance v8, Landroidx/room/util/TableInfo;

    .line 1070
    .line 1071
    const-string v9, "SystemIdInfo"

    .line 1072
    .line 1073
    invoke-direct {v8, v9, v1, v3, v7}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1074
    .line 1075
    .line 1076
    invoke-static {v0, v9}, Landroidx/room/util/TableInfo;->a(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v1

    .line 1080
    invoke-virtual {v8, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1081
    .line 1082
    .line 1083
    move-result v3

    .line 1084
    if-nez v3, :cond_3

    .line 1085
    .line 1086
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1087
    .line 1088
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1089
    .line 1090
    const-string v3, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n"

    .line 1091
    .line 1092
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v1

    .line 1108
    invoke-direct {v0, v1, v10}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1109
    .line 1110
    .line 1111
    return-object v0

    .line 1112
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    .line 1113
    .line 1114
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1115
    .line 1116
    .line 1117
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 1118
    .line 1119
    const/16 v19, 0x0

    .line 1120
    .line 1121
    const/16 v16, 0x1

    .line 1122
    .line 1123
    const-string v14, "name"

    .line 1124
    .line 1125
    const/4 v15, 0x1

    .line 1126
    const-string v17, "TEXT"

    .line 1127
    .line 1128
    const/16 v18, 0x1

    .line 1129
    .line 1130
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 1131
    .line 1132
    .line 1133
    const-string v3, "name"

    .line 1134
    .line 1135
    invoke-virtual {v1, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    .line 1137
    .line 1138
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1139
    .line 1140
    const/16 v20, 0x0

    .line 1141
    .line 1142
    const/16 v17, 0x1

    .line 1143
    .line 1144
    const-string v15, "work_spec_id"

    .line 1145
    .line 1146
    const/16 v16, 0x2

    .line 1147
    .line 1148
    const-string v18, "TEXT"

    .line 1149
    .line 1150
    const/16 v19, 0x1

    .line 1151
    .line 1152
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    .line 1157
    .line 1158
    new-instance v3, Ljava/util/HashSet;

    .line 1159
    .line 1160
    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 1161
    .line 1162
    .line 1163
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1164
    .line 1165
    filled-new-array {v4}, [Ljava/lang/String;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v7

    .line 1169
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v17

    .line 1173
    filled-new-array {v12}, [Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v7

    .line 1177
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v18

    .line 1181
    const-string v14, "WorkSpec"

    .line 1182
    .line 1183
    const-string v15, "CASCADE"

    .line 1184
    .line 1185
    const-string v16, "CASCADE"

    .line 1186
    .line 1187
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1191
    .line 1192
    .line 1193
    new-instance v7, Ljava/util/HashSet;

    .line 1194
    .line 1195
    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 1196
    .line 1197
    .line 1198
    new-instance v8, Landroidx/room/util/TableInfo$Index;

    .line 1199
    .line 1200
    filled-new-array {v4}, [Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v9

    .line 1204
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v9

    .line 1208
    const-string v11, "index_WorkName_work_spec_id"

    .line 1209
    .line 1210
    invoke-direct {v8, v11, v10, v9}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1214
    .line 1215
    .line 1216
    new-instance v8, Landroidx/room/util/TableInfo;

    .line 1217
    .line 1218
    const-string v9, "WorkName"

    .line 1219
    .line 1220
    invoke-direct {v8, v9, v1, v3, v7}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1221
    .line 1222
    .line 1223
    invoke-static {v0, v9}, Landroidx/room/util/TableInfo;->a(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v1

    .line 1227
    invoke-virtual {v8, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1228
    .line 1229
    .line 1230
    move-result v3

    .line 1231
    if-nez v3, :cond_4

    .line 1232
    .line 1233
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1234
    .line 1235
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1236
    .line 1237
    const-string v3, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n"

    .line 1238
    .line 1239
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v1

    .line 1255
    invoke-direct {v0, v1, v10}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1256
    .line 1257
    .line 1258
    return-object v0

    .line 1259
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    .line 1260
    .line 1261
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1262
    .line 1263
    .line 1264
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 1265
    .line 1266
    const/16 v19, 0x0

    .line 1267
    .line 1268
    const/16 v16, 0x1

    .line 1269
    .line 1270
    const-string v14, "work_spec_id"

    .line 1271
    .line 1272
    const/4 v15, 0x1

    .line 1273
    const-string v17, "TEXT"

    .line 1274
    .line 1275
    const/16 v18, 0x1

    .line 1276
    .line 1277
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 1278
    .line 1279
    .line 1280
    invoke-virtual {v1, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    .line 1282
    .line 1283
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1284
    .line 1285
    const/16 v20, 0x0

    .line 1286
    .line 1287
    const/16 v17, 0x1

    .line 1288
    .line 1289
    const-string v15, "progress"

    .line 1290
    .line 1291
    const/16 v16, 0x0

    .line 1292
    .line 1293
    const-string v18, "BLOB"

    .line 1294
    .line 1295
    const/16 v19, 0x1

    .line 1296
    .line 1297
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 1298
    .line 1299
    .line 1300
    const-string v3, "progress"

    .line 1301
    .line 1302
    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    new-instance v3, Ljava/util/HashSet;

    .line 1306
    .line 1307
    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 1308
    .line 1309
    .line 1310
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1311
    .line 1312
    filled-new-array {v4}, [Ljava/lang/String;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v4

    .line 1316
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v17

    .line 1320
    filled-new-array {v12}, [Ljava/lang/String;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v4

    .line 1324
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v18

    .line 1328
    const-string v14, "WorkSpec"

    .line 1329
    .line 1330
    const-string v15, "CASCADE"

    .line 1331
    .line 1332
    const-string v16, "CASCADE"

    .line 1333
    .line 1334
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1338
    .line 1339
    .line 1340
    new-instance v4, Ljava/util/HashSet;

    .line 1341
    .line 1342
    invoke-direct {v4, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 1343
    .line 1344
    .line 1345
    new-instance v7, Landroidx/room/util/TableInfo;

    .line 1346
    .line 1347
    const-string v8, "WorkProgress"

    .line 1348
    .line 1349
    invoke-direct {v7, v8, v1, v3, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1350
    .line 1351
    .line 1352
    invoke-static {v0, v8}, Landroidx/room/util/TableInfo;->a(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v1

    .line 1356
    invoke-virtual {v7, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1357
    .line 1358
    .line 1359
    move-result v3

    .line 1360
    if-nez v3, :cond_5

    .line 1361
    .line 1362
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1363
    .line 1364
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1365
    .line 1366
    const-string v3, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n"

    .line 1367
    .line 1368
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v1

    .line 1384
    invoke-direct {v0, v1, v10}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1385
    .line 1386
    .line 1387
    return-object v0

    .line 1388
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    .line 1389
    .line 1390
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1391
    .line 1392
    .line 1393
    new-instance v11, Landroidx/room/util/TableInfo$Column;

    .line 1394
    .line 1395
    const/16 v17, 0x0

    .line 1396
    .line 1397
    const/4 v14, 0x1

    .line 1398
    const-string v12, "key"

    .line 1399
    .line 1400
    const/4 v13, 0x1

    .line 1401
    const-string v15, "TEXT"

    .line 1402
    .line 1403
    const/16 v16, 0x1

    .line 1404
    .line 1405
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 1406
    .line 1407
    .line 1408
    const-string v2, "key"

    .line 1409
    .line 1410
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    .line 1412
    .line 1413
    new-instance v12, Landroidx/room/util/TableInfo$Column;

    .line 1414
    .line 1415
    const/16 v18, 0x0

    .line 1416
    .line 1417
    const/4 v15, 0x1

    .line 1418
    const-string v13, "long_value"

    .line 1419
    .line 1420
    const/4 v14, 0x0

    .line 1421
    const-string v16, "INTEGER"

    .line 1422
    .line 1423
    const/16 v17, 0x0

    .line 1424
    .line 1425
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 1426
    .line 1427
    .line 1428
    const-string v2, "long_value"

    .line 1429
    .line 1430
    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    .line 1432
    .line 1433
    new-instance v2, Ljava/util/HashSet;

    .line 1434
    .line 1435
    invoke-direct {v2, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 1436
    .line 1437
    .line 1438
    new-instance v3, Ljava/util/HashSet;

    .line 1439
    .line 1440
    invoke-direct {v3, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 1441
    .line 1442
    .line 1443
    new-instance v4, Landroidx/room/util/TableInfo;

    .line 1444
    .line 1445
    const-string v7, "Preference"

    .line 1446
    .line 1447
    invoke-direct {v4, v7, v1, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1448
    .line 1449
    .line 1450
    invoke-static {v0, v7}, Landroidx/room/util/TableInfo;->a(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v0

    .line 1454
    invoke-virtual {v4, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1455
    .line 1456
    .line 1457
    move-result v1

    .line 1458
    if-nez v1, :cond_6

    .line 1459
    .line 1460
    new-instance v1, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1461
    .line 1462
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1463
    .line 1464
    const-string v3, "Preference(androidx.work.impl.model.Preference).\n Expected:\n"

    .line 1465
    .line 1466
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1467
    .line 1468
    .line 1469
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1470
    .line 1471
    .line 1472
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v0

    .line 1482
    invoke-direct {v1, v0, v10}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1483
    .line 1484
    .line 1485
    return-object v1

    .line 1486
    :cond_6
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1487
    .line 1488
    const/4 v1, 0x0

    .line 1489
    invoke-direct {v0, v1, v5}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1490
    .line 1491
    .line 1492
    return-object v0
.end method
