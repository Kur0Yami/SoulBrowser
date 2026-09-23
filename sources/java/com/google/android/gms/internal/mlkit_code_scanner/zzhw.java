package com.google.android.gms.internal.mlkit_code_scanner;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* loaded from: classes3.dex */
final class zzhw implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhw f10587a = new Object();
    public static final FieldDescriptor b;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f10588c;
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

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_code_scanner.zzhw] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v13, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v15, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v17, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v19, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v21, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v23, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v25, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v27, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("appId");
        ?? obj = new Object();
        obj.f10416a = 1;
        b = a.n(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("appVersion");
        ?? obj2 = new Object();
        obj2.f10416a = 2;
        f10588c = a.n(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("firebaseProjectId");
        ?? obj3 = new Object();
        obj3.f10416a = 3;
        d = a.n(obj3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("mlSdkVersion");
        ?? obj4 = new Object();
        obj4.f10416a = 4;
        e = a.n(obj4, builder4);
        FieldDescriptor.Builder builder5 = new FieldDescriptor.Builder("tfliteSchemaVersion");
        ?? obj5 = new Object();
        obj5.f10416a = 5;
        f = a.n(obj5, builder5);
        FieldDescriptor.Builder builder6 = new FieldDescriptor.Builder("gcmSenderId");
        ?? obj6 = new Object();
        obj6.f10416a = 6;
        g = a.n(obj6, builder6);
        FieldDescriptor.Builder builder7 = new FieldDescriptor.Builder("apiKey");
        ?? obj7 = new Object();
        obj7.f10416a = 7;
        h = a.n(obj7, builder7);
        FieldDescriptor.Builder builder8 = new FieldDescriptor.Builder("languages");
        ?? obj8 = new Object();
        obj8.f10416a = 8;
        i = a.n(obj8, builder8);
        FieldDescriptor.Builder builder9 = new FieldDescriptor.Builder("mlSdkInstanceId");
        ?? obj9 = new Object();
        obj9.f10416a = 9;
        j = a.n(obj9, builder9);
        FieldDescriptor.Builder builder10 = new FieldDescriptor.Builder("isClearcutClient");
        ?? obj10 = new Object();
        obj10.f10416a = 10;
        k = a.n(obj10, builder10);
        FieldDescriptor.Builder builder11 = new FieldDescriptor.Builder("isStandaloneMlkit");
        ?? obj11 = new Object();
        obj11.f10416a = 11;
        l = a.n(obj11, builder11);
        FieldDescriptor.Builder builder12 = new FieldDescriptor.Builder("isJsonLogging");
        ?? obj12 = new Object();
        obj12.f10416a = 12;
        m = a.n(obj12, builder12);
        FieldDescriptor.Builder builder13 = new FieldDescriptor.Builder("buildLevel");
        ?? obj13 = new Object();
        obj13.f10416a = 13;
        n = a.n(obj13, builder13);
        FieldDescriptor.Builder builder14 = new FieldDescriptor.Builder("optionalModuleVersion");
        ?? obj14 = new Object();
        obj14.f10416a = 14;
        o = a.n(obj14, builder14);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        zzms zzmsVar = (zzms) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.d(b, zzmsVar.f10614a);
        objectEncoderContext.d(f10588c, zzmsVar.b);
        objectEncoderContext.d(d, null);
        objectEncoderContext.d(e, zzmsVar.f10615c);
        objectEncoderContext.d(f, zzmsVar.d);
        objectEncoderContext.d(g, null);
        objectEncoderContext.d(h, null);
        objectEncoderContext.d(i, zzmsVar.e);
        objectEncoderContext.d(j, zzmsVar.f);
        objectEncoderContext.d(k, zzmsVar.g);
        objectEncoderContext.d(l, zzmsVar.h);
        objectEncoderContext.d(m, zzmsVar.i);
        objectEncoderContext.d(n, zzmsVar.j);
        objectEncoderContext.d(o, zzmsVar.k);
    }
}
