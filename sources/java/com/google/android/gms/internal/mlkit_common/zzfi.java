package com.google.android.gms.internal.mlkit_common;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* loaded from: classes3.dex */
final class zzfi implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzfi f10732a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_common.zzfi, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("inferenceCommonLogEvent");
        ?? obj = new Object();
        obj.f10659a = 1;
        FieldDescriptor.Builder k = a.k(obj, builder, "options");
        ?? obj2 = new Object();
        obj2.f10659a = 2;
        FieldDescriptor.Builder k2 = a.k(obj2, k, "inputsFormats");
        ?? obj3 = new Object();
        obj3.f10659a = 3;
        FieldDescriptor.Builder k3 = a.k(obj3, k2, "outputFormats");
        ?? obj4 = new Object();
        obj4.f10659a = 4;
        FieldDescriptor.Builder k4 = a.k(obj4, k3, "modelInitializationMs");
        ?? obj5 = new Object();
        obj5.f10659a = 5;
        a.x(obj5, k4);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        throw null;
    }
}
