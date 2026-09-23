package org.tukaani.xz.rangecoder;

import org.tukaani.xz.CorruptedInputException;

/* loaded from: classes4.dex */
public final class RangeDecoderFromBuffer extends RangeDecoder {

    /* renamed from: c, reason: collision with root package name */
    public int f22721c;

    @Override // org.tukaani.xz.rangecoder.RangeDecoder
    public final void d() {
        if ((this.f22720a & (-16777216)) != 0) {
            return;
        }
        try {
            this.f22721c++;
            throw null;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new CorruptedInputException();
        }
    }
}
