package androidx.sqlite.db;

/* loaded from: classes.dex */
public final class SimpleSQLiteQuery implements SupportSQLiteQuery {

    /* renamed from: c, reason: collision with root package name */
    public final String f1653c;

    public SimpleSQLiteQuery(String str, int i) {
        this.f1653c = str;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public final String a() {
        return this.f1653c;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public final void b(SupportSQLiteProgram supportSQLiteProgram) {
    }
}
