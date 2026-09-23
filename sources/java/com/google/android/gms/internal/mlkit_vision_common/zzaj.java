package com.google.android.gms.internal.mlkit_vision_common;

import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import java.util.Map;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzaj implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzaj f10923a = new Object();

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        Map.Entry entry = (Map.Entry) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.d(zzak.g, entry.getKey());
        objectEncoderContext.d(zzak.h, entry.getValue());
    }
}
