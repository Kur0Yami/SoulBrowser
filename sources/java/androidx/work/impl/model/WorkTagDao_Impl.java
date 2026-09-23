package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.work.impl.WorkDatabase_Impl;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class WorkTagDao_Impl implements WorkTagDao {

    /* renamed from: a, reason: collision with root package name */
    public final WorkDatabase_Impl f1942a;
    public final EntityInsertionAdapter b;

    /* renamed from: androidx.work.impl.model.WorkTagDao_Impl$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends EntityInsertionAdapter<WorkTag> {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        public final void d(SupportSQLiteStatement supportSQLiteStatement, Object obj) {
            WorkTag workTag = (WorkTag) obj;
            String str = workTag.f1941a;
            if (str == null) {
                supportSQLiteStatement.g0(1);
            } else {
                supportSQLiteStatement.t(1, str);
            }
            String str2 = workTag.b;
            if (str2 == null) {
                supportSQLiteStatement.g0(2);
            } else {
                supportSQLiteStatement.t(2, str2);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.room.EntityInsertionAdapter, androidx.room.SharedSQLiteStatement] */
    public WorkTagDao_Impl(WorkDatabase_Impl workDatabase_Impl) {
        this.f1942a = workDatabase_Impl;
        this.b = new SharedSQLiteStatement(workDatabase_Impl);
    }

    @Override // androidx.work.impl.model.WorkTagDao
    public final void a(WorkTag workTag) {
        WorkDatabase_Impl workDatabase_Impl = this.f1942a;
        workDatabase_Impl.b();
        workDatabase_Impl.c();
        try {
            this.b.e(workTag);
            workDatabase_Impl.h();
        } finally {
            workDatabase_Impl.f();
        }
    }

    @Override // androidx.work.impl.model.WorkTagDao
    public final ArrayList b(String str) {
        RoomSQLiteQuery d = RoomSQLiteQuery.d(1, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?");
        if (str == null) {
            d.g0(1);
        } else {
            d.t(1, str);
        }
        WorkDatabase_Impl workDatabase_Impl = this.f1942a;
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
