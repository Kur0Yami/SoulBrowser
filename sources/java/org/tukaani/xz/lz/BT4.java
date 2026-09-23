package org.tukaani.xz.lz;

/* loaded from: classes4.dex */
final class BT4 extends LZEncoder {
    public int e;
    public int f;

    @Override // org.tukaani.xz.lz.LZEncoder
    public final void c(int i) {
        while (true) {
            int i2 = i - 1;
            if (i > 0) {
                int b = b(0);
                if (b != 0) {
                    int i3 = this.f + 1;
                    this.f = i3;
                    if (i3 != Integer.MAX_VALUE) {
                        int i4 = this.e + 1;
                        this.e = i4;
                        if (i4 == 0) {
                            this.e = 0;
                        }
                    } else {
                        throw null;
                    }
                }
                if (b >= 0 || b != 0) {
                    break;
                } else {
                    i = i2;
                }
            } else {
                return;
            }
        }
        throw null;
    }
}
