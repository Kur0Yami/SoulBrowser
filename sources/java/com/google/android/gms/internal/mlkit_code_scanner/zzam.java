package com.google.android.gms.internal.mlkit_code_scanner;

import com.google.firebase.encoders.ObjectEncoder;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzam {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f10425a;
    public final HashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final ObjectEncoder f10426c;

    public zzam(HashMap hashMap, HashMap hashMap2, ObjectEncoder objectEncoder) {
        this.f10425a = hashMap;
        this.b = hashMap2;
        this.f10426c = objectEncoder;
    }

    public final byte[] a(zzke zzkeVar) {
        zzaj zzajVar;
        ObjectEncoder objectEncoder;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            HashMap hashMap = this.f10425a;
            zzajVar = new zzaj(byteArrayOutputStream, hashMap, this.b, this.f10426c);
            objectEncoder = (ObjectEncoder) hashMap.get(zzke.class);
        } catch (IOException unused) {
        }
        if (objectEncoder != null) {
            objectEncoder.a(zzkeVar, zzajVar);
            return byteArrayOutputStream.toByteArray();
        }
        throw new RuntimeException("No encoder for ".concat(String.valueOf(zzke.class)));
    }
}
