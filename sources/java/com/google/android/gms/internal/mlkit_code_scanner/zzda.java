package com.google.android.gms.internal.mlkit_code_scanner;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* loaded from: classes3.dex */
final class zzda implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzda f10457a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_code_scanner.zzda, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("errorCode");
        ?? obj = new Object();
        obj.f10416a = 1;
        FieldDescriptor.Builder j = a.j(obj, builder, "isColdCall");
        ?? obj2 = new Object();
        obj2.f10416a = 2;
        FieldDescriptor.Builder j2 = a.j(obj2, j, "imageInfo");
        ?? obj3 = new Object();
        obj3.f10416a = 3;
        FieldDescriptor.Builder j3 = a.j(obj3, j2, "detectorOptions");
        ?? obj4 = new Object();
        obj4.f10416a = 4;
        a.w(obj4, j3);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        throw null;
    }
}
