package com.google.android.gms.internal.mlkit_common;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* loaded from: classes3.dex */
final class zzju implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzju f10855a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_common.zzju] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v10, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v12, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("deviceInfo");
        ?? obj = new Object();
        obj.f10659a = 1;
        FieldDescriptor.Builder k = a.k(obj, builder, "nnapiInfo");
        ?? obj2 = new Object();
        obj2.f10659a = 2;
        FieldDescriptor.Builder k2 = a.k(obj2, k, "gpuInfo");
        ?? obj3 = new Object();
        obj3.f10659a = 3;
        FieldDescriptor.Builder k3 = a.k(obj3, k2, "pipelineIdentifier");
        ?? obj4 = new Object();
        obj4.f10659a = 4;
        FieldDescriptor.Builder k4 = a.k(obj4, k3, "acceptedConfigurations");
        ?? obj5 = new Object();
        obj5.f10659a = 5;
        FieldDescriptor.Builder k5 = a.k(obj5, k4, "action");
        ?? obj6 = new Object();
        obj6.f10659a = 6;
        FieldDescriptor.Builder k6 = a.k(obj6, k5, "status");
        ?? obj7 = new Object();
        obj7.f10659a = 7;
        FieldDescriptor.Builder k7 = a.k(obj7, k6, "customErrors");
        ?? obj8 = new Object();
        obj8.f10659a = 8;
        FieldDescriptor.Builder k8 = a.k(obj8, k7, "benchmarkStatus");
        ?? obj9 = new Object();
        obj9.f10659a = 9;
        FieldDescriptor.Builder k9 = a.k(obj9, k8, "validationTestResult");
        ?? obj10 = new Object();
        obj10.f10659a = 10;
        FieldDescriptor.Builder k10 = a.k(obj10, k9, "timestampUs");
        ?? obj11 = new Object();
        obj11.f10659a = 11;
        FieldDescriptor.Builder k11 = a.k(obj11, k10, "elapsedUs");
        ?? obj12 = new Object();
        obj12.f10659a = 12;
        a.x(obj12, k11);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        throw null;
    }
}
