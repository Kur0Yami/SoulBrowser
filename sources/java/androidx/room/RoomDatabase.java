package androidx.room;

import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.Looper;
import android.util.Log;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.executor.a;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.work.impl.WorkDatabase;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.TreeMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public abstract class RoomDatabase {

    /* renamed from: a, reason: collision with root package name */
    public volatile SupportSQLiteDatabase f1623a;
    public Executor b;

    /* renamed from: c, reason: collision with root package name */
    public Executor f1624c;
    public SupportSQLiteOpenHelper d;
    public final InvalidationTracker e;
    public boolean f;
    public boolean g;
    public List h;
    public final ReentrantReadWriteLock i = new ReentrantReadWriteLock();
    public final ThreadLocal j = new ThreadLocal();

    /* loaded from: classes.dex */
    public static class Builder<T extends RoomDatabase> {

        /* renamed from: a, reason: collision with root package name */
        public final String f1625a;
        public final Context b;

        /* renamed from: c, reason: collision with root package name */
        public ArrayList f1626c;
        public Executor d;
        public Executor e;
        public SupportSQLiteOpenHelper.Factory f;
        public boolean g;
        public boolean h = true;
        public boolean i;
        public final MigrationContainer j;
        public HashSet k;

        /* JADX WARN: Type inference failed for: r1v2, types: [androidx.room.RoomDatabase$MigrationContainer, java.lang.Object] */
        public Builder(Context context, String str) {
            this.b = context;
            this.f1625a = str;
            ?? obj = new Object();
            obj.f1628a = new HashMap();
            this.j = obj;
        }

        public final void a(Migration... migrationArr) {
            if (this.k == null) {
                this.k = new HashSet();
            }
            for (Migration migration : migrationArr) {
                this.k.add(Integer.valueOf(migration.f1636a));
                this.k.add(Integer.valueOf(migration.b));
            }
            MigrationContainer migrationContainer = this.j;
            migrationContainer.getClass();
            for (Migration migration2 : migrationArr) {
                int i = migration2.f1636a;
                int i2 = migration2.b;
                HashMap hashMap = migrationContainer.f1628a;
                TreeMap treeMap = (TreeMap) hashMap.get(Integer.valueOf(i));
                if (treeMap == null) {
                    treeMap = new TreeMap();
                    hashMap.put(Integer.valueOf(i), treeMap);
                }
                Migration migration3 = (Migration) treeMap.get(Integer.valueOf(i2));
                if (migration3 != null) {
                    Log.w("ROOM", "Overriding migration " + migration3 + " with " + migration2);
                }
                treeMap.put(Integer.valueOf(i2), migration2);
            }
        }

        /* JADX WARN: Type inference failed for: r0v10, types: [androidx.sqlite.db.SupportSQLiteOpenHelper$Factory, java.lang.Object] */
        public final RoomDatabase b() {
            Executor executor;
            JournalMode journalMode;
            String str;
            Context context = this.b;
            if (context != null) {
                Executor executor2 = this.d;
                if (executor2 == null && this.e == null) {
                    a aVar = ArchTaskExecutor.f356c;
                    this.e = aVar;
                    this.d = aVar;
                } else if (executor2 != null && this.e == null) {
                    this.e = executor2;
                } else if (executor2 == null && (executor = this.e) != null) {
                    this.d = executor;
                }
                if (this.f == null) {
                    this.f = new Object();
                }
                SupportSQLiteOpenHelper.Factory factory = this.f;
                ArrayList arrayList = this.f1626c;
                boolean z = this.g;
                ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
                JournalMode journalMode2 = JournalMode.f;
                if (activityManager != null && !activityManager.isLowRamDevice()) {
                    journalMode = journalMode2;
                } else {
                    journalMode = JournalMode.f1627c;
                }
                Executor executor3 = this.d;
                Executor executor4 = this.e;
                DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration(context, this.f1625a, factory, this.j, arrayList, z, journalMode, executor3, executor4, this.h, this.i);
                String name = WorkDatabase.class.getPackage().getName();
                String canonicalName = WorkDatabase.class.getCanonicalName();
                boolean z2 = true;
                if (!name.isEmpty()) {
                    canonicalName = canonicalName.substring(name.length() + 1);
                }
                String str2 = canonicalName.replace('.', '_') + "_Impl";
                try {
                    if (name.isEmpty()) {
                        str = str2;
                    } else {
                        str = name + "." + str2;
                    }
                    RoomDatabase roomDatabase = (RoomDatabase) Class.forName(str).newInstance();
                    SupportSQLiteOpenHelper e = roomDatabase.e(databaseConfiguration);
                    roomDatabase.d = e;
                    if (journalMode != journalMode2) {
                        z2 = false;
                    }
                    e.setWriteAheadLoggingEnabled(z2);
                    roomDatabase.h = arrayList;
                    roomDatabase.b = executor3;
                    roomDatabase.f1624c = new TransactionExecutor(executor4);
                    roomDatabase.f = z;
                    roomDatabase.g = z2;
                    return roomDatabase;
                } catch (ClassNotFoundException unused) {
                    throw new RuntimeException("cannot find implementation for " + WorkDatabase.class.getCanonicalName() + ". " + str2 + " does not exist");
                } catch (IllegalAccessException unused2) {
                    throw new RuntimeException("Cannot access the constructor" + WorkDatabase.class.getCanonicalName());
                } catch (InstantiationException unused3) {
                    throw new RuntimeException("Failed to create an instance of " + WorkDatabase.class.getCanonicalName());
                }
            }
            throw new IllegalArgumentException("Cannot provide null context for the database.");
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Callback {
        public void a(SupportSQLiteDatabase supportSQLiteDatabase) {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class JournalMode {

        /* renamed from: c, reason: collision with root package name */
        public static final JournalMode f1627c;
        public static final JournalMode f;
        public static final /* synthetic */ JournalMode[] g;

        /* JADX INFO: Fake field, exist only in values array */
        JournalMode EF0;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.room.RoomDatabase$JournalMode, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v1, types: [androidx.room.RoomDatabase$JournalMode, java.lang.Enum] */
        static {
            Enum r0 = new Enum("AUTOMATIC", 0);
            ?? r1 = new Enum("TRUNCATE", 1);
            f1627c = r1;
            ?? r3 = new Enum("WRITE_AHEAD_LOGGING", 2);
            f = r3;
            g = new JournalMode[]{r0, r1, r3};
        }

        public static JournalMode valueOf(String str) {
            return (JournalMode) Enum.valueOf(JournalMode.class, str);
        }

        public static JournalMode[] values() {
            return (JournalMode[]) g.clone();
        }
    }

    /* loaded from: classes.dex */
    public static class MigrationContainer {

        /* renamed from: a, reason: collision with root package name */
        public HashMap f1628a;
    }

    public RoomDatabase() {
        new ConcurrentHashMap();
        this.e = d();
    }

    public final void a() {
        if (this.f || Looper.getMainLooper().getThread() != Thread.currentThread()) {
        } else {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public final void b() {
        if (!this.d.O().m0() && this.j.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    public final void c() {
        a();
        SupportSQLiteDatabase O = this.d.O();
        this.e.c(O);
        O.p();
    }

    public abstract InvalidationTracker d();

    public abstract SupportSQLiteOpenHelper e(DatabaseConfiguration databaseConfiguration);

    public final void f() {
        this.d.O().V();
        if (!this.d.O().m0()) {
            InvalidationTracker invalidationTracker = this.e;
            if (invalidationTracker.d.compareAndSet(false, true)) {
                invalidationTracker.f1616c.b.execute(invalidationTracker.i);
            }
        }
    }

    public final Cursor g(SupportSQLiteQuery supportSQLiteQuery) {
        a();
        b();
        return this.d.O().f0(supportSQLiteQuery);
    }

    public final void h() {
        this.d.O().K();
    }
}
