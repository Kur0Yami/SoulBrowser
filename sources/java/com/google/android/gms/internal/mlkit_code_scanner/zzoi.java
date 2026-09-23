package com.google.android.gms.internal.mlkit_code_scanner;

import com.google.mlkit.common.sdkinternal.LazyInstanceMap;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;

/* loaded from: classes3.dex */
final class zzoi extends LazyInstanceMap {
    @Override // com.google.mlkit.common.sdkinternal.LazyInstanceMap
    public final /* bridge */ /* synthetic */ Object a(Object obj) {
        zznt zzntVar = (zznt) obj;
        MlKitContext c2 = MlKitContext.c();
        return new zzny(c2.b(), (SharedPrefManager) c2.a(SharedPrefManager.class), new zznu(MlKitContext.c().b(), zzntVar), zzntVar.b());
    }
}
