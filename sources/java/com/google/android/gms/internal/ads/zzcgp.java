package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzcgp extends com.google.android.gms.ads.internal.util.zzb {
    public final zzcfk b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcgx f5134c;
    public final String d;
    public final String[] e;

    public zzcgp(zzcfk zzcfkVar, zzcgx zzcgxVar, String str, String[] strArr) {
        this.b = zzcfkVar;
        this.f5134c = zzcgxVar;
        this.d = str;
        this.e = strArr;
        com.google.android.gms.ads.internal.zzt.zzB().f5135c.add(this);
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        try {
            this.f5134c.h(this.d, this.e);
        } finally {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcgn(this));
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final ListenableFuture zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.A2)).booleanValue() && (this.f5134c instanceof zzchg)) {
            return ((zzgxi) zzcdo.f).v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzcgo
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    zzcgp zzcgpVar = zzcgp.this;
                    return Boolean.valueOf(zzcgpVar.f5134c.i(zzcgpVar.d, zzcgpVar.e, zzcgpVar));
                }
            });
        }
        return super.zzb();
    }
}
