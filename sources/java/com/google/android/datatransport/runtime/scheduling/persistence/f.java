package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements SQLiteEventStore.Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2920a;
    public final /* synthetic */ Object b;

    public /* synthetic */ f(int i, Object obj) {
        this.f2920a = i;
        this.b = obj;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
    public final Object apply(Object obj) {
        int i = this.f2920a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                SQLiteEventStore sQLiteEventStore = (SQLiteEventStore) obj2;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                Encoding encoding = SQLiteEventStore.j;
                sQLiteEventStore.getClass();
                sQLiteDatabase.compileStatement("DELETE FROM log_event_dropped").execute();
                sQLiteDatabase.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + sQLiteEventStore.f.a()).execute();
                return null;
            default:
                HashMap hashMap = (HashMap) obj2;
                Cursor cursor = (Cursor) obj;
                Encoding encoding2 = SQLiteEventStore.j;
                while (cursor.moveToNext()) {
                    long j = cursor.getLong(0);
                    Set set = (Set) hashMap.get(Long.valueOf(j));
                    if (set == null) {
                        set = new HashSet();
                        hashMap.put(Long.valueOf(j), set);
                    }
                    set.add(new SQLiteEventStore.Metadata(cursor.getString(1), cursor.getString(2)));
                }
                return null;
        }
    }
}
