package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.work.impl.WorkDatabase_Impl;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class WorkNameDao_Impl implements WorkNameDao {

    /* renamed from: a, reason: collision with root package name */
    public final WorkDatabase_Impl f1932a;
    public final EntityInsertionAdapter b;

    /* renamed from: androidx.work.impl.model.WorkNameDao_Impl$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends EntityInsertionAdapter<WorkName> {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        public final void d(SupportSQLiteStatement supportSQLiteStatement, Object obj) {
            WorkName workName = (WorkName) obj;
            workName.getClass();
            supportSQLiteStatement.g0(1);
            String str = workName.f1931a;
            if (str == null) {
                supportSQLiteStatement.g0(2);
            } else {
                supportSQLiteStatement.t(2, str);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.room.EntityInsertionAdapter, androidx.room.SharedSQLiteStatement] */
    public WorkNameDao_Impl(WorkDatabase_Impl workDatabase_Impl) {
        this.f1932a = workDatabase_Impl;
        this.b = new SharedSQLiteStatement(workDatabase_Impl);
    }

    @Override // androidx.work.impl.model.WorkNameDao
    public final void a(WorkName workName) {
        WorkDatabase_Impl workDatabase_Impl = this.f1932a;
        workDatabase_Impl.b();
        workDatabase_Impl.c();
        try {
            this.b.e(workName);
            workDatabase_Impl.h();
        } finally {
            workDatabase_Impl.f();
        }
    }

    @Override // androidx.work.impl.model.WorkNameDao
    public final ArrayList b(String str) {
        RoomSQLiteQuery d = RoomSQLiteQuery.d(1, "SELECT name FROM workname WHERE work_spec_id=?");
        if (str == null) {
            d.g0(1);
        } else {
            d.t(1, str);
        }
        WorkDatabase_Impl workDatabase_Impl = this.f1932a;
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
}
