package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbos;
import com.google.android.gms.internal.ads.zzbot;

/* loaded from: classes.dex */
final /* synthetic */ class zzaj implements com.google.android.gms.ads.internal.util.client.zzq {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzaj f2985a = new Object();

    @Override // com.google.android.gms.ads.internal.util.client.zzq
    public final Object zza(Object obj) {
        IBinder iBinder = (IBinder) obj;
        int i = zzbos.f4806c;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsManagerCreator");
        if (queryLocalInterface instanceof zzbot) {
            return (zzbot) queryLocalInterface;
        }
        return new zzbcb(iBinder, "com.google.android.gms.ads.internal.h5.client.IH5AdsManagerCreator");
    }
}
