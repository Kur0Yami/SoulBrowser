package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzht implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzht f11241a = new Object();
    public static final FieldDescriptor b;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f11242c;
    public static final FieldDescriptor d;
    public static final FieldDescriptor e;
    public static final FieldDescriptor f;
    public static final FieldDescriptor g;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzht, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("maxMs");
        ?? obj = new Object();
        obj.f11145a = 1;
        b = androidx.work.impl.workers.a.q(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("minMs");
        ?? obj2 = new Object();
        obj2.f11145a = 2;
        f11242c = androidx.work.impl.workers.a.q(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("avgMs");
        ?? obj3 = new Object();
        obj3.f11145a = 3;
        d = androidx.work.impl.workers.a.q(obj3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("firstQuartileMs");
        ?? obj4 = new Object();
        obj4.f11145a = 4;
        e = androidx.work.impl.workers.a.q(obj4, builder4);
        FieldDescriptor.Builder builder5 = new FieldDescriptor.Builder("medianMs");
        ?? obj5 = new Object();
        obj5.f11145a = 5;
        f = androidx.work.impl.workers.a.q(obj5, builder5);
        FieldDescriptor.Builder builder6 = new FieldDescriptor.Builder("thirdQuartileMs");
        ?? obj6 = new Object();
        obj6.f11145a = 6;
        g = androidx.work.impl.workers.a.q(obj6, builder6);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        zznw zznwVar = (zznw) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.d(b, zznwVar.f11380a);
        objectEncoderContext.d(f11242c, zznwVar.b);
        objectEncoderContext.d(d, zznwVar.f11381c);
        objectEncoderContext.d(e, zznwVar.d);
        objectEncoderContext.d(f, zznwVar.e);
        objectEncoderContext.d(g, zznwVar.f);
    }
}
