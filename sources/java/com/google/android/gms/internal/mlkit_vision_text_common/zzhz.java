package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzhz implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhz f11248a = new Object();
    public static final FieldDescriptor b;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f11249c;
    public static final FieldDescriptor d;
    public static final FieldDescriptor e;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzhz] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("imageFormat");
        ?? obj = new Object();
        obj.f11145a = 1;
        b = androidx.work.impl.workers.a.q(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("originalImageSize");
        ?? obj2 = new Object();
        obj2.f11145a = 2;
        f11249c = androidx.work.impl.workers.a.q(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("compressedImageSize");
        ?? obj3 = new Object();
        obj3.f11145a = 3;
        d = androidx.work.impl.workers.a.q(obj3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("isOdmlImage");
        ?? obj4 = new Object();
        obj4.f11145a = 4;
        e = androidx.work.impl.workers.a.q(obj4, builder4);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        zzod zzodVar = (zzod) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.d(b, zzodVar.f11384a);
        objectEncoderContext.d(f11249c, zzodVar.b);
        objectEncoderContext.d(d, null);
        objectEncoderContext.d(e, null);
    }
}
