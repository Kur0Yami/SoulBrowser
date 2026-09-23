package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdsh implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Map f6094a;

    public zzdsh(zzdsp zzdspVar, Map map) {
        this.f6094a = map;
        Objects.requireNonNull(zzdspVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        ((zzcir) obj).S("sendMessageToNativeJs", this.f6094a);
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
    }
}
