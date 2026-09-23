package androidx.sqlite.db;

import android.database.Cursor;
import java.io.Closeable;

/* loaded from: classes.dex */
public interface SupportSQLiteDatabase extends Closeable {
    void J(Object[] objArr);

    void K();

    Cursor P(String str);

    void V();

    Cursor f0(SupportSQLiteQuery supportSQLiteQuery);

    boolean isOpen();

    boolean m0();

    void p();

    void s(String str);

    SupportSQLiteStatement x(String str);
}
