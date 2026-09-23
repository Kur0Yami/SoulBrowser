package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.sqlite.db.SupportSQLiteStatement;

@RestrictTo
/* loaded from: classes.dex */
public abstract class EntityInsertionAdapter<T> extends SharedSQLiteStatement {
    public abstract void d(SupportSQLiteStatement supportSQLiteStatement, Object obj);

    public final void e(Object obj) {
        SupportSQLiteStatement a2 = a();
        try {
            d(a2, obj);
            a2.H0();
        } finally {
            c(a2);
        }
    }
}
