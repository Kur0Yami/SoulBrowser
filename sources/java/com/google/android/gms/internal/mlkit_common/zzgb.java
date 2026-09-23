package com.google.android.gms.internal.mlkit_common;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* loaded from: classes3.dex */
final class zzgb implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgb f10752a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_common.zzgb] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("detectorOptions");
        ?? obj = new Object();
        obj.f10659a = 1;
        FieldDescriptor.Builder k = a.k(obj, builder, "eventType");
        ?? obj2 = new Object();
        obj2.f10659a = 2;
        FieldDescriptor.Builder k2 = a.k(obj2, k, "errorCode");
        ?? obj3 = new Object();
        obj3.f10659a = 3;
        a.x(obj3, k2);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        throw null;
    }
}
