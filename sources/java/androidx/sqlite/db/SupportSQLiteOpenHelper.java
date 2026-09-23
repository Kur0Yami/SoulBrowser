package androidx.sqlite.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Log;
import androidx.work.impl.workers.a;
import java.io.Closeable;
import java.io.File;

/* loaded from: classes.dex */
public interface SupportSQLiteOpenHelper extends Closeable {

    /* loaded from: classes.dex */
    public static abstract class Callback {
        public static void a(String str) {
            if (!str.equalsIgnoreCase(":memory:") && str.trim().length() != 0) {
                Log.w("SupportSQLite", "deleting the database file: ".concat(str));
                try {
                    SQLiteDatabase.deleteDatabase(new File(str));
                } catch (Exception e) {
                    Log.w("SupportSQLite", "delete failed: ", e);
                }
            }
        }

        public abstract void b(SupportSQLiteDatabase supportSQLiteDatabase);

        public void c(SupportSQLiteDatabase supportSQLiteDatabase, int i, int i2) {
            throw new SQLiteException(a.s("Can't downgrade database from version ", i, i2, " to "));
        }

        public void d(SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        public abstract void e(SupportSQLiteDatabase supportSQLiteDatabase, int i, int i2);
    }

    /* loaded from: classes.dex */
    public static class Configuration {

        /* renamed from: a, reason: collision with root package name */
        public final Context f1654a;
        public final String b;

        /* renamed from: c, reason: collision with root package name */
        public final Callback f1655c;
        public final boolean d;

        /* loaded from: classes.dex */
        public static class Builder {

            /* renamed from: a, reason: collision with root package name */
            public Context f1656a;
            public String b;

            /* renamed from: c, reason: collision with root package name */
            public Callback f1657c;
            public boolean d;

            public final Configuration a() {
                Context context = this.f1656a;
                if (this.f1657c != null) {
                    if (context != null) {
                        if (this.d && TextUtils.isEmpty(this.b)) {
                            throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
                        }
                        return new Configuration(context, this.b, this.f1657c, this.d);
                    }
                    throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                }
                throw new IllegalArgumentException("Must set a callback to create the configuration.");
            }
        }

        public Configuration(Context context, String str, Callback callback, boolean z) {
            this.f1654a = context;
            this.b = str;
            this.f1655c = callback;
            this.d = z;
        }
    }

    /* loaded from: classes.dex */
    public interface Factory {
        SupportSQLiteOpenHelper a(Configuration configuration);
    }

    SupportSQLiteDatabase O();

    void setWriteAheadLoggingEnabled(boolean z);
}
