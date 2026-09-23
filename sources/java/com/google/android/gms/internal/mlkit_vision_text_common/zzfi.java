package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzfi implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzfi f11176a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzfi] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("errorCode");
        ?? obj = new Object();
        obj.f11145a = 1;
        FieldDescriptor.Builder n = a.n(obj, builder, "imageInfo");
        ?? obj2 = new Object();
        obj2.f11145a = 2;
        FieldDescriptor.Builder n2 = a.n(obj2, n, "isColdCall");
        ?? obj3 = new Object();
        obj3.f11145a = 3;
        FieldDescriptor.Builder n3 = a.n(obj3, n2, "options");
        ?? obj4 = new Object();
        obj4.f11145a = 4;
        FieldDescriptor.Builder n4 = a.n(obj4, n3, "documentPresenceConfidence");
        ?? obj5 = new Object();
        obj5.f11145a = 5;
        FieldDescriptor.Builder n5 = a.n(obj5, n4, "documentCornerConfidence");
        ?? obj6 = new Object();
        obj6.f11145a = 6;
        FieldDescriptor.Builder n6 = a.n(obj6, n5, "documentRotationSuggestionDegrees");
        ?? obj7 = new Object();
        obj7.f11145a = 7;
        FieldDescriptor.Builder n7 = a.n(obj7, n6, "documentRotationSuggestionConfidence");
        ?? obj8 = new Object();
        obj8.f11145a = 8;
        a.y(obj8, n7);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        throw null;
    }
}
