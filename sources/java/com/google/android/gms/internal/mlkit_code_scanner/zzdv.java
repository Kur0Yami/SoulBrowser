package com.google.android.gms.internal.mlkit_code_scanner;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* loaded from: classes3.dex */
final class zzdv implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzdv f10478a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_code_scanner.zzdv] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("inferenceCommonLogEvent");
        ?? obj = new Object();
        obj.f10416a = 1;
        FieldDescriptor.Builder j = a.j(obj, builder, "options");
        ?? obj2 = new Object();
        obj2.f10416a = 2;
        FieldDescriptor.Builder j2 = a.j(obj2, j, "imageInfo");
        ?? obj3 = new Object();
        obj3.f10416a = 3;
        a.w(obj3, j2);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        throw null;
    }
}
