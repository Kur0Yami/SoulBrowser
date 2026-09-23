package androidx.work.impl;

import androidx.annotation.RestrictTo;
import androidx.room.Database;
import androidx.room.RoomDatabase;
import androidx.room.TypeConverters;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.PreferenceDao;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import java.util.concurrent.TimeUnit;

@TypeConverters
@Database
@RestrictTo
/* loaded from: classes.dex */
public abstract class WorkDatabase extends RoomDatabase {
    public static final long k = TimeUnit.DAYS.toMillis(1);
    public static final /* synthetic */ int l = 0;

    /* renamed from: androidx.work.impl.WorkDatabase$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 extends RoomDatabase.Callback {
        @Override // androidx.room.RoomDatabase.Callback
        public final void a(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.p();
            try {
                int i = WorkDatabase.l;
                supportSQLiteDatabase.s("DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < " + (System.currentTimeMillis() - WorkDatabase.k) + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))");
                supportSQLiteDatabase.K();
            } finally {
                supportSQLiteDatabase.V();
            }
        }
    }

    public abstract DependencyDao i();

    public abstract PreferenceDao j();

    public abstract SystemIdInfoDao k();

    public abstract WorkNameDao l();

    public abstract WorkProgressDao m();

    public abstract WorkSpecDao n();

    public abstract WorkTagDao o();
}
