package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.RemoteException;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzehr implements zzflu {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzehu f6516a;
    public final /* synthetic */ zzehw b;

    public /* synthetic */ zzehr(zzehu zzehuVar, zzehw zzehwVar) {
        this.f6516a = zzehuVar;
        this.b = zzehwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzflu
    public final Object zza(Object obj) {
        zzehu zzehuVar = this.f6516a;
        zzehuVar.getClass();
        ContentValues contentValues = new ContentValues();
        zzehw zzehwVar = this.b;
        contentValues.put("timestamp", Long.valueOf(zzehwVar.f6521a));
        contentValues.put("gws_query_id", zzehwVar.b);
        contentValues.put(ImagesContract.URL, zzehwVar.f6522c);
        contentValues.put("event_state", Integer.valueOf(zzehwVar.d - 1));
        ((SQLiteDatabase) obj).insert("offline_buffered_pings", null, contentValues);
        com.google.android.gms.ads.internal.zzt.zzc();
        Context context = zzehuVar.f6519c;
        com.google.android.gms.ads.internal.util.zzbo zzE = com.google.android.gms.ads.internal.util.zzs.zzE(context);
        if (zzE != null) {
            try {
                zzE.zzf(new ObjectWrapper(context));
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.zze.zzb("Failed to schedule offline ping sender.", e);
            }
        }
        return null;
    }
}
