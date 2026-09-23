package org.tukaani.xz;

/* loaded from: classes4.dex */
abstract class BCJOptions extends FilterOptions {
    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new RuntimeException();
        }
    }
}
