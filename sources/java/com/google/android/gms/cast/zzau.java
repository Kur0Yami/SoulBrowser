package com.google.android.gms.cast;

import android.os.Parcel;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.cast.zzff;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzau implements RemoteCall {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzau f3645a = new Object();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        com.google.android.gms.cast.internal.zzy zzyVar = (com.google.android.gms.cast.internal.zzy) obj;
        Logger logger = zzbm.w;
        com.google.android.gms.cast.internal.zzah zzahVar = (com.google.android.gms.cast.internal.zzah) zzyVar.getService();
        ApiMetadata a2 = zzff.a(zzyVar.getContext());
        Parcel I1 = zzahVar.I1();
        com.google.android.gms.internal.cast.zzc.b(I1, a2);
        zzahVar.v2(1, I1);
        ((TaskCompletionSource) obj2).b(null);
    }
}
