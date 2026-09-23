package com.google.android.gms.fido.fido2;

import android.os.Parcel;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final /* synthetic */ class zze implements RemoteCall {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        zzi zziVar = new zzi((TaskCompletionSource) obj2);
        com.google.android.gms.internal.fido.zzs zzsVar = (com.google.android.gms.internal.fido.zzs) ((com.google.android.gms.internal.fido.zzp) obj).getService();
        Parcel I1 = zzsVar.I1();
        ClassLoader classLoader = com.google.android.gms.internal.fido.zzc.f10284a;
        I1.writeStrongBinder(zziVar);
        I1.writeInt(0);
        zzsVar.f2(2, I1);
    }
}
