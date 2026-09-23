package com.google.android.gms.internal.mlkit_common;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* loaded from: classes3.dex */
final class zzkh implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzkh f10868a = new Object();
    public static final FieldDescriptor b;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f10869c;
    public static final FieldDescriptor d;
    public static final FieldDescriptor e;
    public static final FieldDescriptor f;
    public static final FieldDescriptor g;
    public static final FieldDescriptor h;
    public static final FieldDescriptor i;
    public static final FieldDescriptor j;
    public static final FieldDescriptor k;
    public static final FieldDescriptor l;
    public static final FieldDescriptor m;
    public static final FieldDescriptor n;
    public static final FieldDescriptor o;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_common.zzkh] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v13, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v15, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v17, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v19, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v21, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v23, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v25, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v27, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("appId");
        ?? obj = new Object();
        obj.f10659a = 1;
        b = a.o(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("appVersion");
        ?? obj2 = new Object();
        obj2.f10659a = 2;
        f10869c = a.o(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("firebaseProjectId");
        ?? obj3 = new Object();
        obj3.f10659a = 3;
        d = a.o(obj3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("mlSdkVersion");
        ?? obj4 = new Object();
        obj4.f10659a = 4;
        e = a.o(obj4, builder4);
        FieldDescriptor.Builder builder5 = new FieldDescriptor.Builder("tfliteSchemaVersion");
        ?? obj5 = new Object();
        obj5.f10659a = 5;
        f = a.o(obj5, builder5);
        FieldDescriptor.Builder builder6 = new FieldDescriptor.Builder("gcmSenderId");
        ?? obj6 = new Object();
        obj6.f10659a = 6;
        g = a.o(obj6, builder6);
        FieldDescriptor.Builder builder7 = new FieldDescriptor.Builder("apiKey");
        ?? obj7 = new Object();
        obj7.f10659a = 7;
        h = a.o(obj7, builder7);
        FieldDescriptor.Builder builder8 = new FieldDescriptor.Builder("languages");
        ?? obj8 = new Object();
        obj8.f10659a = 8;
        i = a.o(obj8, builder8);
        FieldDescriptor.Builder builder9 = new FieldDescriptor.Builder("mlSdkInstanceId");
        ?? obj9 = new Object();
        obj9.f10659a = 9;
        j = a.o(obj9, builder9);
        FieldDescriptor.Builder builder10 = new FieldDescriptor.Builder("isClearcutClient");
        ?? obj10 = new Object();
        obj10.f10659a = 10;
        k = a.o(obj10, builder10);
        FieldDescriptor.Builder builder11 = new FieldDescriptor.Builder("isStandaloneMlkit");
        ?? obj11 = new Object();
        obj11.f10659a = 11;
        l = a.o(obj11, builder11);
        FieldDescriptor.Builder builder12 = new FieldDescriptor.Builder("isJsonLogging");
        ?? obj12 = new Object();
        obj12.f10659a = 12;
        m = a.o(obj12, builder12);
        FieldDescriptor.Builder builder13 = new FieldDescriptor.Builder("buildLevel");
        ?? obj13 = new Object();
        obj13.f10659a = 13;
        n = a.o(obj13, builder13);
        FieldDescriptor.Builder builder14 = new FieldDescriptor.Builder("optionalModuleVersion");
        ?? obj14 = new Object();
        obj14.f10659a = 14;
        o = a.o(obj14, builder14);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        zzqv zzqvVar = (zzqv) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.d(b, zzqvVar.f10895a);
        objectEncoderContext.d(f10869c, zzqvVar.b);
        objectEncoderContext.d(d, null);
        objectEncoderContext.d(e, zzqvVar.f10896c);
        objectEncoderContext.d(f, zzqvVar.d);
        objectEncoderContext.d(g, null);
        objectEncoderContext.d(h, null);
        objectEncoderContext.d(i, zzqvVar.e);
        objectEncoderContext.d(j, zzqvVar.f);
        objectEncoderContext.d(k, zzqvVar.g);
        objectEncoderContext.d(l, zzqvVar.h);
        objectEncoderContext.d(m, zzqvVar.i);
        objectEncoderContext.d(n, zzqvVar.j);
        objectEncoderContext.d(o, zzqvVar.k);
    }
}
