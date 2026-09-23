package com.google.android.gms.cast;

import android.os.Parcel;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.cast.zzeu;
import com.google.android.gms.internal.cast.zzez;
import com.google.android.gms.internal.cast.zzff;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final /* synthetic */ class zzz implements RemoteCall {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        zzeu zzeuVar = (zzeu) obj;
        zzx zzxVar = new zzx(null, (TaskCompletionSource) obj2);
        zzez zzezVar = (zzez) zzeuVar.getService();
        ApiMetadata a2 = zzff.a(zzeuVar.getContext());
        Parcel I1 = zzezVar.I1();
        com.google.android.gms.internal.cast.zzc.c(I1, zzxVar);
        com.google.android.gms.internal.cast.zzc.b(I1, a2);
        zzezVar.v2(6, I1);
    }
}
