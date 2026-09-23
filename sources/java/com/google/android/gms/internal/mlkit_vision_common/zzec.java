package com.google.android.gms.internal.mlkit_vision_common;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* loaded from: classes3.dex */
final class zzec implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzec f10995a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_common.zzec] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("renderer");
        ?? obj = new Object();
        obj.f10920a = 1;
        FieldDescriptor.Builder l = a.l(obj, builder, "vendor");
        ?? obj2 = new Object();
        obj2.f10920a = 2;
        FieldDescriptor.Builder l2 = a.l(obj2, l, "version");
        ?? obj3 = new Object();
        obj3.f10920a = 3;
        FieldDescriptor.Builder l3 = a.l(obj3, l2, "maxImages");
        ?? obj4 = new Object();
        obj4.f10920a = 4;
        FieldDescriptor.Builder l4 = a.l(obj4, l3, "maxSsbo");
        ?? obj5 = new Object();
        obj5.f10920a = 5;
        FieldDescriptor.Builder l5 = a.l(obj5, l4, "workGroupSizes");
        ?? obj6 = new Object();
        obj6.f10920a = 6;
        FieldDescriptor.Builder l6 = a.l(obj6, l5, "errorCode");
        ?? obj7 = new Object();
        obj7.f10920a = 7;
        a.y(obj7, l6);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        throw null;
    }
}
