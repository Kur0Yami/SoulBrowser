package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzexi implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7052a;
    public final Intent b;

    public zzexi(Context context, Intent intent) {
        this.f7052a = context;
        this.b = intent;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        com.google.android.gms.ads.internal.util.zze.zza("HsdpMigrationSignal.produce");
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.he)).booleanValue()) {
            boolean z = false;
            try {
                if (this.b.resolveActivity(this.f7052a.getPackageManager()) != null) {
                    com.google.android.gms.ads.internal.util.zze.zza("HSDP intent is supported");
                    z = true;
                }
            } catch (Exception e) {
                com.google.android.gms.ads.internal.zzt.zzh().f("HsdpMigrationSignal.isHsdpMigrationSupported", e);
            }
            return zzgym.a(new zzexj(Boolean.valueOf(z)));
        }
        return zzgym.a(new zzexj(null));
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 60;
    }
}
