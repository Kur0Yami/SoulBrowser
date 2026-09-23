package com.google.android.gms.internal.mlkit_vision_common;

import com.google.firebase.encoders.ObjectEncoder;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzan {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f10929a;
    public final HashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final ObjectEncoder f10930c;

    public zzan(HashMap hashMap, HashMap hashMap2, ObjectEncoder objectEncoder) {
        this.f10929a = hashMap;
        this.b = hashMap2;
        this.f10930c = objectEncoder;
    }

    public final byte[] a(zziy zziyVar) {
        zzak zzakVar;
        ObjectEncoder objectEncoder;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            HashMap hashMap = this.f10929a;
            zzakVar = new zzak(byteArrayOutputStream, hashMap, this.b, this.f10930c);
            objectEncoder = (ObjectEncoder) hashMap.get(zziy.class);
        } catch (IOException unused) {
        }
        if (objectEncoder != null) {
            objectEncoder.a(zziyVar, zzakVar);
            return byteArrayOutputStream.toByteArray();
        }
        throw new RuntimeException("No encoder for ".concat(String.valueOf(zziy.class)));
    }
}
