package androidx.sqlite.db.framework;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import android.util.Pair;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
class FrameworkSQLiteOpenHelper implements SupportSQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public final Context f1660c;
    public final String f;
    public final SupportSQLiteOpenHelper.Callback g;
    public final boolean h;
    public final Object i = new Object();
    public OpenHelper j;
    public boolean k;

    /* loaded from: classes.dex */
    public static class OpenHelper extends SQLiteOpenHelper {

        /* renamed from: c, reason: collision with root package name */
        public final FrameworkSQLiteDatabase[] f1661c;
        public final SupportSQLiteOpenHelper.Callback f;
        public boolean g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenHelper(Context context, String str, final FrameworkSQLiteDatabase[] frameworkSQLiteDatabaseArr, final SupportSQLiteOpenHelper.Callback callback) {
            super(context, str, null, 12, new DatabaseErrorHandler() { // from class: androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper.OpenHelper.1
                @Override // android.database.DatabaseErrorHandler
                public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
                    FrameworkSQLiteDatabase a2 = OpenHelper.a(frameworkSQLiteDatabaseArr, sQLiteDatabase);
                    SupportSQLiteOpenHelper.Callback.this.getClass();
                    Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + a2.f1658c.getPath());
                    SQLiteDatabase sQLiteDatabase2 = a2.f1658c;
                    if (!sQLiteDatabase2.isOpen()) {
                        SupportSQLiteOpenHelper.Callback.a(sQLiteDatabase2.getPath());
                        return;
                    }
                    List<Pair<String, String>> list = null;
                    try {
                        try {
                            list = sQLiteDatabase2.getAttachedDbs();
                        } finally {
                            if (list != null) {
                                Iterator<Pair<String, String>> it = list.iterator();
                                while (it.hasNext()) {
                                    SupportSQLiteOpenHelper.Callback.a((String) it.next().second);
                                }
                            } else {
                                SupportSQLiteOpenHelper.Callback.a(sQLiteDatabase2.getPath());
                            }
                        }
                    } catch (SQLiteException unused) {
                    }
                    try {
                        a2.close();
                    } catch (IOException unused2) {
                    }
                }
            });
            callback.getClass();
            this.f = callback;
            this.f1661c = frameworkSQLiteDatabaseArr;
        }

        public static FrameworkSQLiteDatabase a(FrameworkSQLiteDatabase[] frameworkSQLiteDatabaseArr, SQLiteDatabase sQLiteDatabase) {
            FrameworkSQLiteDatabase frameworkSQLiteDatabase = frameworkSQLiteDatabaseArr[0];
            if (frameworkSQLiteDatabase == null || frameworkSQLiteDatabase.f1658c != sQLiteDatabase) {
                frameworkSQLiteDatabaseArr[0] = new FrameworkSQLiteDatabase(sQLiteDatabase);
            }
            return frameworkSQLiteDatabaseArr[0];
        }

        public final synchronized SupportSQLiteDatabase b() {
            this.g = false;
            SQLiteDatabase writableDatabase = super.getWritableDatabase();
            if (this.g) {
                close();
                return b();
            }
            return a(this.f1661c, writableDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public final synchronized void close() {
            super.close();
            this.f1661c[0] = null;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
            a(this.f1661c, sQLiteDatabase);
            this.f.getClass();
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.f.b(a(this.f1661c, sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.g = true;
            this.f.c(a(this.f1661c, sQLiteDatabase), i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (!this.g) {
                this.f.d(a(this.f1661c, sQLiteDatabase));
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.g = true;
            this.f.e(a(this.f1661c, sQLiteDatabase), i, i2);
        }
    }

    public FrameworkSQLiteOpenHelper(Context context, String str, SupportSQLiteOpenHelper.Callback callback, boolean z) {
        this.f1660c = context;
        this.f = str;
        this.g = callback;
        this.h = z;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public final SupportSQLiteDatabase O() {
        return a().b();
    }

    public final OpenHelper a() {
        OpenHelper openHelper;
        synchronized (this.i) {
            try {
                if (this.j == null) {
                    FrameworkSQLiteDatabase[] frameworkSQLiteDatabaseArr = new FrameworkSQLiteDatabase[1];
                    if (this.f != null && this.h) {
                        this.j = new OpenHelper(this.f1660c, new File(this.f1660c.getNoBackupFilesDir(), this.f).getAbsolutePath(), frameworkSQLiteDatabaseArr, this.g);
                    } else {
                        this.j = new OpenHelper(this.f1660c, this.f, frameworkSQLiteDatabaseArr, this.g);
                    }
                    this.j.setWriteAheadLoggingEnabled(this.k);
                }
                openHelper = this.j;
            } catch (Throwable th) {
                throw th;
            }
        }
        return openHelper;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a().close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public final void setWriteAheadLoggingEnabled(boolean z) {
        synchronized (this.i) {
            try {
                OpenHelper openHelper = this.j;
                if (openHelper != null) {
                    openHelper.setWriteAheadLoggingEnabled(z);
                }
                this.k = z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
