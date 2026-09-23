package com.google.android.gms.fido.u2f;

import android.os.Parcel;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.fido.zzw;
import com.google.android.gms.internal.fido.zzy;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final /* synthetic */ class zza implements RemoteCall {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        zzc zzcVar = new zzc((TaskCompletionSource) obj2);
        zzw zzwVar = (zzw) ((zzy) obj).getService();
        Parcel I1 = zzwVar.I1();
        ClassLoader classLoader = com.google.android.gms.internal.fido.zzc.f10284a;
        I1.writeStrongBinder(zzcVar);
        I1.writeInt(0);
        zzwVar.f2(1, I1);
    }
}
