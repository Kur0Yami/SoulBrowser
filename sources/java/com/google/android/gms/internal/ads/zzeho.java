package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzeho implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SQLiteDatabase f6512c;
    public final /* synthetic */ String f;
    public final /* synthetic */ com.google.android.gms.ads.internal.util.client.zzu g;

    public /* synthetic */ zzeho(SQLiteDatabase sQLiteDatabase, String str, com.google.android.gms.ads.internal.util.client.zzu zzuVar) {
        this.f6512c = sQLiteDatabase;
        this.f = str;
        this.g = zzuVar;
    }

    @Override // java.lang.Runnable
    public final /* synthetic */ void run() {
        int i = zzehu.g;
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_state", (Integer) 1);
        String[] strArr = {this.f};
        SQLiteDatabase sQLiteDatabase = this.f6512c;
        sQLiteDatabase.update("offline_buffered_pings", contentValues, "gws_query_id = ?", strArr);
        zzehu.d(sQLiteDatabase, this.g);
    }
}
