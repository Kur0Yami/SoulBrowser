package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzjw implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzjw f11301a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzjw, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("durationMs");
        ?? obj = new Object();
        obj.f11145a = 1;
        FieldDescriptor.Builder n = a.n(obj, builder, "errorCode");
        ?? obj2 = new Object();
        obj2.f11145a = 2;
        FieldDescriptor.Builder n2 = a.n(obj2, n, "options");
        ?? obj3 = new Object();
        obj3.f11145a = 3;
        FieldDescriptor.Builder n3 = a.n(obj3, n2, "pageCount");
        ?? obj4 = new Object();
        obj4.f11145a = 4;
        a.y(obj4, n3);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        throw null;
    }
}
