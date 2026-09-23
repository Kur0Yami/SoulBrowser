package org.tukaani.xz.lzma;

import org.tukaani.xz.lzma.LZMACoder;

/* loaded from: classes4.dex */
public abstract class LZMAEncoder extends LZMACoder {

    /* loaded from: classes4.dex */
    public class LengthEncoder extends LZMACoder.LengthCoder {
        @Override // org.tukaani.xz.lzma.LZMACoder.LengthCoder
        public final void a() {
            super.a();
            throw null;
        }
    }

    /* loaded from: classes4.dex */
    public class LiteralEncoder extends LZMACoder.LiteralCoder {

        /* loaded from: classes4.dex */
        public class LiteralSubencoder extends LZMACoder.LiteralCoder.LiteralSubcoder {
        }
    }
}
