package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzjs implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzjs f11297a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzjs, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("inferenceCommonLogEvent");
        ?? obj = new Object();
        obj.f11145a = 1;
        FieldDescriptor.Builder n = a.n(obj, builder, "params");
        ?? obj2 = new Object();
        obj2.f11145a = 2;
        FieldDescriptor.Builder n2 = a.n(obj2, n, "imageInfo");
        ?? obj3 = new Object();
        obj3.f11145a = 3;
        a.y(obj3, n2);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        throw null;
    }
}
