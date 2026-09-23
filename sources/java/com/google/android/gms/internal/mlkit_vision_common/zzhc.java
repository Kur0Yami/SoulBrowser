package com.google.android.gms.internal.mlkit_vision_common;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* loaded from: classes3.dex */
final class zzhc implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhc f11077a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_common.zzhc] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("result");
        ?? obj = new Object();
        obj.f10920a = 1;
        FieldDescriptor.Builder l = a.l(obj, builder, "ok");
        ?? obj2 = new Object();
        obj2.f10920a = 2;
        a.y(obj2, l);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        throw null;
    }
}
