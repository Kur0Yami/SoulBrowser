package com.google.android.gms.internal.mlkit_common;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* loaded from: classes3.dex */
final class zzgs implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgs f10773a = new Object();
    public static final FieldDescriptor b;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f10774c;
    public static final FieldDescriptor d;
    public static final FieldDescriptor e;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_common.zzgs] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("modelInfo");
        ?? obj = new Object();
        obj.f10659a = 1;
        b = a.o(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("initialDownloadConditions");
        ?? obj2 = new Object();
        obj2.f10659a = 2;
        f10774c = a.o(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("updateDownloadConditions");
        ?? obj3 = new Object();
        obj3.f10659a = 3;
        d = a.o(obj3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("isModelUpdateEnabled");
        ?? obj4 = new Object();
        obj4.f10659a = 4;
        e = a.o(obj4, builder4);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        ((zznl) obj).getClass();
        objectEncoderContext.d(b, null);
        objectEncoderContext.d(f10774c, null);
        objectEncoderContext.d(d, null);
        objectEncoderContext.d(e, null);
    }
}
