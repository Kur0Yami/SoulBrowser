package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.work.impl.WorkDatabase_Impl;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class SystemIdInfoDao_Impl implements SystemIdInfoDao {

    /* renamed from: a, reason: collision with root package name */
    public final WorkDatabase_Impl f1929a;
    public final EntityInsertionAdapter b;

    /* renamed from: c, reason: collision with root package name */
    public final SharedSQLiteStatement f1930c;

    /* renamed from: androidx.work.impl.model.SystemIdInfoDao_Impl$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends EntityInsertionAdapter<SystemIdInfo> {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        public final void d(SupportSQLiteStatement supportSQLiteStatement, Object obj) {
            String str = ((SystemIdInfo) obj).f1928a;
            if (str == null) {
                supportSQLiteStatement.g0(1);
            } else {
                supportSQLiteStatement.t(1, str);
            }
            supportSQLiteStatement.I(2, r4.b);
        }
    }

    /* renamed from: androidx.work.impl.model.SystemIdInfoDao_Impl$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 extends SharedSQLiteStatement {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "DELETE FROM SystemIdInfo where work_spec_id=?";
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.room.EntityInsertionAdapter, androidx.room.SharedSQLiteStatement] */
    public SystemIdInfoDao_Impl(WorkDatabase_Impl workDatabase_Impl) {
        this.f1929a = workDatabase_Impl;
        this.b = new SharedSQLiteStatement(workDatabase_Impl);
        this.f1930c = new SharedSQLiteStatement(workDatabase_Impl);
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final ArrayList a() {
        RoomSQLiteQuery d = RoomSQLiteQuery.d(0, "SELECT DISTINCT work_spec_id FROM SystemIdInfo");
        WorkDatabase_Impl workDatabase_Impl = this.f1929a;
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

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final void b(SystemIdInfo systemIdInfo) {
        WorkDatabase_Impl workDatabase_Impl = this.f1929a;
        workDatabase_Impl.b();
        workDatabase_Impl.c();
        try {
            this.b.e(systemIdInfo);
            workDatabase_Impl.h();
        } finally {
            workDatabase_Impl.f();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final SystemIdInfo c(String str) {
        SystemIdInfo systemIdInfo;
        RoomSQLiteQuery d = RoomSQLiteQuery.d(1, "SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?");
        if (str == null) {
            d.g0(1);
        } else {
            d.t(1, str);
        }
        WorkDatabase_Impl workDatabase_Impl = this.f1929a;
        workDatabase_Impl.b();
        Cursor g = workDatabase_Impl.g(d);
        try {
            int a2 = CursorUtil.a(g, "work_spec_id");
            int a3 = CursorUtil.a(g, "system_id");
            if (g.moveToFirst()) {
                systemIdInfo = new SystemIdInfo(g.getString(a2), g.getInt(a3));
            } else {
                systemIdInfo = null;
            }
            return systemIdInfo;
        } finally {
            g.close();
            d.release();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final void d(String str) {
        WorkDatabase_Impl workDatabase_Impl = this.f1929a;
        workDatabase_Impl.b();
        SharedSQLiteStatement sharedSQLiteStatement = this.f1930c;
        SupportSQLiteStatement a2 = sharedSQLiteStatement.a();
        if (str == null) {
            a2.g0(1);
        } else {
            a2.t(1, str);
        }
        workDatabase_Impl.c();
        try {
            a2.w();
            workDatabase_Impl.h();
        } finally {
            workDatabase_Impl.f();
            sharedSQLiteStatement.c(a2);
        }
    }
}
