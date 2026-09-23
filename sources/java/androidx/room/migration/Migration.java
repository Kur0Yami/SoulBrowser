package androidx.room.migration;

import androidx.sqlite.db.SupportSQLiteDatabase;

/* loaded from: classes.dex */
public abstract class Migration {

    /* renamed from: a, reason: collision with root package name */
    public final int f1636a;
    public final int b;

    public Migration(int i, int i2) {
        this.f1636a = i;
        this.b = i2;
    }

    public abstract void a(SupportSQLiteDatabase supportSQLiteDatabase);
}
