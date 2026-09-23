package org.apache.commons.compress.archivers.zip;

import java.io.Serializable;
import kotlin.KotlinVersion;
import kotlin.UByte;

/* loaded from: classes4.dex */
public final class ZipShort implements Cloneable, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final int f22313c;

    public ZipShort(int i) {
        this.f22313c = i;
    }

    public static int b(byte[] bArr, int i) {
        return ((bArr[i + 1] << 8) & 65280) + (bArr[i] & UByte.MAX_VALUE);
    }

    public final byte[] a() {
        int i = this.f22313c;
        return new byte[]{(byte) (i & KotlinVersion.MAX_COMPONENT_VALUE), (byte) ((i & 65280) >> 8)};
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof ZipShort)) {
            if (this.f22313c == ((ZipShort) obj).f22313c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f22313c;
    }

    public final String toString() {
        return "ZipShort value: " + this.f22313c;
    }

    public ZipShort(byte[] bArr, int i) {
        this.f22313c = b(bArr, i);
    }
}
