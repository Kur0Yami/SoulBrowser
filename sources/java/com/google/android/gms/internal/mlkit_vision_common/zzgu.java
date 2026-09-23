package com.google.android.gms.internal.mlkit_vision_common;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* loaded from: classes3.dex */
final class zzgu implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgu f11067a = new Object();
    public static final FieldDescriptor b;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f11068c;
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

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_common.zzgu] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v13, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v15, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v17, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v19, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v21, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v23, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v25, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v27, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("appId");
        ?? obj = new Object();
        obj.f10920a = 1;
        b = a.p(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("appVersion");
        ?? obj2 = new Object();
        obj2.f10920a = 2;
        f11068c = a.p(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("firebaseProjectId");
        ?? obj3 = new Object();
        obj3.f10920a = 3;
        d = a.p(obj3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("mlSdkVersion");
        ?? obj4 = new Object();
        obj4.f10920a = 4;
        e = a.p(obj4, builder4);
        FieldDescriptor.Builder builder5 = new FieldDescriptor.Builder("tfliteSchemaVersion");
        ?? obj5 = new Object();
        obj5.f10920a = 5;
        f = a.p(obj5, builder5);
        FieldDescriptor.Builder builder6 = new FieldDescriptor.Builder("gcmSenderId");
        ?? obj6 = new Object();
        obj6.f10920a = 6;
        g = a.p(obj6, builder6);
        FieldDescriptor.Builder builder7 = new FieldDescriptor.Builder("apiKey");
        ?? obj7 = new Object();
        obj7.f10920a = 7;
        h = a.p(obj7, builder7);
        FieldDescriptor.Builder builder8 = new FieldDescriptor.Builder("languages");
        ?? obj8 = new Object();
        obj8.f10920a = 8;
        i = a.p(obj8, builder8);
        FieldDescriptor.Builder builder9 = new FieldDescriptor.Builder("mlSdkInstanceId");
        ?? obj9 = new Object();
        obj9.f10920a = 9;
        j = a.p(obj9, builder9);
        FieldDescriptor.Builder builder10 = new FieldDescriptor.Builder("isClearcutClient");
        ?? obj10 = new Object();
        obj10.f10920a = 10;
        k = a.p(obj10, builder10);
        FieldDescriptor.Builder builder11 = new FieldDescriptor.Builder("isStandaloneMlkit");
        ?? obj11 = new Object();
        obj11.f10920a = 11;
        l = a.p(obj11, builder11);
        FieldDescriptor.Builder builder12 = new FieldDescriptor.Builder("isJsonLogging");
        ?? obj12 = new Object();
        obj12.f10920a = 12;
        m = a.p(obj12, builder12);
        FieldDescriptor.Builder builder13 = new FieldDescriptor.Builder("buildLevel");
        ?? obj13 = new Object();
        obj13.f10920a = 13;
        n = a.p(obj13, builder13);
        FieldDescriptor.Builder builder14 = new FieldDescriptor.Builder("optionalModuleVersion");
        ?? obj14 = new Object();
        obj14.f10920a = 14;
        o = a.p(obj14, builder14);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        zzla zzlaVar = (zzla) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.d(b, zzlaVar.f11096a);
        objectEncoderContext.d(f11068c, zzlaVar.b);
        objectEncoderContext.d(d, null);
        objectEncoderContext.d(e, zzlaVar.f11097c);
        objectEncoderContext.d(f, zzlaVar.d);
        objectEncoderContext.d(g, null);
        objectEncoderContext.d(h, null);
        objectEncoderContext.d(i, zzlaVar.e);
        objectEncoderContext.d(j, zzlaVar.f);
        objectEncoderContext.d(k, zzlaVar.g);
        objectEncoderContext.d(l, zzlaVar.h);
        objectEncoderContext.d(m, zzlaVar.i);
        objectEncoderContext.d(n, zzlaVar.j);
        objectEncoderContext.d(o, zzlaVar.k);
    }
}
