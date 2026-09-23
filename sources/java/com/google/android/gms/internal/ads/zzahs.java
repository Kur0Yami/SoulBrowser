package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;

/* loaded from: classes.dex */
public final class zzahs {

    /* renamed from: a, reason: collision with root package name */
    public final ByteArrayOutputStream f4044a;
    public final DataOutputStream b;

    public zzahs() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f4044a = byteArrayOutputStream;
        this.b = new DataOutputStream(byteArrayOutputStream);
    }
}
