package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcit implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List f5183a;
    public final /* synthetic */ String b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Uri f5184c;
    public final /* synthetic */ zzcjc d;

    public zzcit(zzcjc zzcjcVar, List list, String str, Uri uri) {
        this.f5183a = list;
        this.b = str;
        this.f5184c = uri;
        this.d = zzcjcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final /* synthetic */ void a(Object obj) {
        String str = this.b;
        this.d.N((Map) obj, this.f5183a, str);
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        String valueOf = String.valueOf(this.f5184c);
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to parse gmsg params for: ".concat(valueOf));
    }
}
