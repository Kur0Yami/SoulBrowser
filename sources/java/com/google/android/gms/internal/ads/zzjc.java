package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzjc {

    /* renamed from: a, reason: collision with root package name */
    public final Context f9035a;
    public final zzfc b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgqs f9036c;
    public final zzgqs d;
    public zzgqs e;
    public zzgqs f;
    public final zzgqs g;
    public final zzgpr h;
    public final Looper i;
    public final int j;
    public final zzd k;
    public final int l;
    public final boolean m;
    public final zzmq n;
    public final zzmp o;
    public final long p;
    public final long q;
    public final int r;
    public final int s;
    public final int t;
    public final int u;
    public final boolean v;
    public boolean w;
    public final String x;
    public final zzim y;

    public zzjc(final Context context, zzmn zzmnVar) {
        zzjb zzjbVar = new zzjb(zzmnVar);
        zziw zziwVar = new zziw(context);
        zzgqs zzgqsVar = new zzgqs() { // from class: com.google.android.gms.internal.ads.zzix
            @Override // com.google.android.gms.internal.ads.zzgqs
            public final /* synthetic */ Object zza() {
                return new zzzu(context);
            }
        };
        zziy zziyVar = new zziy(context);
        context.getClass();
        this.f9035a = context;
        this.f9036c = zzjbVar;
        this.d = zziwVar;
        this.e = zzgqsVar;
        this.f = zziv.f9028c;
        this.g = zziyVar;
        this.h = zziu.f9027a;
        String str = zzfj.f7405a;
        Looper myLooper = Looper.myLooper();
        this.i = myLooper == null ? Looper.getMainLooper() : myLooper;
        this.k = zzd.b;
        this.l = 1;
        this.m = true;
        this.n = zzmq.d;
        this.o = zzmp.b;
        this.y = new zzim(zzfj.s(20L), zzfj.s(500L));
        this.b = zzdn.f5927a;
        this.p = 500L;
        this.q = 2000L;
        this.r = 600000;
        this.s = Integer.MAX_VALUE;
        this.t = Integer.MAX_VALUE;
        this.u = 600000;
        this.v = true;
        this.x = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.j = -1000;
        if (Build.VERSION.SDK_INT >= 35) {
            int i = zzis.f9026a;
        }
    }
}
