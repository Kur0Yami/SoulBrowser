package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements SQLiteEventStore.Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2917a;

    public /* synthetic */ c(int i) {
        this.f2917a = i;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
    public final Object apply(Object obj) {
        byte[] decode;
        int i = 1;
        switch (this.f2917a) {
            case 0:
                Encoding encoding = SQLiteEventStore.j;
                return (List) SQLiteEventStore.m(((SQLiteDatabase) obj).rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new c(i));
            default:
                Cursor cursor = (Cursor) obj;
                Encoding encoding2 = SQLiteEventStore.j;
                ArrayList arrayList = new ArrayList();
                while (cursor.moveToNext()) {
                    TransportContext.Builder a2 = TransportContext.a();
                    a2.b(cursor.getString(1));
                    a2.d(PriorityMapping.b(cursor.getInt(2)));
                    String string = cursor.getString(3);
                    if (string == null) {
                        decode = null;
                    } else {
                        decode = Base64.decode(string, 0);
                    }
                    a2.c(decode);
                    arrayList.add(a2.a());
                }
                return arrayList;
        }
    }
}
