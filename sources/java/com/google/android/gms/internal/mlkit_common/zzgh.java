package com.google.android.gms.internal.mlkit_common;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* loaded from: classes3.dex */
final class zzgh implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgh f10758a = new Object();
    public static final FieldDescriptor b;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f10759c;
    public static final FieldDescriptor d;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_common.zzgh, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("modelType");
        ?? obj = new Object();
        obj.f10659a = 1;
        b = a.o(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("isDownloaded");
        ?? obj2 = new Object();
        obj2.f10659a = 2;
        f10759c = a.o(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("modelName");
        ?? obj3 = new Object();
        obj3.f10659a = 3;
        d = a.o(obj3, builder3);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        ((zzmj) obj).getClass();
        objectEncoderContext.d(b, null);
        objectEncoderContext.d(f10759c, null);
        objectEncoderContext.d(d, null);
    }
}
