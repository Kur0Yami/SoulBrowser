package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzid implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzid f11253a = new Object();
    public static final FieldDescriptor b;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f11254c;
    public static final FieldDescriptor d;
    public static final FieldDescriptor e;
    public static final FieldDescriptor f;
    public static final FieldDescriptor g;
    public static final FieldDescriptor h;
    public static final FieldDescriptor i;
    public static final FieldDescriptor j;
    public static final FieldDescriptor k;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzid, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v15, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v17, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v19, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("durationMs");
        ?? obj = new Object();
        obj.f11145a = 1;
        b = androidx.work.impl.workers.a.q(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("errorCode");
        ?? obj2 = new Object();
        obj2.f11145a = 2;
        f11254c = androidx.work.impl.workers.a.q(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("isColdCall");
        ?? obj3 = new Object();
        obj3.f11145a = 3;
        d = androidx.work.impl.workers.a.q(obj3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("autoManageModelOnBackground");
        ?? obj4 = new Object();
        obj4.f11145a = 4;
        e = androidx.work.impl.workers.a.q(obj4, builder4);
        FieldDescriptor.Builder builder5 = new FieldDescriptor.Builder("autoManageModelOnLowMemory");
        ?? obj5 = new Object();
        obj5.f11145a = 5;
        f = androidx.work.impl.workers.a.q(obj5, builder5);
        FieldDescriptor.Builder builder6 = new FieldDescriptor.Builder("isNnApiEnabled");
        ?? obj6 = new Object();
        obj6.f11145a = 6;
        g = androidx.work.impl.workers.a.q(obj6, builder6);
        FieldDescriptor.Builder builder7 = new FieldDescriptor.Builder("eventsCount");
        ?? obj7 = new Object();
        obj7.f11145a = 7;
        h = androidx.work.impl.workers.a.q(obj7, builder7);
        FieldDescriptor.Builder builder8 = new FieldDescriptor.Builder("otherErrors");
        ?? obj8 = new Object();
        obj8.f11145a = 8;
        i = androidx.work.impl.workers.a.q(obj8, builder8);
        FieldDescriptor.Builder builder9 = new FieldDescriptor.Builder("remoteConfigValueForAcceleration");
        ?? obj9 = new Object();
        obj9.f11145a = 9;
        j = androidx.work.impl.workers.a.q(obj9, builder9);
        FieldDescriptor.Builder builder10 = new FieldDescriptor.Builder("isAccelerated");
        ?? obj10 = new Object();
        obj10.f11145a = 10;
        k = androidx.work.impl.workers.a.q(obj10, builder10);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        zzoj zzojVar = (zzoj) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.d(b, zzojVar.f11387a);
        objectEncoderContext.d(f11254c, zzojVar.b);
        objectEncoderContext.d(d, zzojVar.f11388c);
        objectEncoderContext.d(e, zzojVar.d);
        objectEncoderContext.d(f, zzojVar.e);
        objectEncoderContext.d(g, null);
        objectEncoderContext.d(h, null);
        objectEncoderContext.d(i, null);
        objectEncoderContext.d(j, null);
        objectEncoderContext.d(k, null);
    }
}
