package androidx.room;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.support.v4.media.a;
import android.util.Log;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.work.impl.WorkDatabase_Impl;
import com.google.api.client.http.HttpMethods;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public class InvalidationTracker {
    public static final String[] j = {"UPDATE", HttpMethods.DELETE, "INSERT"};
    public final String[] b;

    /* renamed from: c, reason: collision with root package name */
    public final WorkDatabase_Impl f1616c;
    public volatile SupportSQLiteStatement f;
    public final ObservedTableTracker g;
    public final AtomicBoolean d = new AtomicBoolean(false);
    public volatile boolean e = false;
    public final SafeIterableMap h = new SafeIterableMap();
    public final Runnable i = new Runnable() { // from class: androidx.room.InvalidationTracker.1
        public final HashSet a() {
            HashSet hashSet = new HashSet();
            Cursor g = InvalidationTracker.this.f1616c.g(new SimpleSQLiteQuery("SELECT * FROM room_table_modification_log WHERE invalidated = 1;", 0));
            while (g.moveToNext()) {
                try {
                    hashSet.add(Integer.valueOf(g.getInt(0)));
                } catch (Throwable th) {
                    g.close();
                    throw th;
                }
            }
            g.close();
            if (!hashSet.isEmpty()) {
                InvalidationTracker.this.f.w();
            }
            return hashSet;
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0077  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00a7 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                r5 = this;
                androidx.room.InvalidationTracker r0 = androidx.room.InvalidationTracker.this
                androidx.work.impl.WorkDatabase_Impl r0 = r0.f1616c
                java.util.concurrent.locks.ReentrantReadWriteLock r0 = r0.i
                java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock r0 = r0.readLock()
                r1 = 0
                r0.lock()     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                androidx.room.InvalidationTracker r2 = androidx.room.InvalidationTracker.this     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                boolean r2 = r2.a()     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                if (r2 != 0) goto L1a
                r0.unlock()
                return
            L1a:
                androidx.room.InvalidationTracker r2 = androidx.room.InvalidationTracker.this     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                java.util.concurrent.atomic.AtomicBoolean r2 = r2.d     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                r3 = 0
                r4 = 1
                boolean r2 = r2.compareAndSet(r4, r3)     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                if (r2 != 0) goto L2a
                r0.unlock()
                return
            L2a:
                androidx.room.InvalidationTracker r2 = androidx.room.InvalidationTracker.this     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                androidx.work.impl.WorkDatabase_Impl r2 = r2.f1616c     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                androidx.sqlite.db.SupportSQLiteOpenHelper r2 = r2.d     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                androidx.sqlite.db.SupportSQLiteDatabase r2 = r2.O()     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                boolean r2 = r2.m0()     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                if (r2 == 0) goto L3e
                r0.unlock()
                return
            L3e:
                androidx.room.InvalidationTracker r2 = androidx.room.InvalidationTracker.this     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                androidx.work.impl.WorkDatabase_Impl r2 = r2.f1616c     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                boolean r3 = r2.g     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                if (r3 == 0) goto L65
                androidx.sqlite.db.SupportSQLiteOpenHelper r2 = r2.d     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                androidx.sqlite.db.SupportSQLiteDatabase r2 = r2.O()     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                r2.p()     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                java.util.HashSet r1 = r5.a()     // Catch: java.lang.Throwable -> L60
                r2.K()     // Catch: java.lang.Throwable -> L60
                r2.V()     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                goto L69
            L5a:
                r1 = move-exception
                goto La8
            L5c:
                r2 = move-exception
                goto L6d
            L5e:
                r2 = move-exception
                goto L6d
            L60:
                r3 = move-exception
                r2.V()     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
                throw r3     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
            L65:
                java.util.HashSet r1 = r5.a()     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5c java.lang.IllegalStateException -> L5e
            L69:
                r0.unlock()
                goto L75
            L6d:
                java.lang.String r3 = "ROOM"
                java.lang.String r4 = "Cannot run invalidation tracker. Is the db closed?"
                android.util.Log.e(r3, r4, r2)     // Catch: java.lang.Throwable -> L5a
                goto L69
            L75:
                if (r1 == 0) goto La7
                boolean r0 = r1.isEmpty()
                if (r0 != 0) goto La7
                androidx.room.InvalidationTracker r0 = androidx.room.InvalidationTracker.this
                androidx.arch.core.internal.SafeIterableMap r0 = r0.h
                monitor-enter(r0)
                androidx.room.InvalidationTracker r1 = androidx.room.InvalidationTracker.this     // Catch: java.lang.Throwable -> L92
                androidx.arch.core.internal.SafeIterableMap r1 = r1.h     // Catch: java.lang.Throwable -> L92
                java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L92
                boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L92
                if (r2 != 0) goto L94
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L92
                goto La7
            L92:
                r1 = move-exception
                goto La5
            L94:
                java.lang.Object r1 = r1.next()     // Catch: java.lang.Throwable -> L92
                java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch: java.lang.Throwable -> L92
                java.lang.Object r1 = r1.getValue()     // Catch: java.lang.Throwable -> L92
                androidx.room.InvalidationTracker$ObserverWrapper r1 = (androidx.room.InvalidationTracker.ObserverWrapper) r1     // Catch: java.lang.Throwable -> L92
                r1.getClass()     // Catch: java.lang.Throwable -> L92
                r1 = 0
                throw r1     // Catch: java.lang.Throwable -> L92
            La5:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L92
                throw r1
            La7:
                return
            La8:
                r0.unlock()
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.InvalidationTracker.AnonymousClass1.run():void");
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f1615a = new HashMap();

    /* loaded from: classes.dex */
    public static class ObservedTableTracker {

        /* renamed from: a, reason: collision with root package name */
        public final long[] f1618a;
        public final boolean[] b;

        /* renamed from: c, reason: collision with root package name */
        public final int[] f1619c;
        public boolean d;
        public boolean e;

        public ObservedTableTracker(int i) {
            long[] jArr = new long[i];
            this.f1618a = jArr;
            boolean[] zArr = new boolean[i];
            this.b = zArr;
            this.f1619c = new int[i];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        public final int[] a() {
            boolean z;
            synchronized (this) {
                try {
                    if (this.d && !this.e) {
                        int length = this.f1618a.length;
                        int i = 0;
                        while (true) {
                            int i2 = 1;
                            if (i < length) {
                                if (this.f1618a[i] > 0) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                boolean[] zArr = this.b;
                                if (z != zArr[i]) {
                                    int[] iArr = this.f1619c;
                                    if (!z) {
                                        i2 = 2;
                                    }
                                    iArr[i] = i2;
                                } else {
                                    this.f1619c[i] = 0;
                                }
                                zArr[i] = z;
                                i++;
                            } else {
                                this.e = true;
                                this.d = false;
                                return this.f1619c;
                            }
                        }
                    }
                    return null;
                } finally {
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Observer {
        public abstract void a(Set set);
    }

    /* loaded from: classes.dex */
    public static class ObserverWrapper {
    }

    /* loaded from: classes.dex */
    public static class WeakObserver extends Observer {
        @Override // androidx.room.InvalidationTracker.Observer
        public final void a(Set set) {
            throw null;
        }
    }

    public InvalidationTracker(WorkDatabase_Impl workDatabase_Impl, HashMap hashMap, HashMap hashMap2, String... strArr) {
        this.f1616c = workDatabase_Impl;
        this.g = new ObservedTableTracker(strArr.length);
        Collections.newSetFromMap(new IdentityHashMap());
        int length = strArr.length;
        this.b = new String[length];
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            this.f1615a.put(lowerCase, Integer.valueOf(i));
            String str2 = (String) hashMap.get(strArr[i]);
            if (str2 != null) {
                this.b[i] = str2.toLowerCase(locale);
            } else {
                this.b[i] = lowerCase;
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            String str3 = (String) entry.getValue();
            Locale locale2 = Locale.US;
            String lowerCase2 = str3.toLowerCase(locale2);
            if (this.f1615a.containsKey(lowerCase2)) {
                String lowerCase3 = ((String) entry.getKey()).toLowerCase(locale2);
                HashMap hashMap3 = this.f1615a;
                hashMap3.put(lowerCase3, hashMap3.get(lowerCase2));
            }
        }
    }

    public final boolean a() {
        SupportSQLiteDatabase supportSQLiteDatabase = this.f1616c.f1623a;
        if (supportSQLiteDatabase == null || !supportSQLiteDatabase.isOpen()) {
            return false;
        }
        if (!this.e) {
            this.f1616c.d.O();
        }
        if (!this.e) {
            Log.e("ROOM", "database is not initialized even though it is open");
            return false;
        }
        return true;
    }

    public final void b(SupportSQLiteDatabase supportSQLiteDatabase, int i) {
        supportSQLiteDatabase.s("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i + ", 0)");
        String str = this.b[i];
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < 3; i2++) {
            String str2 = j[i2];
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            sb.append("`");
            sb.append("room_table_modification_trigger_");
            a.z(sb, str, "_", str2, "`");
            a.z(sb, " AFTER ", str2, " ON `", str);
            a.z(sb, "` BEGIN UPDATE ", "room_table_modification_log", " SET ", "invalidated");
            a.z(sb, " = 1", " WHERE ", "table_id", " = ");
            sb.append(i);
            sb.append(" AND ");
            sb.append("invalidated");
            sb.append(" = 0");
            sb.append("; END");
            supportSQLiteDatabase.s(sb.toString());
        }
    }

    public final void c(SupportSQLiteDatabase supportSQLiteDatabase) {
        if (supportSQLiteDatabase.m0()) {
            return;
        }
        while (true) {
            try {
                ReentrantReadWriteLock.ReadLock readLock = this.f1616c.i.readLock();
                readLock.lock();
                try {
                    int[] a2 = this.g.a();
                    if (a2 == null) {
                        readLock.unlock();
                        return;
                    }
                    int length = a2.length;
                    supportSQLiteDatabase.p();
                    for (int i = 0; i < length; i++) {
                        try {
                            int i2 = a2[i];
                            if (i2 != 1) {
                                if (i2 == 2) {
                                    String str = this.b[i];
                                    StringBuilder sb = new StringBuilder();
                                    String[] strArr = j;
                                    for (int i3 = 0; i3 < 3; i3++) {
                                        String str2 = strArr[i3];
                                        sb.setLength(0);
                                        sb.append("DROP TRIGGER IF EXISTS ");
                                        sb.append("`");
                                        sb.append("room_table_modification_trigger_");
                                        sb.append(str);
                                        sb.append("_");
                                        sb.append(str2);
                                        sb.append("`");
                                        supportSQLiteDatabase.s(sb.toString());
                                    }
                                }
                            } else {
                                b(supportSQLiteDatabase, i);
                            }
                        } catch (Throwable th) {
                            supportSQLiteDatabase.V();
                            throw th;
                        }
                    }
                    supportSQLiteDatabase.K();
                    supportSQLiteDatabase.V();
                    ObservedTableTracker observedTableTracker = this.g;
                    synchronized (observedTableTracker) {
                        observedTableTracker.e = false;
                    }
                    readLock.unlock();
                } catch (Throwable th2) {
                    readLock.unlock();
                    throw th2;
                }
            } catch (SQLiteException | IllegalStateException e) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                return;
            }
        }
    }
}
