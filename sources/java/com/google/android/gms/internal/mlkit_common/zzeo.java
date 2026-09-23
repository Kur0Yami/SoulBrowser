package com.google.android.gms.internal.mlkit_common;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* loaded from: classes3.dex */
final class zzeo implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzeo f10711a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_common.zzeo] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("remoteModelOptions");
        ?? obj = new Object();
        obj.f10659a = 1;
        FieldDescriptor.Builder k = a.k(obj, builder, "localModelOptions");
        ?? obj2 = new Object();
        obj2.f10659a = 2;
        FieldDescriptor.Builder k2 = a.k(obj2, k, "errorCodes");
        ?? obj3 = new Object();
        obj3.f10659a = 3;
        FieldDescriptor.Builder k3 = a.k(obj3, k2, "modelInitializationMs");
        ?? obj4 = new Object();
        obj4.f10659a = 4;
        a.x(obj4, k3);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        throw null;
    }
}
