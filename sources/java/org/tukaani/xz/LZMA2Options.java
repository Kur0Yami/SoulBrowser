package org.tukaani.xz;

/* loaded from: classes4.dex */
public class LZMA2Options extends FilterOptions {
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new RuntimeException();
        }
    }
}
