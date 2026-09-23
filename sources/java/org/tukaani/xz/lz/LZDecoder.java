package org.tukaani.xz.lz;

import org.tukaani.xz.CorruptedInputException;

/* loaded from: classes4.dex */
public final class LZDecoder {

    /* renamed from: a, reason: collision with root package name */
    public int f22708a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f22709c;
    public int d;
    public int e;
    public int f;

    public final void a(int i, int i2) {
        if (i >= 0 && i < this.f22709c) {
            this.e = i2 - Math.min(this.d - this.b, i2);
            this.f = i;
            this.b++;
            throw null;
        }
        throw new CorruptedInputException();
    }
}
