package com.google.mlkit.vision.text;

import com.google.android.gms.internal.mlkit_vision_text_common.zzbu;
import com.google.android.gms.internal.mlkit_vision_text_common.zzu;
import com.google.android.gms.internal.mlkit_vision_text_common.zzvb;
import com.google.mlkit.vision.text.Text;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzc implements zzu {
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzu] */
    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzu
    public final Object zza(Object obj) {
        zzvb zzvbVar = (zzvb) obj;
        Text.TextBase textBase = new Text.TextBase(zzvbVar.f11437c, zzvbVar.f, zzvbVar.g, zzvbVar.h);
        List list = zzvbVar.k;
        if (list == null) {
            list = new ArrayList();
        }
        zzbu.a(list, new Object());
        return textBase;
    }
}
