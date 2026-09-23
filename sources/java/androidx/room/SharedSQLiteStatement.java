package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.concurrent.atomic.AtomicBoolean;

@RestrictTo
/* loaded from: classes.dex */
public abstract class SharedSQLiteStatement {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f1632a = new AtomicBoolean(false);
    public final RoomDatabase b;

    /* renamed from: c, reason: collision with root package name */
    public volatile SupportSQLiteStatement f1633c;

    public SharedSQLiteStatement(RoomDatabase roomDatabase) {
        this.b = roomDatabase;
    }

    public final SupportSQLiteStatement a() {
        this.b.a();
        if (this.f1632a.compareAndSet(false, true)) {
            if (this.f1633c == null) {
                String b = b();
                RoomDatabase roomDatabase = this.b;
                roomDatabase.a();
                roomDatabase.b();
                this.f1633c = roomDatabase.d.O().x(b);
            }
            return this.f1633c;
        }
        String b2 = b();
        RoomDatabase roomDatabase2 = this.b;
        roomDatabase2.a();
        roomDatabase2.b();
        return roomDatabase2.d.O().x(b2);
    }

    public abstract String b();

    public final void c(SupportSQLiteStatement supportSQLiteStatement) {
        if (supportSQLiteStatement == this.f1633c) {
            this.f1632a.set(false);
        }
    }
}
