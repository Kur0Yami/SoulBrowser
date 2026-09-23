package com.google.mlkit.vision.text.internal;

import android.graphics.Rect;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.mlkit_vision_text_common.zzbk;
import com.google.android.gms.internal.mlkit_vision_text_common.zzu;
import com.google.android.gms.internal.mlkit_vision_text_common.zzy;
import com.google.mlkit.vision.text.Text;
import java.util.List;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzj implements zzu {
    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzu
    public final Object zza(Object obj) {
        com.google.android.gms.internal.mlkit_vision_text_common.zzr zzrVar = (com.google.android.gms.internal.mlkit_vision_text_common.zzr) obj;
        com.google.android.gms.internal.mlkit_vision_text_common.zzf zzfVar = zzrVar.f;
        String str = zzrVar.j;
        List b = zza.b(zzfVar);
        String str2 = zzrVar.h;
        if (zzy.b(str2)) {
            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        String str3 = str2;
        Rect a2 = zza.a(b);
        if (zzy.b(str)) {
            str = "und";
        }
        float f = zzrVar.f.i;
        return new Text.Element(str3, a2, b, str, zzbk.q());
    }
}
