package androidx.room;

import android.database.Cursor;
import androidx.annotation.RestrictTo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;

@RestrictTo
/* loaded from: classes.dex */
public class RoomOpenHelper extends SupportSQLiteOpenHelper.Callback {

    /* renamed from: a, reason: collision with root package name */
    public DatabaseConfiguration f1629a;
    public final Delegate b;

    @RestrictTo
    /* loaded from: classes.dex */
    public static abstract class Delegate {
        public abstract void a(SupportSQLiteDatabase supportSQLiteDatabase);

        public abstract void b(SupportSQLiteDatabase supportSQLiteDatabase);

        public abstract void c();

        public abstract void d(SupportSQLiteDatabase supportSQLiteDatabase);

        public void e(SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        public ValidationResult f(SupportSQLiteDatabase supportSQLiteDatabase) {
            throw new UnsupportedOperationException("validateMigration is deprecated");
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public static class ValidationResult {

        /* renamed from: a, reason: collision with root package name */
        public final boolean f1630a;
        public final String b;

        public ValidationResult(String str, boolean z) {
            this.f1630a = z;
            this.b = str;
        }
    }

    public RoomOpenHelper(DatabaseConfiguration databaseConfiguration, Delegate delegate) {
        this.f1629a = databaseConfiguration;
        this.b = delegate;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public final void b(SupportSQLiteDatabase supportSQLiteDatabase) {
        Cursor P = supportSQLiteDatabase.P("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = false;
            if (P.moveToFirst()) {
                if (P.getInt(0) == 0) {
                    z = true;
                }
            }
            P.close();
            Delegate delegate = this.b;
            delegate.a(supportSQLiteDatabase);
            if (!z) {
                ValidationResult f = delegate.f(supportSQLiteDatabase);
                if (!f.f1630a) {
                    throw new IllegalStateException("Pre-packaged database has an invalid schema: " + f.b);
                }
            }
            f(supportSQLiteDatabase);
            delegate.c();
        } catch (Throwable th) {
            P.close();
            throw th;
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public final void c(SupportSQLiteDatabase supportSQLiteDatabase, int i, int i2) {
        e(supportSQLiteDatabase, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0059  */
    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(androidx.sqlite.db.SupportSQLiteDatabase r6) {
        /*
            r5 = this;
            java.lang.String r0 = "SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'"
            android.database.Cursor r0 = r6.P(r0)
            boolean r1 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L15
            r2 = 0
            if (r1 == 0) goto L17
            int r1 = r0.getInt(r2)     // Catch: java.lang.Throwable -> L15
            if (r1 == 0) goto L17
            r1 = 1
            goto L18
        L15:
            r6 = move-exception
            goto L80
        L17:
            r1 = r2
        L18:
            r0.close()
            androidx.room.RoomOpenHelper$Delegate r0 = r5.b
            r3 = 0
            if (r1 == 0) goto L59
            androidx.sqlite.db.SimpleSQLiteQuery r1 = new androidx.sqlite.db.SimpleSQLiteQuery
            java.lang.String r4 = "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"
            r1.<init>(r4, r2)
            android.database.Cursor r1 = r6.f0(r1)
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L36
            if (r4 == 0) goto L38
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L36
            goto L39
        L36:
            r6 = move-exception
            goto L55
        L38:
            r2 = r3
        L39:
            r1.close()
            java.lang.String r1 = "c103703e120ae8cc73c9248622f3cd1e"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L64
            java.lang.String r1 = "49f946663a8deb7054212b8adda248c6"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L4d
            goto L64
        L4d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number."
            r6.<init>(r0)
            throw r6
        L55:
            r1.close()
            throw r6
        L59:
            androidx.room.RoomOpenHelper$ValidationResult r1 = r0.f(r6)
            boolean r2 = r1.f1630a
            if (r2 == 0) goto L6a
            r5.f(r6)
        L64:
            r0.d(r6)
            r5.f1629a = r3
            return
        L6a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "Pre-packaged database has an invalid schema: "
            r0.<init>(r2)
            java.lang.String r1 = r1.b
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r6.<init>(r0)
            throw r6
        L80:
            r0.close()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomOpenHelper.d(androidx.sqlite.db.SupportSQLiteDatabase):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x006b A[EDGE_INSN: B:59:0x006b->B:43:0x006b BREAK  A[LOOP:1: B:23:0x001e->B:44:?], SYNTHETIC] */
    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(androidx.sqlite.db.SupportSQLiteDatabase r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomOpenHelper.e(androidx.sqlite.db.SupportSQLiteDatabase, int, int):void");
    }

    public final void f(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.s("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        supportSQLiteDatabase.s("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c103703e120ae8cc73c9248622f3cd1e')");
    }
}
