package com.google.android.gms.internal.mlkit_code_scanner;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* loaded from: classes3.dex */
final class zzdi implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzdi f10465a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_code_scanner.zzdi] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("durationMs");
        ?? obj = new Object();
        obj.f10416a = 1;
        FieldDescriptor.Builder j = a.j(obj, builder, "detectorOptions");
        ?? obj2 = new Object();
        obj2.f10416a = 2;
        FieldDescriptor.Builder j2 = a.j(obj2, j, "eventType");
        ?? obj3 = new Object();
        obj3.f10416a = 3;
        FieldDescriptor.Builder j3 = a.j(obj3, j2, "errorCode");
        ?? obj4 = new Object();
        obj4.f10416a = 4;
        a.w(obj4, j3);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        throw null;
    }
}
