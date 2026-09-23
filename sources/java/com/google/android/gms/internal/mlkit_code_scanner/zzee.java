package com.google.android.gms.internal.mlkit_code_scanner;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* loaded from: classes3.dex */
final class zzee implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzee f10489a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_code_scanner.zzee] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v10, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("sdkVersion");
        ?? obj = new Object();
        obj.f10416a = 1;
        FieldDescriptor.Builder j = a.j(obj, builder, "osBuild");
        ?? obj2 = new Object();
        obj2.f10416a = 2;
        FieldDescriptor.Builder j2 = a.j(obj2, j, "brand");
        ?? obj3 = new Object();
        obj3.f10416a = 3;
        FieldDescriptor.Builder j3 = a.j(obj3, j2, "device");
        ?? obj4 = new Object();
        obj4.f10416a = 4;
        FieldDescriptor.Builder j4 = a.j(obj4, j3, "hardware");
        ?? obj5 = new Object();
        obj5.f10416a = 5;
        FieldDescriptor.Builder j5 = a.j(obj5, j4, "manufacturer");
        ?? obj6 = new Object();
        obj6.f10416a = 6;
        FieldDescriptor.Builder j6 = a.j(obj6, j5, "model");
        ?? obj7 = new Object();
        obj7.f10416a = 7;
        FieldDescriptor.Builder j7 = a.j(obj7, j6, "product");
        ?? obj8 = new Object();
        obj8.f10416a = 8;
        FieldDescriptor.Builder j8 = a.j(obj8, j7, "soc");
        ?? obj9 = new Object();
        obj9.f10416a = 9;
        FieldDescriptor.Builder j9 = a.j(obj9, j8, "socMetaBuildId");
        ?? obj10 = new Object();
        obj10.f10416a = 10;
        a.w(obj10, j9);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        throw null;
    }
}
