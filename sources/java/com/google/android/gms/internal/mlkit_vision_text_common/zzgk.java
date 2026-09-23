package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzgk implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgk f11205a = new Object();
    public static final FieldDescriptor b;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f11206c;
    public static final FieldDescriptor d;
    public static final FieldDescriptor e;
    public static final FieldDescriptor f;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzgk] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("errorCode");
        ?? obj = new Object();
        obj.f11145a = 1;
        b = androidx.work.impl.workers.a.q(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("hasResult");
        ?? obj2 = new Object();
        obj2.f11145a = 2;
        f11206c = androidx.work.impl.workers.a.q(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("isColdCall");
        ?? obj3 = new Object();
        obj3.f11145a = 3;
        d = androidx.work.impl.workers.a.q(obj3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("imageInfo");
        ?? obj4 = new Object();
        obj4.f11145a = 4;
        e = androidx.work.impl.workers.a.q(obj4, builder4);
        FieldDescriptor.Builder builder5 = new FieldDescriptor.Builder("recognizerOptions");
        ?? obj5 = new Object();
        obj5.f11145a = 5;
        f = androidx.work.impl.workers.a.q(obj5, builder5);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        zzes zzesVar = (zzes) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.d(b, zzesVar.f11161a);
        objectEncoderContext.d(f11206c, null);
        objectEncoderContext.d(d, zzesVar.b);
        objectEncoderContext.d(e, null);
        objectEncoderContext.d(f, zzesVar.f11162c);
    }
}
