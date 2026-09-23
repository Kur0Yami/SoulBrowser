package com.google.android.gms.internal.mlkit_code_scanner;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* loaded from: classes3.dex */
final class zzdx implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final zzdx f10480a = new Object();
    public static final FieldDescriptor b;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f10481c;
    public static final FieldDescriptor d;
    public static final FieldDescriptor e;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_code_scanner.zzdx, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.android.gms.internal.mlkit_code_scanner.zzad, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("supportedFormats");
        ?? obj = new Object();
        obj.f10416a = 1;
        b = a.n(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("durationMs");
        ?? obj2 = new Object();
        obj2.f10416a = 2;
        f10481c = a.n(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("errorCode");
        ?? obj3 = new Object();
        obj3.f10416a = 3;
        d = a.n(obj3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("allowManualInput");
        ?? obj4 = new Object();
        obj4.f10416a = 4;
        e = a.n(obj4, builder4);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        zzix zzixVar = (zzix) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.d(b, zzixVar.f10601a);
        objectEncoderContext.d(f10481c, zzixVar.b);
        objectEncoderContext.d(d, zzixVar.f10602c);
        objectEncoderContext.d(e, zzixVar.d);
    }
}
