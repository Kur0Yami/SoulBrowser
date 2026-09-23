package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.ads.zzbkd;
import com.google.android.gms.internal.ads.zzbke;
import com.google.android.gms.internal.ads.zzbkf;

/* loaded from: classes.dex */
final /* synthetic */ class zzav implements com.google.android.gms.ads.internal.util.client.zzq {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzav f2997a = new Object();

    @Override // com.google.android.gms.ads.internal.util.client.zzq
    public final Object zza(Object obj) {
        IBinder iBinder = (IBinder) obj;
        int i = zzbke.f4750c;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
        if (queryLocalInterface instanceof zzbkf) {
            return (zzbkf) queryLocalInterface;
        }
        return new zzbkd(iBinder);
    }
}
