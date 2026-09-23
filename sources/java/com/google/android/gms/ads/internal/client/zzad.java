package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.ads.zzbcb;

/* loaded from: classes.dex */
final /* synthetic */ class zzad implements com.google.android.gms.ads.internal.util.client.zzq {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzad f2979a = new Object();

    @Override // com.google.android.gms.ads.internal.util.client.zzq
    public final Object zza(Object obj) {
        IBinder iBinder = (IBinder) obj;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTesterCreator");
        if (queryLocalInterface instanceof zzdx) {
            return (zzdx) queryLocalInterface;
        }
        return new zzbcb(iBinder, "com.google.android.gms.ads.internal.client.IOutOfContextTesterCreator");
    }
}
