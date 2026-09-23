package androidx.sqlite.db.framework;

import android.database.sqlite.SQLiteProgram;
import androidx.sqlite.db.SupportSQLiteProgram;

/* loaded from: classes.dex */
class FrameworkSQLiteProgram implements SupportSQLiteProgram {

    /* renamed from: c, reason: collision with root package name */
    public final SQLiteProgram f1663c;

    public FrameworkSQLiteProgram(SQLiteProgram sQLiteProgram) {
        this.f1663c = sQLiteProgram;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void I(int i, long j) {
        this.f1663c.bindLong(i, j);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void R(byte[] bArr, int i) {
        this.f1663c.bindBlob(i, bArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f1663c.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void d0(double d, int i) {
        this.f1663c.bindDouble(i, d);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void g0(int i) {
        this.f1663c.bindNull(i);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void t(int i, String str) {
        this.f1663c.bindString(i, str);
    }
}
