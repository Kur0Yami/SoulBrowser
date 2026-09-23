package com.google.android.gms.internal.mlkit_common;

import com.google.mlkit.common.sdkinternal.LazyInstanceMap;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;

/* loaded from: classes3.dex */
final class zzsr extends LazyInstanceMap {
    @Override // com.google.mlkit.common.sdkinternal.LazyInstanceMap
    public final /* bridge */ /* synthetic */ Object a(Object obj) {
        zzsb zzsbVar = (zzsb) obj;
        MlKitContext c2 = MlKitContext.c();
        return new zzsh(c2.b(), (SharedPrefManager) c2.a(SharedPrefManager.class), new zzsc(MlKitContext.c().b(), zzsbVar), zzsbVar.b());
    }
}
