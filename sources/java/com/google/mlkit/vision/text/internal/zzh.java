package com.google.mlkit.vision.text.internal;

import android.graphics.Rect;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.mlkit_vision_text_common.zzbu;
import com.google.android.gms.internal.mlkit_vision_text_common.zzu;
import com.google.android.gms.internal.mlkit_vision_text_common.zzy;
import com.google.mlkit.vision.text.Text;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzh implements zzu {
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzu] */
    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzu
    public final Object zza(Object obj) {
        com.google.android.gms.internal.mlkit_vision_text_common.zzl zzlVar = (com.google.android.gms.internal.mlkit_vision_text_common.zzl) obj;
        com.google.android.gms.internal.mlkit_vision_text_common.zzf zzfVar = zzlVar.f;
        String str = zzlVar.k;
        List b = zza.b(zzfVar);
        String str2 = zzlVar.i;
        if (zzy.b(str2)) {
            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        String str3 = str2;
        Rect a2 = zza.a(b);
        if (zzy.b(str)) {
            str = "und";
        }
        return new Text.Line(str3, a2, b, str, zzbu.a(Arrays.asList(zzlVar.f11331c), new Object()), zzlVar.j, zzlVar.f.i);
    }
}
