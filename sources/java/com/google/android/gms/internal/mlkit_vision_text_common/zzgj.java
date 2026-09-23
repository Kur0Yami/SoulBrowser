package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzgj implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgj f11203a = new Object();
    public static final FieldDescriptor b;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f11204c;
    public static final FieldDescriptor d;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzgj] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("logEventKey");
        ?? obj = new Object();
        obj.f11145a = 1;
        b = androidx.work.impl.workers.a.q(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("eventCount");
        ?? obj2 = new Object();
        obj2.f11145a = 2;
        f11204c = androidx.work.impl.workers.a.q(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("inferenceDurationStats");
        ?? obj3 = new Object();
        obj3.f11145a = 3;
        d = androidx.work.impl.workers.a.q(obj3, builder3);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        zzeu zzeuVar = (zzeu) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.d(b, zzeuVar.f11163a);
        objectEncoderContext.d(f11204c, zzeuVar.b);
        objectEncoderContext.d(d, zzeuVar.f11164c);
    }
}
