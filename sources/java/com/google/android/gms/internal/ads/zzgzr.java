package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;

/* loaded from: classes.dex */
public final class zzgzr implements zzhaj {

    /* renamed from: a, reason: collision with root package name */
    public final ByteArrayInputStream f8313a;

    public zzgzr(ByteArrayInputStream byteArrayInputStream) {
        this.f8313a = byteArrayInputStream;
    }

    public final zzhpj a() {
        ByteArrayInputStream byteArrayInputStream = this.f8313a;
        try {
            zziab zziabVar = zziab.b;
            int i = zzhyy.f8889a;
            return zzhpj.I(byteArrayInputStream, zziab.f8905c);
        } finally {
            byteArrayInputStream.close();
        }
    }
}
