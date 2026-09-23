package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzehn implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzflu f6511a;

    public zzehn(zzehu zzehuVar, zzflu zzfluVar) {
        this.f6511a = zzfluVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        try {
            this.f6511a.zza((SQLiteDatabase) obj);
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Error executing function on offline buffered ping database: ".concat(valueOf));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        String valueOf = String.valueOf(th.getMessage());
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to get offline buffered ping database: ".concat(valueOf));
    }
}
