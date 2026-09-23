package com.google.android.gms.internal.ads;

import java.util.Arrays;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class zzhws implements zzham {
    public static final byte[] e = {0};

    /* renamed from: a, reason: collision with root package name */
    public final zzhmn f8852a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f8853c;
    public final byte[] d;

    public zzhws(zzhkn zzhknVar) {
        this.f8852a = zzhwp.b(zzhml.c(zzhmm.b(zzhknVar.f8620a.f8631a), zzhknVar.b));
        zzhku zzhkuVar = zzhknVar.f8620a;
        this.b = zzhkuVar.b;
        this.f8853c = zzhknVar.f8621c.b();
        if (zzhkuVar.f8632c.equals(zzhkt.d)) {
            this.d = Arrays.copyOf(e, 1);
        } else {
            this.d = new byte[0];
        }
    }

    public zzhws(zzhkz zzhkzVar) {
        String valueOf = String.valueOf(zzhkzVar.f8636a.d);
        this.f8852a = new zzhwr("HMAC".concat(valueOf), new SecretKeySpec(zzhkzVar.b.f8865a.b(), "HMAC"));
        zzhli zzhliVar = zzhkzVar.f8636a;
        this.b = zzhliVar.b;
        this.f8853c = zzhkzVar.f8637c.b();
        if (zzhliVar.f8652c.equals(zzhlh.d)) {
            this.d = Arrays.copyOf(e, 1);
        } else {
            this.d = new byte[0];
        }
    }

    public zzhws(zzhwr zzhwrVar, int i) {
        this.f8852a = zzhwrVar;
        this.b = i;
        this.f8853c = new byte[0];
        this.d = new byte[0];
        zzhwrVar.a(new byte[0], i);
    }
}
