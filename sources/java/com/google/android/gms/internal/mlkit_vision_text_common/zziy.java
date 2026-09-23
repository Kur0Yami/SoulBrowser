package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zziy implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zziy f11276a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_vision_text_common.zziy, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("inferenceCommonLogEvent");
        ?? obj = new Object();
        obj.f11145a = 1;
        FieldDescriptor.Builder n = a.n(obj, builder, "options");
        ?? obj2 = new Object();
        obj2.f11145a = 2;
        FieldDescriptor.Builder n2 = a.n(obj2, n, "detectedBarcodeFormats");
        ?? obj3 = new Object();
        obj3.f11145a = 3;
        FieldDescriptor.Builder n3 = a.n(obj3, n2, "detectedBarcodeValueTypes");
        ?? obj4 = new Object();
        obj4.f11145a = 4;
        FieldDescriptor.Builder n4 = a.n(obj4, n3, "imageInfo");
        ?? obj5 = new Object();
        obj5.f11145a = 5;
        a.y(obj5, n4);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        throw null;
    }
}
