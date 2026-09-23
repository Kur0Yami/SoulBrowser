package com.google.android.gms.internal.mlkit_common;

import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import java.util.Map;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzbd implements ObjectEncoder {
    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        Map.Entry entry = (Map.Entry) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.d(zzbe.g, entry.getKey());
        objectEncoderContext.d(zzbe.h, entry.getValue());
    }
}
