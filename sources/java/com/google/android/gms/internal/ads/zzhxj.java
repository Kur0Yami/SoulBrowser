package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes.dex */
public class zzhxj {
    public String a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final zzhxl c() {
        if (this instanceof zzhxl) {
            return (zzhxl) this;
        }
        throw new IllegalStateException("Not a JSON Object: ".concat(toString()));
    }

    public final zzhxn g() {
        if (this instanceof zzhxn) {
            return (zzhxn) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: ".concat(toString()));
    }

    public final String toString() {
        try {
            StringBuilder sb = new StringBuilder();
            zzhyq zzhyqVar = new zzhyq(new zzhyd(sb));
            zzhyqVar.l = zzhxo.f8872c;
            ((zzhyf) zzhym.f8884a).getClass();
            zzhyf.a(zzhyqVar, this);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
