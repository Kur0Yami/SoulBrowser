package com.google.android.gms.internal.ads;

import com.google.android.gms.appset.AppSetIdInfo;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
final /* synthetic */ class zzeth implements zzgxu {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzeth f6914a = new Object();

    @Override // com.google.android.gms.internal.ads.zzgxu
    public final ListenableFuture zza(Object obj) {
        AppSetIdInfo appSetIdInfo = (AppSetIdInfo) obj;
        if (appSetIdInfo == null) {
            return zzgym.a(new zzetl(null, -1));
        }
        return zzgym.a(new zzetl(appSetIdInfo.f3330a, appSetIdInfo.b));
    }
}
