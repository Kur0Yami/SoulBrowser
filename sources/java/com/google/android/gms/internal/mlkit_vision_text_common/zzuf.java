package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzuf implements zztr {

    /* renamed from: a, reason: collision with root package name */
    public final zzow f11425a;
    public zzsr b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f11426c;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzsr, java.lang.Object] */
    public zzuf(zzow zzowVar, int i) {
        this.f11425a = zzowVar;
        zzuo.a();
        this.f11426c = i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zztr
    public final zzuf a(zzov zzovVar) {
        this.f11425a.b = zzovVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zztr
    public final byte[] b(int i) {
        boolean z;
        int i2 = i ^ 1;
        zzsr zzsrVar = this.b;
        if (1 != i2) {
            z = false;
        } else {
            z = true;
        }
        zzsrVar.i = Boolean.valueOf(z);
        zzsr zzsrVar2 = this.b;
        zzsrVar2.g = Boolean.FALSE;
        zzst zzstVar = new zzst(zzsrVar2);
        zzow zzowVar = this.f11425a;
        zzowVar.f11392a = zzstVar;
        try {
            zzuo.a();
            zzmq zzmqVar = zzmq.f11377a;
            if (i == 0) {
                zzoy zzoyVar = new zzoy(zzowVar);
                JsonDataEncoderBuilder jsonDataEncoderBuilder = new JsonDataEncoderBuilder();
                zzmqVar.a(jsonDataEncoderBuilder);
                jsonDataEncoderBuilder.d = true;
                return jsonDataEncoderBuilder.b().b(zzoyVar).getBytes("utf-8");
            }
            zzoy zzoyVar2 = new zzoy(zzowVar);
            zzdb zzdbVar = new zzdb();
            zzmqVar.a(zzdbVar);
            return new zzdc(new HashMap(zzdbVar.f11151a), new HashMap(zzdbVar.b), zzdbVar.f11152c).a(zzoyVar2);
        } catch (UnsupportedEncodingException e) {
            throw new UnsupportedOperationException("Failed to covert logging to UTF-8 byte array", e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zztr
    public final int zza() {
        return this.f11426c;
    }
}
