package com.google.android.gms.internal.mlkit_vision_common;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* loaded from: classes3.dex */
final class zzej implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzej f11002a = new Object();
    public static final FieldDescriptor b;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f11003c;
    public static final FieldDescriptor d;
    public static final FieldDescriptor e;
    public static final FieldDescriptor f;
    public static final FieldDescriptor g;
    public static final FieldDescriptor h;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_vision_common.zzej, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v13, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("durationMs");
        ?? obj = new Object();
        obj.f10920a = 1;
        b = a.p(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("imageSource");
        ?? obj2 = new Object();
        obj2.f10920a = 2;
        f11003c = a.p(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("imageFormat");
        ?? obj3 = new Object();
        obj3.f10920a = 3;
        d = a.p(obj3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("imageByteSize");
        ?? obj4 = new Object();
        obj4.f10920a = 4;
        e = a.p(obj4, builder4);
        FieldDescriptor.Builder builder5 = new FieldDescriptor.Builder("imageWidth");
        ?? obj5 = new Object();
        obj5.f10920a = 5;
        f = a.p(obj5, builder5);
        FieldDescriptor.Builder builder6 = new FieldDescriptor.Builder("imageHeight");
        ?? obj6 = new Object();
        obj6.f10920a = 6;
        g = a.p(obj6, builder6);
        FieldDescriptor.Builder builder7 = new FieldDescriptor.Builder("rotationDegrees");
        ?? obj7 = new Object();
        obj7.f10920a = 7;
        h = a.p(obj7, builder7);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        zziq zziqVar = (zziq) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.d(b, zziqVar.f11084a);
        objectEncoderContext.d(f11003c, zziqVar.b);
        objectEncoderContext.d(d, zziqVar.f11085c);
        objectEncoderContext.d(e, zziqVar.d);
        objectEncoderContext.d(f, zziqVar.e);
        objectEncoderContext.d(g, zziqVar.f);
        objectEncoderContext.d(h, zziqVar.g);
    }
}
