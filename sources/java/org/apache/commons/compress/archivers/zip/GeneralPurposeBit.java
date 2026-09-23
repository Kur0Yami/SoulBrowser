package org.apache.commons.compress.archivers.zip;

/* loaded from: classes4.dex */
public final class GeneralPurposeBit implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public boolean f22283c = false;
    public boolean f = false;
    public boolean g = false;
    public boolean h = false;
    public int i;
    public int j;

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException("GeneralPurposeBit is not Cloneable?", e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof GeneralPurposeBit)) {
            return false;
        }
        GeneralPurposeBit generalPurposeBit = (GeneralPurposeBit) obj;
        if (generalPurposeBit.g != this.g || generalPurposeBit.h != this.h || generalPurposeBit.f22283c != this.f22283c || generalPurposeBit.f != this.f) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (((((((this.g ? 1 : 0) * 17) + (this.h ? 1 : 0)) * 13) + (this.f22283c ? 1 : 0)) * 7) + (this.f ? 1 : 0)) * 3;
    }
}
