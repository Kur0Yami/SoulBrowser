package com.google.android.gms.internal.ads;

import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class zzhyw implements zzick {
    static {
        zziab zziabVar = zziab.b;
        int i = zzhyy.f8889a;
    }

    @Override // com.google.android.gms.internal.ads.zzick
    public final zziar a(FileInputStream fileInputStream, zziab zziabVar) {
        zzhzo zzhzoVar = new zzhzo(fileInputStream);
        zziar q = zziar.q(((zziam) this).f8913a, zzhzoVar, zziabVar);
        zzhzoVar.i(0);
        if (zziar.z(q, true)) {
            return q;
        }
        throw new IOException(new zzide().getMessage());
    }
}
