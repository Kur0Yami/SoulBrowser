package com.google.mlkit.vision.text.internal;

import android.support.v4.media.a;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.mlkit_vision_text_common.zzbk;
import com.google.android.gms.internal.mlkit_vision_text_common.zzcp;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.mlkit.common.sdkinternal.ExecutorSelector;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import java.util.List;

@KeepForSdk
/* loaded from: classes3.dex */
public class TextRegistrar implements ComponentRegistrar {
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.firebase.components.ComponentFactory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.google.firebase.components.ComponentFactory, java.lang.Object] */
    @Override // com.google.firebase.components.ComponentRegistrar
    public final List a() {
        Component.Builder a2 = Component.a(zzp.class);
        a2.a(new Dependency(1, 0, MlKitContext.class));
        a2.d = new Object();
        Component b = a2.b();
        Component.Builder a3 = Component.a(zzo.class);
        a3.a(new Dependency(1, 0, zzp.class));
        a3.a(new Dependency(1, 0, ExecutorSelector.class));
        a3.d = new Object();
        Object[] objArr = {b, a3.b()};
        for (int i = 0; i < 2; i++) {
            zzcp zzcpVar = zzbk.f;
            if (objArr[i] == null) {
                throw new NullPointerException(a.e(i, "at index "));
            }
        }
        return zzbk.p(2, objArr);
    }
}
