package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
final class zzedn implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f6400a;

    public zzedn(Context context) {
        this.f6400a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        if (((Boolean) zzbic.j.c()).booleanValue()) {
            zzbfv.a(this.f6400a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        if (((Boolean) zzbic.h.c()).booleanValue() && (th instanceof com.google.android.gms.ads.internal.util.zzaz)) {
            zzbfv.a(this.f6400a);
        }
    }
}
