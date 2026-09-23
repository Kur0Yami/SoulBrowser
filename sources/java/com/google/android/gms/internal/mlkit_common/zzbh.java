package com.google.android.gms.internal.mlkit_common;

import com.google.firebase.encoders.ObjectEncoder;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzbh {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f10666a;
    public final HashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final ObjectEncoder f10667c;

    public zzbh(HashMap hashMap, HashMap hashMap2, ObjectEncoder objectEncoder) {
        this.f10666a = hashMap;
        this.b = hashMap2;
        this.f10667c = objectEncoder;
    }

    public final byte[] a(zzmy zzmyVar) {
        zzbe zzbeVar;
        ObjectEncoder objectEncoder;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            HashMap hashMap = this.f10666a;
            zzbeVar = new zzbe(byteArrayOutputStream, hashMap, this.b, this.f10667c);
            objectEncoder = (ObjectEncoder) hashMap.get(zzmy.class);
        } catch (IOException unused) {
        }
        if (objectEncoder != null) {
            objectEncoder.a(zzmyVar, zzbeVar);
            return byteArrayOutputStream.toByteArray();
        }
        throw new RuntimeException("No encoder for ".concat(String.valueOf(zzmy.class)));
    }
}
