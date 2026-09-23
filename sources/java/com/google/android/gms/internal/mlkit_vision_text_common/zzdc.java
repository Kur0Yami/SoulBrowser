package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.firebase.encoders.ObjectEncoder;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzdc {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f11153a;
    public final HashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final ObjectEncoder f11154c;

    public zzdc(HashMap hashMap, HashMap hashMap2, ObjectEncoder objectEncoder) {
        this.f11153a = hashMap;
        this.b = hashMap2;
        this.f11154c = objectEncoder;
    }

    public final byte[] a(zzoy zzoyVar) {
        zzcz zzczVar;
        ObjectEncoder objectEncoder;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            HashMap hashMap = this.f11153a;
            zzczVar = new zzcz(byteArrayOutputStream, hashMap, this.b, this.f11154c);
            objectEncoder = (ObjectEncoder) hashMap.get(zzoy.class);
        } catch (IOException unused) {
        }
        if (objectEncoder != null) {
            objectEncoder.a(zzoyVar, zzczVar);
            return byteArrayOutputStream.toByteArray();
        }
        throw new RuntimeException("No encoder for ".concat(String.valueOf(zzoy.class)));
    }
}
