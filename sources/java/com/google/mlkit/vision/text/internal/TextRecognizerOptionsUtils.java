package com.google.mlkit.vision.text.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import java.util.concurrent.atomic.AtomicReference;

@KeepForSdk
/* loaded from: classes3.dex */
public final class TextRecognizerOptionsUtils {
    public static boolean a(AtomicReference atomicReference, String str) {
        boolean z;
        if (atomicReference.get() != null) {
            return ((Boolean) atomicReference.get()).booleanValue();
        }
        if (DynamiteModule.a(MlKitContext.c().b(), str) > 0) {
            z = true;
        } else {
            z = false;
        }
        atomicReference.set(Boolean.valueOf(z));
        return z;
    }
}
