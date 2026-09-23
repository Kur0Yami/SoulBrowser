package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzbsj implements zzbrv {

    /* renamed from: a, reason: collision with root package name */
    public final zzbrx f4875a;
    public final zzbry b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbrr f4876c;
    public final String d;

    public zzbsj(zzbrr zzbrrVar, String str, zzbry zzbryVar, zzbrx zzbrxVar) {
        this.f4876c = zzbrrVar;
        this.d = str;
        this.b = zzbryVar;
        this.f4875a = zzbrxVar;
    }

    public final ListenableFuture a(Object obj) {
        zzcdt zzcdtVar = new zzcdt();
        zzbrl b = this.f4876c.b();
        com.google.android.gms.ads.internal.util.zze.zza("callJs > getEngine: Promise created");
        b.a(new zzbsg(this, b, obj, zzcdtVar), new zzbsh(b, this, zzcdtVar));
        return zzcdtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxu
    public final ListenableFuture zza(Object obj) {
        return a(obj);
    }
}
