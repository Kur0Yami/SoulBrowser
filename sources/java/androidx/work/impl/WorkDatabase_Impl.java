package androidx.work.impl;

import android.content.Context;
import android.database.Cursor;
import android.util.Log;
import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomOpenHelper;
import androidx.room.util.TableInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.PreferenceDao;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkNameDao_Impl;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkProgressDao_Impl;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.model.WorkTagDao_Impl;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public final class WorkDatabase_Impl extends WorkDatabase {
    public static final /* synthetic */ int t = 0;
    public volatile WorkSpecDao_Impl m;
    public volatile DependencyDao_Impl n;
    public volatile WorkTagDao_Impl o;
    public volatile SystemIdInfoDao_Impl p;
    public volatile WorkNameDao_Impl q;
    public volatile WorkProgressDao_Impl r;
    public volatile PreferenceDao_Impl s;

    @Override // androidx.room.RoomDatabase
    public final InvalidationTracker d() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Builder, java.lang.Object] */
    @Override // androidx.room.RoomDatabase
    public final SupportSQLiteOpenHelper e(DatabaseConfiguration databaseConfiguration) {
        RoomOpenHelper roomOpenHelper = new RoomOpenHelper(databaseConfiguration, new RoomOpenHelper.Delegate() { // from class: androidx.work.impl.WorkDatabase_Impl.1
            @Override // androidx.room.RoomOpenHelper.Delegate
            public final void a(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.s("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                supportSQLiteDatabase.s("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
                supportSQLiteDatabase.s("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
                supportSQLiteDatabase.s("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))");
                supportSQLiteDatabase.s("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
                supportSQLiteDatabase.s("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `WorkSpec` (`period_start_time`)");
                supportSQLiteDatabase.s("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                supportSQLiteDatabase.s("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
                supportSQLiteDatabase.s("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                supportSQLiteDatabase.s("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                supportSQLiteDatabase.s("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
                supportSQLiteDatabase.s("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                supportSQLiteDatabase.s("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
                supportSQLiteDatabase.s("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                supportSQLiteDatabase.s("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c103703e120ae8cc73c9248622f3cd1e')");
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public final void b(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.s("DROP TABLE IF EXISTS `Dependency`");
                supportSQLiteDatabase.s("DROP TABLE IF EXISTS `WorkSpec`");
                supportSQLiteDatabase.s("DROP TABLE IF EXISTS `WorkTag`");
                supportSQLiteDatabase.s("DROP TABLE IF EXISTS `SystemIdInfo`");
                supportSQLiteDatabase.s("DROP TABLE IF EXISTS `WorkName`");
                supportSQLiteDatabase.s("DROP TABLE IF EXISTS `WorkProgress`");
                supportSQLiteDatabase.s("DROP TABLE IF EXISTS `Preference`");
                int i = WorkDatabase_Impl.t;
                WorkDatabase_Impl workDatabase_Impl = WorkDatabase_Impl.this;
                List list = workDatabase_Impl.h;
                if (list != null) {
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ((RoomDatabase.Callback) workDatabase_Impl.h.get(i2)).getClass();
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public final void c() {
                int i = WorkDatabase_Impl.t;
                WorkDatabase_Impl workDatabase_Impl = WorkDatabase_Impl.this;
                List list = workDatabase_Impl.h;
                if (list != null) {
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ((RoomDatabase.Callback) workDatabase_Impl.h.get(i2)).getClass();
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public final void d(SupportSQLiteDatabase supportSQLiteDatabase) {
                WorkDatabase_Impl workDatabase_Impl = WorkDatabase_Impl.this;
                int i = WorkDatabase_Impl.t;
                workDatabase_Impl.f1623a = supportSQLiteDatabase;
                supportSQLiteDatabase.s("PRAGMA foreign_keys = ON");
                InvalidationTracker invalidationTracker = WorkDatabase_Impl.this.e;
                synchronized (invalidationTracker) {
                    try {
                        if (invalidationTracker.e) {
                            Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                        } else {
                            supportSQLiteDatabase.s("PRAGMA temp_store = MEMORY;");
                            supportSQLiteDatabase.s("PRAGMA recursive_triggers='ON';");
                            supportSQLiteDatabase.s("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
                            invalidationTracker.c(supportSQLiteDatabase);
                            invalidationTracker.f = supportSQLiteDatabase.x("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
                            invalidationTracker.e = true;
                        }
                    } finally {
                    }
                }
                List list = WorkDatabase_Impl.this.h;
                if (list != null) {
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ((RoomDatabase.Callback) WorkDatabase_Impl.this.h.get(i2)).a(supportSQLiteDatabase);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public final void e(SupportSQLiteDatabase supportSQLiteDatabase) {
                int i;
                ArrayList arrayList = new ArrayList();
                Cursor P = supportSQLiteDatabase.P("SELECT name FROM sqlite_master WHERE type = 'trigger'");
                while (true) {
                    try {
                        i = 0;
                        if (!P.moveToNext()) {
                            break;
                        } else {
                            arrayList.add(P.getString(0));
                        }
                    } catch (Throwable th) {
                        P.close();
                        throw th;
                    }
                }
                P.close();
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    String str = (String) obj;
                    if (str.startsWith("room_fts_content_sync_")) {
                        supportSQLiteDatabase.s("DROP TRIGGER IF EXISTS ".concat(str));
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public final RoomOpenHelper.ValidationResult f(SupportSQLiteDatabase supportSQLiteDatabase) {
                HashMap hashMap = new HashMap(2);
                hashMap.put("work_spec_id", new TableInfo.Column("work_spec_id", 1, 1, "TEXT", true, null));
                hashMap.put("prerequisite_id", new TableInfo.Column("prerequisite_id", 2, 1, "TEXT", true, null));
                HashSet hashSet = new HashSet(2);
                hashSet.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                hashSet.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList("id")));
                HashSet hashSet2 = new HashSet(2);
                hashSet2.add(new TableInfo.Index("index_Dependency_work_spec_id", false, Arrays.asList("work_spec_id")));
                hashSet2.add(new TableInfo.Index("index_Dependency_prerequisite_id", false, Arrays.asList("prerequisite_id")));
                TableInfo tableInfo = new TableInfo("Dependency", hashMap, hashSet, hashSet2);
                TableInfo a2 = TableInfo.a(supportSQLiteDatabase, "Dependency");
                if (!tableInfo.equals(a2)) {
                    return new RoomOpenHelper.ValidationResult("Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + tableInfo + "\n Found:\n" + a2, false);
                }
                HashMap hashMap2 = new HashMap(25);
                hashMap2.put("id", new TableInfo.Column("id", 1, 1, "TEXT", true, null));
                hashMap2.put("state", new TableInfo.Column("state", 0, 1, "INTEGER", true, null));
                hashMap2.put("worker_class_name", new TableInfo.Column("worker_class_name", 0, 1, "TEXT", true, null));
                hashMap2.put("input_merger_class_name", new TableInfo.Column("input_merger_class_name", 0, 1, "TEXT", false, null));
                hashMap2.put("input", new TableInfo.Column("input", 0, 1, "BLOB", true, null));
                hashMap2.put("output", new TableInfo.Column("output", 0, 1, "BLOB", true, null));
                hashMap2.put("initial_delay", new TableInfo.Column("initial_delay", 0, 1, "INTEGER", true, null));
                hashMap2.put("interval_duration", new TableInfo.Column("interval_duration", 0, 1, "INTEGER", true, null));
                hashMap2.put("flex_duration", new TableInfo.Column("flex_duration", 0, 1, "INTEGER", true, null));
                hashMap2.put("run_attempt_count", new TableInfo.Column("run_attempt_count", 0, 1, "INTEGER", true, null));
                hashMap2.put("backoff_policy", new TableInfo.Column("backoff_policy", 0, 1, "INTEGER", true, null));
                hashMap2.put("backoff_delay_duration", new TableInfo.Column("backoff_delay_duration", 0, 1, "INTEGER", true, null));
                hashMap2.put("period_start_time", new TableInfo.Column("period_start_time", 0, 1, "INTEGER", true, null));
                hashMap2.put("minimum_retention_duration", new TableInfo.Column("minimum_retention_duration", 0, 1, "INTEGER", true, null));
                hashMap2.put("schedule_requested_at", new TableInfo.Column("schedule_requested_at", 0, 1, "INTEGER", true, null));
                hashMap2.put("run_in_foreground", new TableInfo.Column("run_in_foreground", 0, 1, "INTEGER", true, null));
                hashMap2.put("out_of_quota_policy", new TableInfo.Column("out_of_quota_policy", 0, 1, "INTEGER", true, null));
                hashMap2.put("required_network_type", new TableInfo.Column("required_network_type", 0, 1, "INTEGER", false, null));
                hashMap2.put("requires_charging", new TableInfo.Column("requires_charging", 0, 1, "INTEGER", true, null));
                hashMap2.put("requires_device_idle", new TableInfo.Column("requires_device_idle", 0, 1, "INTEGER", true, null));
                hashMap2.put("requires_battery_not_low", new TableInfo.Column("requires_battery_not_low", 0, 1, "INTEGER", true, null));
                hashMap2.put("requires_storage_not_low", new TableInfo.Column("requires_storage_not_low", 0, 1, "INTEGER", true, null));
                hashMap2.put("trigger_content_update_delay", new TableInfo.Column("trigger_content_update_delay", 0, 1, "INTEGER", true, null));
                hashMap2.put("trigger_max_content_delay", new TableInfo.Column("trigger_max_content_delay", 0, 1, "INTEGER", true, null));
                hashMap2.put("content_uri_triggers", new TableInfo.Column("content_uri_triggers", 0, 1, "BLOB", false, null));
                HashSet hashSet3 = new HashSet(0);
                HashSet hashSet4 = new HashSet(2);
                hashSet4.add(new TableInfo.Index("index_WorkSpec_schedule_requested_at", false, Arrays.asList("schedule_requested_at")));
                hashSet4.add(new TableInfo.Index("index_WorkSpec_period_start_time", false, Arrays.asList("period_start_time")));
                TableInfo tableInfo2 = new TableInfo("WorkSpec", hashMap2, hashSet3, hashSet4);
                TableInfo a3 = TableInfo.a(supportSQLiteDatabase, "WorkSpec");
                if (!tableInfo2.equals(a3)) {
                    return new RoomOpenHelper.ValidationResult("WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + tableInfo2 + "\n Found:\n" + a3, false);
                }
                HashMap hashMap3 = new HashMap(2);
                hashMap3.put("tag", new TableInfo.Column("tag", 1, 1, "TEXT", true, null));
                hashMap3.put("work_spec_id", new TableInfo.Column("work_spec_id", 2, 1, "TEXT", true, null));
                HashSet hashSet5 = new HashSet(1);
                hashSet5.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                HashSet hashSet6 = new HashSet(1);
                hashSet6.add(new TableInfo.Index("index_WorkTag_work_spec_id", false, Arrays.asList("work_spec_id")));
                TableInfo tableInfo3 = new TableInfo("WorkTag", hashMap3, hashSet5, hashSet6);
                TableInfo a4 = TableInfo.a(supportSQLiteDatabase, "WorkTag");
                if (!tableInfo3.equals(a4)) {
                    return new RoomOpenHelper.ValidationResult("WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + tableInfo3 + "\n Found:\n" + a4, false);
                }
                HashMap hashMap4 = new HashMap(2);
                hashMap4.put("work_spec_id", new TableInfo.Column("work_spec_id", 1, 1, "TEXT", true, null));
                hashMap4.put("system_id", new TableInfo.Column("system_id", 0, 1, "INTEGER", true, null));
                HashSet hashSet7 = new HashSet(1);
                hashSet7.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                TableInfo tableInfo4 = new TableInfo("SystemIdInfo", hashMap4, hashSet7, new HashSet(0));
                TableInfo a5 = TableInfo.a(supportSQLiteDatabase, "SystemIdInfo");
                if (!tableInfo4.equals(a5)) {
                    return new RoomOpenHelper.ValidationResult("SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + tableInfo4 + "\n Found:\n" + a5, false);
                }
                HashMap hashMap5 = new HashMap(2);
                hashMap5.put("name", new TableInfo.Column("name", 1, 1, "TEXT", true, null));
                hashMap5.put("work_spec_id", new TableInfo.Column("work_spec_id", 2, 1, "TEXT", true, null));
                HashSet hashSet8 = new HashSet(1);
                hashSet8.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                HashSet hashSet9 = new HashSet(1);
                hashSet9.add(new TableInfo.Index("index_WorkName_work_spec_id", false, Arrays.asList("work_spec_id")));
                TableInfo tableInfo5 = new TableInfo("WorkName", hashMap5, hashSet8, hashSet9);
                TableInfo a6 = TableInfo.a(supportSQLiteDatabase, "WorkName");
                if (!tableInfo5.equals(a6)) {
                    return new RoomOpenHelper.ValidationResult("WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + tableInfo5 + "\n Found:\n" + a6, false);
                }
                HashMap hashMap6 = new HashMap(2);
                hashMap6.put("work_spec_id", new TableInfo.Column("work_spec_id", 1, 1, "TEXT", true, null));
                hashMap6.put("progress", new TableInfo.Column("progress", 0, 1, "BLOB", true, null));
                HashSet hashSet10 = new HashSet(1);
                hashSet10.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                TableInfo tableInfo6 = new TableInfo("WorkProgress", hashMap6, hashSet10, new HashSet(0));
                TableInfo a7 = TableInfo.a(supportSQLiteDatabase, "WorkProgress");
                if (!tableInfo6.equals(a7)) {
                    return new RoomOpenHelper.ValidationResult("WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + tableInfo6 + "\n Found:\n" + a7, false);
                }
                HashMap hashMap7 = new HashMap(2);
                hashMap7.put("key", new TableInfo.Column("key", 1, 1, "TEXT", true, null));
                hashMap7.put("long_value", new TableInfo.Column("long_value", 0, 1, "INTEGER", false, null));
                TableInfo tableInfo7 = new TableInfo("Preference", hashMap7, new HashSet(0), new HashSet(0));
                TableInfo a8 = TableInfo.a(supportSQLiteDatabase, "Preference");
                if (!tableInfo7.equals(a8)) {
                    return new RoomOpenHelper.ValidationResult("Preference(androidx.work.impl.model.Preference).\n Expected:\n" + tableInfo7 + "\n Found:\n" + a8, false);
                }
                return new RoomOpenHelper.ValidationResult(null, true);
            }
        });
        Context context = databaseConfiguration.b;
        ?? obj = new Object();
        obj.f1656a = context;
        obj.b = databaseConfiguration.f1609c;
        obj.f1657c = roomOpenHelper;
        return databaseConfiguration.f1608a.a(obj.a());
    }

    @Override // androidx.work.impl.WorkDatabase
    public final DependencyDao i() {
        DependencyDao_Impl dependencyDao_Impl;
        if (this.n != null) {
            return this.n;
        }
        synchronized (this) {
            try {
                if (this.n == null) {
                    this.n = new DependencyDao_Impl(this);
                }
                dependencyDao_Impl = this.n;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dependencyDao_Impl;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final PreferenceDao j() {
        PreferenceDao_Impl preferenceDao_Impl;
        if (this.s != null) {
            return this.s;
        }
        synchronized (this) {
            try {
                if (this.s == null) {
                    this.s = new PreferenceDao_Impl(this);
                }
                preferenceDao_Impl = this.s;
            } catch (Throwable th) {
                throw th;
            }
        }
        return preferenceDao_Impl;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final SystemIdInfoDao k() {
        SystemIdInfoDao_Impl systemIdInfoDao_Impl;
        if (this.p != null) {
            return this.p;
        }
        synchronized (this) {
            try {
                if (this.p == null) {
                    this.p = new SystemIdInfoDao_Impl(this);
                }
                systemIdInfoDao_Impl = this.p;
            } catch (Throwable th) {
                throw th;
            }
        }
        return systemIdInfoDao_Impl;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkNameDao l() {
        WorkNameDao_Impl workNameDao_Impl;
        if (this.q != null) {
            return this.q;
        }
        synchronized (this) {
            try {
                if (this.q == null) {
                    this.q = new WorkNameDao_Impl(this);
                }
                workNameDao_Impl = this.q;
            } catch (Throwable th) {
                throw th;
            }
        }
        return workNameDao_Impl;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkProgressDao m() {
        WorkProgressDao_Impl workProgressDao_Impl;
        if (this.r != null) {
            return this.r;
        }
        synchronized (this) {
            try {
                if (this.r == null) {
                    this.r = new WorkProgressDao_Impl(this);
                }
                workProgressDao_Impl = this.r;
            } catch (Throwable th) {
                throw th;
            }
        }
        return workProgressDao_Impl;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkSpecDao n() {
        WorkSpecDao_Impl workSpecDao_Impl;
        if (this.m != null) {
            return this.m;
        }
        synchronized (this) {
            try {
                if (this.m == null) {
                    this.m = new WorkSpecDao_Impl(this);
                }
                workSpecDao_Impl = this.m;
            } catch (Throwable th) {
                throw th;
            }
        }
        return workSpecDao_Impl;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkTagDao o() {
        WorkTagDao_Impl workTagDao_Impl;
        if (this.o != null) {
            return this.o;
        }
        synchronized (this) {
            try {
                if (this.o == null) {
                    this.o = new WorkTagDao_Impl(this);
                }
                workTagDao_Impl = this.o;
            } catch (Throwable th) {
                throw th;
            }
        }
        return workTagDao_Impl;
    }
}
