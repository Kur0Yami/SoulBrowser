package com.google.android.gms.internal.mlkit_common;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* loaded from: classes3.dex */
final class zzgq implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgq f10769a = new Object();
    public static final FieldDescriptor b;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f10770c;
    public static final FieldDescriptor d;
    public static final FieldDescriptor e;
    public static final FieldDescriptor f;
    public static final FieldDescriptor g;
    public static final FieldDescriptor h;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_common.zzgq] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v13, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("options");
        ?? obj = new Object();
        obj.f10659a = 1;
        b = a.o(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("roughDownloadDurationMs");
        ?? obj2 = new Object();
        obj2.f10659a = 2;
        f10770c = a.o(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("errorCode");
        ?? obj3 = new Object();
        obj3.f10659a = 3;
        d = a.o(obj3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("exactDownloadDurationMs");
        ?? obj4 = new Object();
        obj4.f10659a = 4;
        e = a.o(obj4, builder4);
        FieldDescriptor.Builder builder5 = new FieldDescriptor.Builder("downloadStatus");
        ?? obj5 = new Object();
        obj5.f10659a = 5;
        f = a.o(obj5, builder5);
        FieldDescriptor.Builder builder6 = new FieldDescriptor.Builder("downloadFailureStatus");
        ?? obj6 = new Object();
        obj6.f10659a = 6;
        g = a.o(obj6, builder6);
        FieldDescriptor.Builder builder7 = new FieldDescriptor.Builder("mddDownloadErrorCodes");
        ?? obj7 = new Object();
        obj7.f10659a = 7;
        h = a.o(obj7, builder7);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        ((zznc) obj).getClass();
        objectEncoderContext.d(b, null);
        objectEncoderContext.d(f10770c, null);
        objectEncoderContext.d(d, null);
        objectEncoderContext.d(e, null);
        objectEncoderContext.d(f, null);
        objectEncoderContext.d(g, null);
        objectEncoderContext.d(h, null);
    }
}
