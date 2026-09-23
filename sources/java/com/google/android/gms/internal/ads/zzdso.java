package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdso implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f6105a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbnn f6106c;
    public final /* synthetic */ zzdsp d;

    public /* synthetic */ zzdso(zzdsp zzdspVar, WeakReference weakReference, String str, zzbnn zzbnnVar) {
        this.d = zzdspVar;
        this.f6105a = weakReference;
        this.b = str;
        this.f6106c = zzbnnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        Object obj2 = this.f6105a.get();
        if (obj2 == null) {
            this.d.c(this.b, this);
        } else {
            this.f6106c.a(map, obj2);
        }
    }
}
