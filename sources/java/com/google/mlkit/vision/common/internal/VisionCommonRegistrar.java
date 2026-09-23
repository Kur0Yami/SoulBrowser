package com.google.mlkit.vision.common.internal;

import android.support.v4.media.a;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.mlkit_vision_common.zzac;
import com.google.android.gms.internal.mlkit_vision_common.zzp;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.mlkit.vision.common.internal.MultiFlavorDetectorCreator;
import java.util.List;

@KeepForSdk
/* loaded from: classes3.dex */
public class VisionCommonRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public final List a() {
        Component.Builder a2 = Component.a(MultiFlavorDetectorCreator.class);
        a2.a(new Dependency(2, 0, MultiFlavorDetectorCreator.Registration.class));
        a2.d = zzf.f12817a;
        Object[] objArr = {a2.b()};
        for (int i = 0; i < 1; i++) {
            zzac zzacVar = zzp.f;
            if (objArr[i] == null) {
                throw new NullPointerException(a.e(i, "at index "));
            }
        }
        return zzp.p(1, objArr);
    }
}
