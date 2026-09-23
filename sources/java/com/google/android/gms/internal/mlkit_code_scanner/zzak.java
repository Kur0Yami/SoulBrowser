package com.google.android.gms.internal.mlkit_code_scanner;

import com.google.firebase.encoders.ObjectEncoder;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzak implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzak f10422a = new Object();

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        throw new RuntimeException("Couldn't find encoder for type ".concat(String.valueOf(obj.getClass().getCanonicalName())));
    }
}
