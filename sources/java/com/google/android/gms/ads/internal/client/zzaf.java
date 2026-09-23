package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzccl;
import com.google.android.gms.internal.ads.zzccm;

/* loaded from: classes.dex */
final /* synthetic */ class zzaf implements com.google.android.gms.ads.internal.util.client.zzq {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzaf f2981a = new Object();

    @Override // com.google.android.gms.ads.internal.util.client.zzq
    public final Object zza(Object obj) {
        IBinder iBinder = (IBinder) obj;
        int i = zzccl.f5038c;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
        if (queryLocalInterface instanceof zzccm) {
            return (zzccm) queryLocalInterface;
        }
        return new zzbcb(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
    }
}
