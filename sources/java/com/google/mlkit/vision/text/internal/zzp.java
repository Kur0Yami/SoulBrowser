package com.google.mlkit.vision.text.internal;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuc;
import com.google.android.gms.internal.mlkit_vision_text_common.zzun;
import com.google.mlkit.common.sdkinternal.LazyInstanceMap;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;

/* loaded from: classes3.dex */
public final class zzp extends LazyInstanceMap {
    public final MlKitContext b;

    public zzp(MlKitContext mlKitContext) {
        this.b = mlKitContext;
    }

    @Override // com.google.mlkit.common.sdkinternal.LazyInstanceMap
    public final /* bridge */ /* synthetic */ Object a(Object obj) {
        zzm zzdVar;
        TextRecognizerOptionsInterface textRecognizerOptionsInterface = (TextRecognizerOptionsInterface) obj;
        zzuc b = zzun.b(textRecognizerOptionsInterface.b());
        Context b2 = this.b.b();
        if (GoogleApiAvailabilityLight.getInstance().getApkVersion(b2) < 204700000 && !textRecognizerOptionsInterface.g()) {
            zzdVar = new zze(b2);
        } else {
            zzdVar = new zzd(b2, textRecognizerOptionsInterface, b);
        }
        return new TextRecognizerTaskWithResource(b, zzdVar, textRecognizerOptionsInterface);
    }
}
