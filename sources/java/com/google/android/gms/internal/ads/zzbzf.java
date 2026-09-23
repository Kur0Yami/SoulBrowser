package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zzbzf implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f4986a;
    public final /* synthetic */ zzbzh b;

    public zzbzf(zzbzh zzbzhVar, Context context) {
        this.f4986a = context;
        this.b = zzbzhVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        zzbze a2;
        zzbzh zzbzhVar = this.b;
        WeakHashMap weakHashMap = zzbzhVar.f4988a;
        Context context = this.f4986a;
        zzbzg zzbzgVar = (zzbzg) weakHashMap.get(context);
        if (zzbzgVar != null) {
            if (zzbzgVar.f4987a + ((Long) zzbhz.d.c()).longValue() >= com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis()) {
                a2 = new zzbzd(context, zzbzgVar.b).a();
                zzbzhVar.f4988a.put(context, new zzbzg(zzbzhVar, a2));
                return a2;
            }
        }
        a2 = new zzbzd(context).a();
        zzbzhVar.f4988a.put(context, new zzbzg(zzbzhVar, a2));
        return a2;
    }
}
