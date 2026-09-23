package androidx.work.impl;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.RestrictTo;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;

@RestrictTo
/* loaded from: classes.dex */
public class WorkDatabaseMigrations {

    /* renamed from: a, reason: collision with root package name */
    public static final Migration f1869a = new Migration(1, 2);
    public static final Migration b = new Migration(3, 4);

    /* renamed from: c, reason: collision with root package name */
    public static final Migration f1870c = new Migration(4, 5);
    public static final Migration d = new Migration(6, 7);
    public static final Migration e = new Migration(7, 8);
    public static final Migration f = new Migration(8, 9);
    public static final Migration g = new Migration(11, 12);

    /* renamed from: androidx.work.impl.WorkDatabaseMigrations$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends Migration {
        @Override // androidx.room.migration.Migration
        public final void a(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.s("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            supportSQLiteDatabase.s("INSERT INTO SystemIdInfo(work_spec_id, system_id) SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo");
            supportSQLiteDatabase.s("DROP TABLE IF EXISTS alarmInfo");
            supportSQLiteDatabase.s("INSERT OR IGNORE INTO worktag(tag, work_spec_id) SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec");
        }
    }

    /* renamed from: androidx.work.impl.WorkDatabaseMigrations$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends Migration {
        @Override // androidx.room.migration.Migration
        public final void a(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.s("UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0");
        }
    }

    /* renamed from: androidx.work.impl.WorkDatabaseMigrations$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 extends Migration {
        @Override // androidx.room.migration.Migration
        public final void a(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.s("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
            supportSQLiteDatabase.s("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
        }
    }

    /* renamed from: androidx.work.impl.WorkDatabaseMigrations$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass4 extends Migration {
        @Override // androidx.room.migration.Migration
        public final void a(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.s("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        }
    }

    /* renamed from: androidx.work.impl.WorkDatabaseMigrations$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass5 extends Migration {
        @Override // androidx.room.migration.Migration
        public final void a(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.s("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec` (`period_start_time`)");
        }
    }

    /* renamed from: androidx.work.impl.WorkDatabaseMigrations$6, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass6 extends Migration {
        @Override // androidx.room.migration.Migration
        public final void a(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.s("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* renamed from: androidx.work.impl.WorkDatabaseMigrations$7, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass7 extends Migration {
        @Override // androidx.room.migration.Migration
        public final void a(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.s("ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* loaded from: classes.dex */
    public static class RescheduleMigration extends Migration {

        /* renamed from: c, reason: collision with root package name */
        public final Context f1871c;

        public RescheduleMigration(Context context, int i, int i2) {
            super(i, i2);
            this.f1871c = context;
        }

        @Override // androidx.room.migration.Migration
        public final void a(SupportSQLiteDatabase supportSQLiteDatabase) {
            if (this.b >= 10) {
                supportSQLiteDatabase.J(new Object[]{"reschedule_needed", 1});
            } else {
                this.f1871c.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
            }
        }
    }

    /* loaded from: classes.dex */
    public static class WorkMigration9To10 extends Migration {

        /* renamed from: c, reason: collision with root package name */
        public final Context f1872c;

        public WorkMigration9To10(Context context) {
            super(9, 10);
            this.f1872c = context;
        }

        @Override // androidx.room.migration.Migration
        public final void a(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.s("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            Context context = this.f1872c;
            SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.preferences", 0);
            if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
                long j = 0;
                long j2 = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
                if (sharedPreferences.getBoolean("reschedule_needed", false)) {
                    j = 1;
                }
                supportSQLiteDatabase.p();
                try {
                    supportSQLiteDatabase.J(new Object[]{"last_cancel_all_time_ms", Long.valueOf(j2)});
                    supportSQLiteDatabase.J(new Object[]{"reschedule_needed", Long.valueOf(j)});
                    sharedPreferences.edit().clear().apply();
                    supportSQLiteDatabase.K();
                } finally {
                }
            }
            SharedPreferences sharedPreferences2 = context.getSharedPreferences("androidx.work.util.id", 0);
            if (!sharedPreferences2.contains("next_job_scheduler_id") && !sharedPreferences2.contains("next_job_scheduler_id")) {
                return;
            }
            int i = sharedPreferences2.getInt("next_job_scheduler_id", 0);
            int i2 = sharedPreferences2.getInt("next_alarm_manager_id", 0);
            supportSQLiteDatabase.p();
            try {
                supportSQLiteDatabase.J(new Object[]{"next_job_scheduler_id", Integer.valueOf(i)});
                supportSQLiteDatabase.J(new Object[]{"next_alarm_manager_id", Integer.valueOf(i2)});
                sharedPreferences2.edit().clear().apply();
                supportSQLiteDatabase.K();
            } finally {
            }
        }
    }
}
