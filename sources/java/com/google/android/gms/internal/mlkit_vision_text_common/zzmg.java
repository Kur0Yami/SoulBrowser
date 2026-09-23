package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzmg implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzmg f11366a = new Object();
    public static final FieldDescriptor b;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f11367c;
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

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzmg, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v15, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v17, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v19, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v21, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v23, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v25, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v27, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("appId");
        ?? obj = new Object();
        obj.f11145a = 1;
        b = androidx.work.impl.workers.a.q(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("appVersion");
        ?? obj2 = new Object();
        obj2.f11145a = 2;
        f11367c = androidx.work.impl.workers.a.q(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("firebaseProjectId");
        ?? obj3 = new Object();
        obj3.f11145a = 3;
        d = androidx.work.impl.workers.a.q(obj3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("mlSdkVersion");
        ?? obj4 = new Object();
        obj4.f11145a = 4;
        e = androidx.work.impl.workers.a.q(obj4, builder4);
        FieldDescriptor.Builder builder5 = new FieldDescriptor.Builder("tfliteSchemaVersion");
        ?? obj5 = new Object();
        obj5.f11145a = 5;
        f = androidx.work.impl.workers.a.q(obj5, builder5);
        FieldDescriptor.Builder builder6 = new FieldDescriptor.Builder("gcmSenderId");
        ?? obj6 = new Object();
        obj6.f11145a = 6;
        g = androidx.work.impl.workers.a.q(obj6, builder6);
        FieldDescriptor.Builder builder7 = new FieldDescriptor.Builder("apiKey");
        ?? obj7 = new Object();
        obj7.f11145a = 7;
        h = androidx.work.impl.workers.a.q(obj7, builder7);
        FieldDescriptor.Builder builder8 = new FieldDescriptor.Builder("languages");
        ?? obj8 = new Object();
        obj8.f11145a = 8;
        i = androidx.work.impl.workers.a.q(obj8, builder8);
        FieldDescriptor.Builder builder9 = new FieldDescriptor.Builder("mlSdkInstanceId");
        ?? obj9 = new Object();
        obj9.f11145a = 9;
        j = androidx.work.impl.workers.a.q(obj9, builder9);
        FieldDescriptor.Builder builder10 = new FieldDescriptor.Builder("isClearcutClient");
        ?? obj10 = new Object();
        obj10.f11145a = 10;
        k = androidx.work.impl.workers.a.q(obj10, builder10);
        FieldDescriptor.Builder builder11 = new FieldDescriptor.Builder("isStandaloneMlkit");
        ?? obj11 = new Object();
        obj11.f11145a = 11;
        l = androidx.work.impl.workers.a.q(obj11, builder11);
        FieldDescriptor.Builder builder12 = new FieldDescriptor.Builder("isJsonLogging");
        ?? obj12 = new Object();
        obj12.f11145a = 12;
        m = androidx.work.impl.workers.a.q(obj12, builder12);
        FieldDescriptor.Builder builder13 = new FieldDescriptor.Builder("buildLevel");
        ?? obj13 = new Object();
        obj13.f11145a = 13;
        n = androidx.work.impl.workers.a.q(obj13, builder13);
        FieldDescriptor.Builder builder14 = new FieldDescriptor.Builder("optionalModuleVersion");
        ?? obj14 = new Object();
        obj14.f11145a = 14;
        o = androidx.work.impl.workers.a.q(obj14, builder14);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        zzst zzstVar = (zzst) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.d(b, zzstVar.f11409a);
        objectEncoderContext.d(f11367c, zzstVar.b);
        objectEncoderContext.d(d, null);
        objectEncoderContext.d(e, zzstVar.f11410c);
        objectEncoderContext.d(f, zzstVar.d);
        objectEncoderContext.d(g, null);
        objectEncoderContext.d(h, null);
        objectEncoderContext.d(i, zzstVar.e);
        objectEncoderContext.d(j, zzstVar.f);
        objectEncoderContext.d(k, zzstVar.g);
        objectEncoderContext.d(l, zzstVar.h);
        objectEncoderContext.d(m, zzstVar.i);
        objectEncoderContext.d(n, zzstVar.j);
        objectEncoderContext.d(o, zzstVar.k);
    }
}
