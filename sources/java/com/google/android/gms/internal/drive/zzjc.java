package com.google.android.gms.internal.drive;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class zzjc implements Serializable, Iterable<Byte> {
    public static final zzjc f = new zzjm(zzkm.b);
    public static final zzji g;

    /* renamed from: c, reason: collision with root package name */
    public int f10202c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.drive.zzji] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    static {
        ?? r0;
        if (zzix.a()) {
            r0 = new Object();
        } else {
            r0 = new Object();
        }
        g = r0;
    }

    public abstract int a(int i, int i2);

    public abstract String c(Charset charset);

    public abstract boolean equals(Object obj);

    public abstract void g(zzjb zzjbVar);

    public final int hashCode() {
        int i = this.f10202c;
        if (i == 0) {
            int size = size();
            i = a(size, size);
            if (i == 0) {
                i = 1;
            }
            this.f10202c = i;
        }
        return i;
    }

    public abstract boolean i();

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return new zzjd(this);
    }

    public abstract byte k(int i);

    public abstract byte m(int i);

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }
}
