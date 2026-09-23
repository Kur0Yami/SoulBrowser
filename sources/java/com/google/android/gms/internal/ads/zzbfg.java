package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public final class zzbfg {
    public static final Future a(Context context, zzbev zzbevVar) {
        zzbff zzbffVar = new zzbff(context);
        zzbez zzbezVar = new zzbez(zzbffVar);
        zzbfd zzbfdVar = new zzbfd(zzbffVar, zzbevVar, zzbezVar);
        zzbfe zzbfeVar = new zzbfe(zzbffVar, zzbezVar);
        synchronized (zzbffVar.f4609c) {
            zzbeu zzbeuVar = new zzbeu(context, com.google.android.gms.ads.internal.zzt.zzs().zza(), zzbfdVar, zzbfeVar);
            zzbffVar.f4608a = zzbeuVar;
            zzbeuVar.checkAvailabilityAndConnect();
        }
        return zzbezVar;
    }
}
