package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import androidx.annotation.WorkerThread;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Set;
import javax.inject.Provider;
import javax.inject.Singleton;

@Singleton
@WorkerThread
/* loaded from: classes.dex */
public class SQLiteEventStore implements EventStore, SynchronizationGuard, ClientHealthMetricsStore {
    public static final Encoding j = new Encoding("proto");

    /* renamed from: c, reason: collision with root package name */
    public final SchemaManager f2909c;
    public final Clock f;
    public final Clock g;
    public final EventStoreConfig h;
    public final Provider i;

    /* loaded from: classes.dex */
    public interface Function<T, U> {
        Object apply(Object obj);
    }

    /* loaded from: classes.dex */
    public static class Metadata {

        /* renamed from: a, reason: collision with root package name */
        public final String f2910a;
        public final String b;

        public Metadata(String str, String str2) {
            this.f2910a = str;
            this.b = str2;
        }
    }

    /* loaded from: classes.dex */
    public interface Producer<T> {
    }

    public SQLiteEventStore(Clock clock, Clock clock2, EventStoreConfig eventStoreConfig, SchemaManager schemaManager, Provider provider) {
        this.f2909c = schemaManager;
        this.f = clock;
        this.g = clock2;
        this.h = eventStoreConfig;
        this.i = provider;
    }

    public static Long i(SQLiteDatabase sQLiteDatabase, TransportContext transportContext) {
        Long valueOf;
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(transportContext.b(), String.valueOf(PriorityMapping.a(transportContext.d()))));
        if (transportContext.c() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(transportContext.c(), 0));
        } else {
            sb.append(" and extras is null");
        }
        Cursor query = sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null);
        try {
            if (!query.moveToNext()) {
                valueOf = null;
            } else {
                valueOf = Long.valueOf(query.getLong(0));
            }
            return valueOf;
        } finally {
            query.close();
        }
    }

    public static String l(Iterable iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(((PersistedEvent) it.next()).b());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public static Object m(Cursor cursor, Function function) {
        try {
            return function.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final Iterable E() {
        return (Iterable) j(new c(0));
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore
    public final void a() {
        j(new f(0, this));
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard
    public final Object b(SynchronizationGuard.CriticalSection criticalSection) {
        SQLiteDatabase f = f();
        Clock clock = this.g;
        long a2 = clock.a();
        while (true) {
            try {
                f.beginTransaction();
                try {
                    Object execute = criticalSection.execute();
                    f.setTransactionSuccessful();
                    return execute;
                } finally {
                    f.endTransaction();
                }
            } catch (SQLiteDatabaseLockedException e) {
                if (clock.a() < this.h.a() + a2) {
                    SystemClock.sleep(50L);
                } else {
                    throw new RuntimeException("Timed out while trying to acquire the lock.", e);
                }
            }
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final void c0(final long j2, final TransportContext transportContext) {
        j(new Function() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.e
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
            public final Object apply(Object obj) {
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                Encoding encoding = SQLiteEventStore.j;
                ContentValues contentValues = new ContentValues();
                contentValues.put("next_request_ms", Long.valueOf(j2));
                TransportContext transportContext2 = transportContext;
                if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{transportContext2.b(), String.valueOf(PriorityMapping.a(transportContext2.d()))}) < 1) {
                    contentValues.put("backend_name", transportContext2.b());
                    contentValues.put("priority", Integer.valueOf(PriorityMapping.a(transportContext2.d())));
                    sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                return null;
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f2909c.close();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore
    public final ClientMetrics d() {
        int i = ClientMetrics.e;
        ClientMetrics.Builder builder = new ClientMetrics.Builder();
        HashMap hashMap = new HashMap();
        SQLiteDatabase f = f();
        f.beginTransaction();
        try {
            ClientMetrics clientMetrics = (ClientMetrics) m(f.rawQuery("SELECT log_source, reason, events_dropped_count FROM log_event_dropped", new String[0]), new a(this, hashMap, builder, 0));
            f.setTransactionSuccessful();
            return clientMetrics;
        } finally {
            f.endTransaction();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore
    public final void e(final long j2, final LogEventDropped.Reason reason, final String str) {
        j(new Function() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.g
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
            public final Object apply(Object obj) {
                boolean z;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                Encoding encoding = SQLiteEventStore.j;
                int i = reason.f2860c;
                String num = Integer.toString(i);
                String str2 = str;
                Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str2, num});
                try {
                    Encoding encoding2 = SQLiteEventStore.j;
                    if (rawQuery.getCount() > 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    rawQuery.close();
                    long j3 = j2;
                    if (!z) {
                        ContentValues f = androidx.work.impl.workers.a.f("log_source", str2);
                        f.put("reason", Integer.valueOf(i));
                        f.put("events_dropped_count", Long.valueOf(j3));
                        sQLiteDatabase.insert("log_event_dropped", null, f);
                        return null;
                    }
                    sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j3 + " WHERE log_source = ? AND reason = ?", new String[]{str2, Integer.toString(i)});
                    return null;
                } catch (Throwable th) {
                    rawQuery.close();
                    throw th;
                }
            }
        });
    }

    public final SQLiteDatabase f() {
        SchemaManager schemaManager = this.f2909c;
        Objects.requireNonNull(schemaManager);
        Clock clock = this.g;
        long a2 = clock.a();
        while (true) {
            try {
                return schemaManager.getWritableDatabase();
            } catch (SQLiteDatabaseLockedException e) {
                if (clock.a() < this.h.a() + a2) {
                    SystemClock.sleep(50L);
                } else {
                    throw new RuntimeException("Timed out while trying to open db.", e);
                }
            }
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final int g() {
        long a2 = this.f.a() - this.h.b();
        SQLiteDatabase f = f();
        f.beginTransaction();
        try {
            String[] strArr = {String.valueOf(a2)};
            Cursor rawQuery = f.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr);
            while (rawQuery.moveToNext()) {
                try {
                    e(rawQuery.getInt(0), LogEventDropped.Reason.MESSAGE_TOO_OLD, rawQuery.getString(1));
                } catch (Throwable th) {
                    rawQuery.close();
                    throw th;
                }
            }
            rawQuery.close();
            int delete = f.delete("events", "timestamp_ms < ?", strArr);
            f.setTransactionSuccessful();
            return delete;
        } finally {
            f.endTransaction();
        }
    }

    public final Object j(Function function) {
        SQLiteDatabase f = f();
        f.beginTransaction();
        try {
            Object apply = function.apply(f);
            f.setTransactionSuccessful();
            return apply;
        } finally {
            f.endTransaction();
        }
    }

    public final ArrayList k(SQLiteDatabase sQLiteDatabase, TransportContext transportContext, int i) {
        ArrayList arrayList = new ArrayList();
        Long i2 = i(sQLiteDatabase, transportContext);
        if (i2 == null) {
            return arrayList;
        }
        m(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{i2.toString()}, null, null, null, String.valueOf(i)), new a(this, arrayList, transportContext, 2));
        return arrayList;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final PersistedEvent o0(TransportContext transportContext, EventInternal eventInternal) {
        Logging.b("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", transportContext.d(), eventInternal.h(), transportContext.b());
        long longValue = ((Long) j(new a(this, eventInternal, transportContext, 1))).longValue();
        if (longValue < 1) {
            return null;
        }
        return new AutoValue_PersistedEvent(longValue, transportContext, eventInternal);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final void q(Iterable iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        f().compileStatement("DELETE FROM events WHERE _id in " + l(iterable)).execute();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final long u0(TransportContext transportContext) {
        Long l;
        Cursor rawQuery = f().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{transportContext.b(), String.valueOf(PriorityMapping.a(transportContext.d()))});
        try {
            if (rawQuery.moveToNext()) {
                l = Long.valueOf(rawQuery.getLong(0));
            } else {
                l = 0L;
            }
            rawQuery.close();
            return l.longValue();
        } catch (Throwable th) {
            rawQuery.close();
            throw th;
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final boolean w0(TransportContext transportContext) {
        Boolean bool;
        SQLiteDatabase f = f();
        f.beginTransaction();
        try {
            Long i = i(f, transportContext);
            if (i == null) {
                bool = Boolean.FALSE;
            } else {
                Cursor rawQuery = f().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{i.toString()});
                try {
                    Boolean valueOf = Boolean.valueOf(rawQuery.moveToNext());
                    rawQuery.close();
                    bool = valueOf;
                } catch (Throwable th) {
                    rawQuery.close();
                    throw th;
                }
            }
            f.setTransactionSuccessful();
            f.endTransaction();
            return bool.booleanValue();
        } catch (Throwable th2) {
            f.endTransaction();
            throw th2;
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final Iterable y(final TransportContext transportContext) {
        return (Iterable) j(new Function() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.d
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
            public final Object apply(Object obj) {
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                SQLiteEventStore sQLiteEventStore = SQLiteEventStore.this;
                EventStoreConfig eventStoreConfig = sQLiteEventStore.h;
                int c2 = eventStoreConfig.c();
                TransportContext transportContext2 = transportContext;
                ArrayList k = sQLiteEventStore.k(sQLiteDatabase, transportContext2, c2);
                for (Priority priority : Priority.values()) {
                    if (priority != transportContext2.d()) {
                        int c3 = eventStoreConfig.c() - k.size();
                        if (c3 <= 0) {
                            break;
                        }
                        k.addAll(sQLiteEventStore.k(sQLiteDatabase, transportContext2.e(priority), c3));
                    }
                }
                HashMap hashMap = new HashMap();
                StringBuilder sb = new StringBuilder("event_id IN (");
                for (int i = 0; i < k.size(); i++) {
                    sb.append(((PersistedEvent) k.get(i)).b());
                    if (i < k.size() - 1) {
                        sb.append(',');
                    }
                }
                sb.append(')');
                SQLiteEventStore.m(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new f(1, hashMap));
                ListIterator listIterator = k.listIterator();
                while (listIterator.hasNext()) {
                    PersistedEvent persistedEvent = (PersistedEvent) listIterator.next();
                    if (hashMap.containsKey(Long.valueOf(persistedEvent.b()))) {
                        EventInternal.Builder j2 = persistedEvent.a().j();
                        for (SQLiteEventStore.Metadata metadata : (Set) hashMap.get(Long.valueOf(persistedEvent.b()))) {
                            j2.a(metadata.f2910a, metadata.b);
                        }
                        listIterator.set(new AutoValue_PersistedEvent(persistedEvent.b(), persistedEvent.c(), j2.b()));
                    }
                }
                return k;
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final void z0(Iterable iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        String str = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + l(iterable);
        SQLiteDatabase f = f();
        f.beginTransaction();
        try {
            f.compileStatement(str).execute();
            Cursor rawQuery = f.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", null);
            while (rawQuery.moveToNext()) {
                try {
                    e(rawQuery.getInt(0), LogEventDropped.Reason.MAX_RETRIES_REACHED, rawQuery.getString(1));
                } catch (Throwable th) {
                    rawQuery.close();
                    throw th;
                }
            }
            rawQuery.close();
            f.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
            f.setTransactionSuccessful();
        } finally {
            f.endTransaction();
        }
    }
}
