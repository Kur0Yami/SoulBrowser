package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzln implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzln f11345a = new Object();
    public static final FieldDescriptor b;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f11346c;
    public static final FieldDescriptor d;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzln] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("inferenceCommonLogEvent");
        ?? obj = new Object();
        obj.f11145a = 1;
        b = androidx.work.impl.workers.a.q(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("imageInfo");
        ?? obj2 = new Object();
        obj2.f11145a = 2;
        f11346c = androidx.work.impl.workers.a.q(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("recognizerOptions");
        ?? obj3 = new Object();
        obj3.f11145a = 3;
        d = androidx.work.impl.workers.a.q(obj3, builder3);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        zzrz zzrzVar = (zzrz) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.d(b, zzrzVar.f11402a);
        objectEncoderContext.d(f11346c, zzrzVar.b);
        objectEncoderContext.d(d, zzrzVar.f11403c);
    }
}
