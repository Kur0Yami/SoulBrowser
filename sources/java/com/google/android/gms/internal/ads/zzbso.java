package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzbso {

    /* renamed from: a, reason: collision with root package name */
    public final zzbrr f4881a;
    public ListenableFuture b;

    public zzbso(zzbrr zzbrrVar) {
        this.f4881a = zzbrrVar;
    }

    public final void a() {
        if (this.b == null) {
            final zzcdt zzcdtVar = new zzcdt();
            this.b = zzcdtVar;
            this.f4881a.b().a(new zzcdx() { // from class: com.google.android.gms.internal.ads.zzbsn
                @Override // com.google.android.gms.internal.ads.zzcdx
                public final /* synthetic */ void zza(Object obj) {
                    zzcdt.this.a((zzbrs) obj);
                }
            }, new zzcdv() { // from class: com.google.android.gms.internal.ads.zzbsk
                @Override // com.google.android.gms.internal.ads.zzcdv
                public final void zza() {
                    zzcdt.this.b(new Exception("Cannot get Javascript Engine"));
                }
            });
        }
    }
}
