package com.google.android.gms.internal.mlkit_common;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* loaded from: classes3.dex */
final class zzgr implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgr f10771a = new Object();
    public static final FieldDescriptor b;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f10772c;
    public static final FieldDescriptor d;
    public static final FieldDescriptor e;
    public static final FieldDescriptor f;
    public static final FieldDescriptor g;
    public static final FieldDescriptor h;
    public static final FieldDescriptor i;
    public static final FieldDescriptor j;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_common.zzgr] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v13, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v15, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v17, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("name");
        ?? obj = new Object();
        obj.f10659a = 1;
        b = a.o(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("version");
        ?? obj2 = new Object();
        obj2.f10659a = 2;
        f10772c = a.o(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("source");
        ?? obj3 = new Object();
        obj3.f10659a = 3;
        d = a.o(obj3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("uri");
        ?? obj4 = new Object();
        obj4.f10659a = 4;
        e = a.o(obj4, builder4);
        FieldDescriptor.Builder builder5 = new FieldDescriptor.Builder("hash");
        ?? obj5 = new Object();
        obj5.f10659a = 5;
        f = a.o(obj5, builder5);
        FieldDescriptor.Builder builder6 = new FieldDescriptor.Builder("modelType");
        ?? obj6 = new Object();
        obj6.f10659a = 6;
        g = a.o(obj6, builder6);
        FieldDescriptor.Builder builder7 = new FieldDescriptor.Builder("size");
        ?? obj7 = new Object();
        obj7.f10659a = 7;
        h = a.o(obj7, builder7);
        FieldDescriptor.Builder builder8 = new FieldDescriptor.Builder("hasLabelMap");
        ?? obj8 = new Object();
        obj8.f10659a = 8;
        i = a.o(obj8, builder8);
        FieldDescriptor.Builder builder9 = new FieldDescriptor.Builder("isManifestModel");
        ?? obj9 = new Object();
        obj9.f10659a = 9;
        j = a.o(obj9, builder9);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        ((zznh) obj).getClass();
        objectEncoderContext.d(b, null);
        objectEncoderContext.d(f10772c, null);
        objectEncoderContext.d(d, null);
        objectEncoderContext.d(e, null);
        objectEncoderContext.d(f, null);
        objectEncoderContext.d(g, null);
        objectEncoderContext.d(h, null);
        objectEncoderContext.d(i, null);
        objectEncoderContext.d(j, null);
    }
}
