package androidx.sqlite.db.framework;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;

/* loaded from: classes.dex */
class FrameworkSQLiteDatabase implements SupportSQLiteDatabase {
    public static final String[] f = new String[0];

    /* renamed from: c, reason: collision with root package name */
    public final SQLiteDatabase f1658c;

    /* renamed from: androidx.sqlite.db.framework.FrameworkSQLiteDatabase$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements SQLiteDatabase.CursorFactory {
        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            new FrameworkSQLiteProgram(sQLiteQuery);
            throw null;
        }
    }

    public FrameworkSQLiteDatabase(SQLiteDatabase sQLiteDatabase) {
        this.f1658c = sQLiteDatabase;
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void J(Object[] objArr) {
        this.f1658c.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", objArr);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void K() {
        this.f1658c.setTransactionSuccessful();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final Cursor P(String str) {
        return f0(new SimpleSQLiteQuery(str, 0));
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void V() {
        this.f1658c.endTransaction();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f1658c.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final Cursor f0(final SupportSQLiteQuery supportSQLiteQuery) {
        return this.f1658c.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: androidx.sqlite.db.framework.FrameworkSQLiteDatabase.1
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                SupportSQLiteQuery.this.b(new FrameworkSQLiteProgram(sQLiteQuery));
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, supportSQLiteQuery.a(), f, null);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final boolean isOpen() {
        return this.f1658c.isOpen();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final boolean m0() {
        return this.f1658c.inTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void p() {
        this.f1658c.beginTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void s(String str) {
        this.f1658c.execSQL(str);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final SupportSQLiteStatement x(String str) {
        return new FrameworkSQLiteStatement(this.f1658c.compileStatement(str));
    }
}
