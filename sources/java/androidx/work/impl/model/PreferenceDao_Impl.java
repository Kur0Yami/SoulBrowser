package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.work.impl.WorkDatabase;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class PreferenceDao_Impl implements PreferenceDao {

    /* renamed from: a, reason: collision with root package name */
    public final RoomDatabase f1927a;
    public final EntityInsertionAdapter b;

    /* renamed from: androidx.work.impl.model.PreferenceDao_Impl$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends EntityInsertionAdapter<Preference> {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        public final void d(SupportSQLiteStatement supportSQLiteStatement, Object obj) {
            Preference preference = (Preference) obj;
            String str = preference.f1926a;
            if (str == null) {
                supportSQLiteStatement.g0(1);
            } else {
                supportSQLiteStatement.t(1, str);
            }
            Long l = preference.b;
            if (l == null) {
                supportSQLiteStatement.g0(2);
            } else {
                supportSQLiteStatement.I(2, l.longValue());
            }
        }
    }

    /* renamed from: androidx.work.impl.model.PreferenceDao_Impl$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements Callable<Long> {
        @Override // java.util.concurrent.Callable
        public final Long call() {
            throw null;
        }

        public final void finalize() {
            throw null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.room.EntityInsertionAdapter, androidx.room.SharedSQLiteStatement] */
    public PreferenceDao_Impl(WorkDatabase workDatabase) {
        this.f1927a = workDatabase;
        this.b = new SharedSQLiteStatement(workDatabase);
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public final Long a(String str) {
        RoomSQLiteQuery d = RoomSQLiteQuery.d(1, "SELECT long_value FROM Preference where `key`=?");
        d.t(1, str);
        RoomDatabase roomDatabase = this.f1927a;
        roomDatabase.b();
        Cursor g = roomDatabase.g(d);
        try {
            Long l = null;
            if (g.moveToFirst() && !g.isNull(0)) {
                l = Long.valueOf(g.getLong(0));
            }
            return l;
        } finally {
            g.close();
            d.release();
        }
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public final void b(Preference preference) {
        RoomDatabase roomDatabase = this.f1927a;
        roomDatabase.b();
        roomDatabase.c();
        try {
            this.b.e(preference);
            roomDatabase.h();
        } finally {
            roomDatabase.f();
        }
    }
}
