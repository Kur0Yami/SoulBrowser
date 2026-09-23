package com.google.android.gms.internal.consent_sdk;

import android.support.v4.media.a;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class zzpm implements Iterable, Serializable {
    public static final zzpm f = new zzpk(zzqs.b);

    /* renamed from: c, reason: collision with root package name */
    public int f10073c;

    static {
        int i = zzpc.f10071a;
    }

    public static void d(int i) {
        if (((i - 47) | 47) >= 0) {
        } else {
            throw new IndexOutOfBoundsException(a.e(i, "End index: 47 >= "));
        }
    }

    public abstract byte a(int i);

    public abstract byte c(int i);

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zzpm) {
                zzpm zzpmVar = (zzpm) obj;
                int g = g();
                if (g == zzpmVar.g()) {
                    if (g != 0) {
                        int i = this.f10073c;
                        int i2 = zzpmVar.f10073c;
                        if (i != 0 && i2 != 0 && i != i2) {
                            return false;
                        }
                        return p(zzpmVar);
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public abstract int g();

    public final int hashCode() {
        int i = this.f10073c;
        if (i == 0) {
            int g = g();
            i = i(g, g);
            if (i == 0) {
                i = 1;
            }
            this.f10073c = i;
        }
        return i;
    }

    public abstract int i(int i, int i2);

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzpf(this);
    }

    public abstract zzpm k();

    public abstract void m(zzpv zzpvVar);

    public abstract boolean p(zzpm zzpmVar);

    public final String toString() {
        String concat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int g = g();
        if (g() <= 50) {
            concat = zzsk.a(this);
        } else {
            concat = zzsk.a(k()).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(g);
        sb.append(" contents=\"");
        return a.p(sb, concat, "\">");
    }
}
