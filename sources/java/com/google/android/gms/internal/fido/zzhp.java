package com.google.android.gms.internal.fido;

import android.support.v4.media.a;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* loaded from: classes3.dex */
public abstract class zzhp implements Comparable {
    public static int c(byte b) {
        return (b >> 5) & 7;
    }

    public static zzhp d(byte... bArr) {
        bArr.getClass();
        zzhs zzhsVar = new zzhs(new ByteArrayInputStream(Arrays.copyOf(bArr, bArr.length)));
        try {
            return zzhq.a(zzhsVar);
        } finally {
            try {
                zzhsVar.close();
            } catch (IOException unused) {
            }
        }
    }

    public static zzhp e(InputStream inputStream) {
        zzhs zzhsVar = new zzhs(inputStream);
        try {
            return zzhq.a(zzhsVar);
        } finally {
            try {
                zzhsVar.close();
            } catch (IOException unused) {
            }
        }
    }

    public int a() {
        return 0;
    }

    public final zzhp b(Class cls) {
        if (cls.isInstance(this)) {
            return (zzhp) cls.cast(this);
        }
        throw new Exception(a.m("Expected a ", cls.getName(), " value, but got ", getClass().getName()));
    }

    public abstract int zza();
}
