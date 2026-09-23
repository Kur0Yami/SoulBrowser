package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.ads.zzbkj;
import com.google.android.gms.internal.ads.zzbkk;
import com.google.android.gms.internal.ads.zzbkl;

/* loaded from: classes.dex */
final /* synthetic */ class zzax implements com.google.android.gms.ads.internal.util.client.zzq {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzax f2999a = new Object();

    @Override // com.google.android.gms.ads.internal.util.client.zzq
    public final Object zza(Object obj) {
        IBinder iBinder = (IBinder) obj;
        int i = zzbkk.f4751c;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
        if (queryLocalInterface instanceof zzbkl) {
            return (zzbkl) queryLocalInterface;
        }
        return new zzbkj(iBinder);
    }
}
