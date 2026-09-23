package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.work.impl.WorkDatabase_Impl;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class DependencyDao_Impl implements DependencyDao {

    /* renamed from: a, reason: collision with root package name */
    public final WorkDatabase_Impl f1925a;
    public final EntityInsertionAdapter b;

    /* renamed from: androidx.work.impl.model.DependencyDao_Impl$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends EntityInsertionAdapter<Dependency> {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        public final void d(SupportSQLiteStatement supportSQLiteStatement, Object obj) {
            Dependency dependency = (Dependency) obj;
            String str = dependency.f1924a;
            if (str == null) {
                supportSQLiteStatement.g0(1);
            } else {
                supportSQLiteStatement.t(1, str);
            }
            String str2 = dependency.b;
            if (str2 == null) {
                supportSQLiteStatement.g0(2);
            } else {
                supportSQLiteStatement.t(2, str2);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.room.EntityInsertionAdapter, androidx.room.SharedSQLiteStatement] */
    public DependencyDao_Impl(WorkDatabase_Impl workDatabase_Impl) {
        this.f1925a = workDatabase_Impl;
        this.b = new SharedSQLiteStatement(workDatabase_Impl);
    }

    @Override // androidx.work.impl.model.DependencyDao
    public final void a(Dependency dependency) {
        WorkDatabase_Impl workDatabase_Impl = this.f1925a;
        workDatabase_Impl.b();
        workDatabase_Impl.c();
        try {
            this.b.e(dependency);
            workDatabase_Impl.h();
        } finally {
            workDatabase_Impl.f();
        }
    }

    @Override // androidx.work.impl.model.DependencyDao
    public final ArrayList b(String str) {
        RoomSQLiteQuery d = RoomSQLiteQuery.d(1, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?");
        if (str == null) {
            d.g0(1);
        } else {
            d.t(1, str);
        }
        WorkDatabase_Impl workDatabase_Impl = this.f1925a;
        workDatabase_Impl.b();
        Cursor g = workDatabase_Impl.g(d);
        try {
            ArrayList arrayList = new ArrayList(g.getCount());
            while (g.moveToNext()) {
                arrayList.add(g.getString(0));
            }
            return arrayList;
        } finally {
            g.close();
            d.release();
        }
    }

    @Override // androidx.work.impl.model.DependencyDao
    public final boolean c(String str) {
        boolean z = true;
        RoomSQLiteQuery d = RoomSQLiteQuery.d(1, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)");
        if (str == null) {
            d.g0(1);
        } else {
            d.t(1, str);
        }
        WorkDatabase_Impl workDatabase_Impl = this.f1925a;
        workDatabase_Impl.b();
        Cursor g = workDatabase_Impl.g(d);
        try {
            boolean z2 = false;
            if (g.moveToFirst()) {
                if (g.getInt(0) == 0) {
                    z = false;
                }
                z2 = z;
            }
            return z2;
        } finally {
            g.close();
            d.release();
        }
    }
}
