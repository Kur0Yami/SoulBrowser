package com.google.android.gms.internal.mlkit_vision_common;

import com.google.firebase.encoders.ObjectEncoder;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzal implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzal f10926a = new Object();

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        throw new RuntimeException("Couldn't find encoder for type ".concat(String.valueOf(obj.getClass().getCanonicalName())));
    }
}
