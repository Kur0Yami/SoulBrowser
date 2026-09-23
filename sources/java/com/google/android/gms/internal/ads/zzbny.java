package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
final class zzbny implements com.google.android.gms.ads.internal.overlay.zzaa {

    /* renamed from: a, reason: collision with root package name */
    public boolean f4794a;
    public final /* synthetic */ boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.ads.internal.client.zza f4795c;
    public final /* synthetic */ HashMap d;
    public final /* synthetic */ Map e;

    public zzbny(zzboa zzboaVar, boolean z, com.google.android.gms.ads.internal.client.zza zzaVar, HashMap hashMap, Map map) {
        this.b = z;
        this.f4795c = zzaVar;
        this.d = hashMap;
        this.e = map;
        Objects.requireNonNull(zzboaVar);
        this.f4794a = false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzaa
    public final void zza(boolean z) {
        if (!this.f4794a) {
            com.google.android.gms.ads.internal.client.zza zzaVar = this.f4795c;
            if (z && this.b) {
                ((zzdir) zzaVar).P();
            }
            this.f4794a = true;
            String str = (String) this.e.get("event_id");
            Boolean valueOf = Boolean.valueOf(z);
            HashMap hashMap = this.d;
            hashMap.put(str, valueOf);
            ((zzbqj) zzaVar).S("openIntentAsync", hashMap);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzaa
    public final void zzb(int i) {
    }
}
