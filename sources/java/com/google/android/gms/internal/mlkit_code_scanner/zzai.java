package com.google.android.gms.internal.mlkit_code_scanner;

import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import java.util.Map;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzai implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzai f10419a = new Object();

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        Map.Entry entry = (Map.Entry) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.d(zzaj.g, entry.getKey());
        objectEncoderContext.d(zzaj.h, entry.getValue());
    }
}
