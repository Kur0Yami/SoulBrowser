package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzahx extends zzaig {
    public final byte[] b;

    public zzahx(String str, byte[] bArr) {
        super(str);
        this.b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahx.class == obj.getClass()) {
            zzahx zzahxVar = (zzahx) obj;
            if (this.f4060a.equals(zzahxVar.f4060a) && Arrays.equals(this.b, zzahxVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) + ((this.f4060a.hashCode() + 527) * 31);
    }
}
