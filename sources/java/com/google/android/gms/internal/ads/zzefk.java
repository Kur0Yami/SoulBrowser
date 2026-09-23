package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzefk implements zzgxu {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfaz f6446a;
    public final /* synthetic */ zzbza b;

    public /* synthetic */ zzefk(zzfaz zzfazVar, zzbza zzbzaVar) {
        this.f6446a = zzfazVar;
        this.b = zzbzaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxu
    public final /* synthetic */ ListenableFuture zza(Object obj) {
        return this.f6446a.a().a(com.google.android.gms.ads.internal.client.zzbb.zza().zzm((Bundle) obj), this.b.q, false);
    }
}
