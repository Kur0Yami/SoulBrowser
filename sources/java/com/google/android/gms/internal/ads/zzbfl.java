package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
final /* synthetic */ class zzbfl implements com.google.android.gms.ads.internal.util.client.zzq {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzbfl f4615a = new Object();

    @Override // com.google.android.gms.ads.internal.util.client.zzq
    public final Object zza(Object obj) {
        IBinder iBinder = (IBinder) obj;
        int i = zzbcf.f4539c;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.clearcut.IClearcut");
        if (queryLocalInterface instanceof zzbcg) {
            return (zzbcg) queryLocalInterface;
        }
        return new zzbcb(iBinder, "com.google.android.gms.ads.clearcut.IClearcut");
    }
}
