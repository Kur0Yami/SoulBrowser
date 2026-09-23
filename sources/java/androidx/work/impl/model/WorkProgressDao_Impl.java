package androidx.work.impl.model;

import androidx.room.EntityInsertionAdapter;
import androidx.room.SharedSQLiteStatement;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.work.Data;
import androidx.work.impl.WorkDatabase_Impl;

/* loaded from: classes.dex */
public final class WorkProgressDao_Impl implements WorkProgressDao {

    /* renamed from: a, reason: collision with root package name */
    public final WorkDatabase_Impl f1934a;
    public final EntityInsertionAdapter b;

    /* renamed from: c, reason: collision with root package name */
    public final SharedSQLiteStatement f1935c;
    public final SharedSQLiteStatement d;

    /* renamed from: androidx.work.impl.model.WorkProgressDao_Impl$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends EntityInsertionAdapter<WorkProgress> {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        public final void d(SupportSQLiteStatement supportSQLiteStatement, Object obj) {
            WorkProgress workProgress = (WorkProgress) obj;
            String str = workProgress.f1933a;
            if (str == null) {
                supportSQLiteStatement.g0(1);
            } else {
                supportSQLiteStatement.t(1, str);
            }
            byte[] c2 = Data.c(workProgress.b);
            if (c2 == null) {
                supportSQLiteStatement.g0(2);
            } else {
                supportSQLiteStatement.R(c2, 2);
            }
        }
    }

    /* renamed from: androidx.work.impl.model.WorkProgressDao_Impl$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 extends SharedSQLiteStatement {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "DELETE from WorkProgress where work_spec_id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkProgressDao_Impl$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 extends SharedSQLiteStatement {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "DELETE FROM WorkProgress";
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.room.EntityInsertionAdapter, androidx.room.SharedSQLiteStatement] */
    public WorkProgressDao_Impl(WorkDatabase_Impl workDatabase_Impl) {
        this.f1934a = workDatabase_Impl;
        this.b = new SharedSQLiteStatement(workDatabase_Impl);
        this.f1935c = new SharedSQLiteStatement(workDatabase_Impl);
        this.d = new SharedSQLiteStatement(workDatabase_Impl);
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public final void a() {
        WorkDatabase_Impl workDatabase_Impl = this.f1934a;
        workDatabase_Impl.b();
        SharedSQLiteStatement sharedSQLiteStatement = this.d;
        SupportSQLiteStatement a2 = sharedSQLiteStatement.a();
        workDatabase_Impl.c();
        try {
            a2.w();
            workDatabase_Impl.h();
        } finally {
            workDatabase_Impl.f();
            sharedSQLiteStatement.c(a2);
        }
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public final void b(WorkProgress workProgress) {
        WorkDatabase_Impl workDatabase_Impl = this.f1934a;
        workDatabase_Impl.b();
        workDatabase_Impl.c();
        try {
            this.b.e(workProgress);
            workDatabase_Impl.h();
        } finally {
            workDatabase_Impl.f();
        }
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public final void delete(String str) {
        WorkDatabase_Impl workDatabase_Impl = this.f1934a;
        workDatabase_Impl.b();
        SharedSQLiteStatement sharedSQLiteStatement = this.f1935c;
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
