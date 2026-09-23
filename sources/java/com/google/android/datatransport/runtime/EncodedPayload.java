package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class EncodedPayload {

    /* renamed from: a, reason: collision with root package name */
    public final Encoding f2823a;
    public final byte[] b;

    public EncodedPayload(Encoding encoding, byte[] bArr) {
        if (encoding != null) {
            if (bArr != null) {
                this.f2823a = encoding;
                this.b = bArr;
                return;
            }
            throw new NullPointerException("bytes is null");
        }
        throw new NullPointerException("encoding is null");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EncodedPayload)) {
            return false;
        }
        EncodedPayload encodedPayload = (EncodedPayload) obj;
        if (!this.f2823a.equals(encodedPayload.f2823a)) {
            return false;
        }
        return Arrays.equals(this.b, encodedPayload.b);
    }

    public final int hashCode() {
        return ((this.f2823a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.f2823a + ", bytes=[...]}";
    }
}
