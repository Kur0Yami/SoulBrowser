package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbwt;
import com.google.android.gms.internal.ads.zzbwu;

/* loaded from: classes.dex */
final /* synthetic */ class zzah implements com.google.android.gms.ads.internal.util.client.zzq {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzah f2983a = new Object();

    @Override // com.google.android.gms.ads.internal.util.client.zzq
    public final Object zza(Object obj) {
        IBinder iBinder = (IBinder) obj;
        int i = zzbwt.f4956c;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
        if (queryLocalInterface instanceof zzbwu) {
            return (zzbwu) queryLocalInterface;
        }
        return new zzbcb(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
    }
}
