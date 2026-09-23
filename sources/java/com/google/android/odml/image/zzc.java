package com.google.android.odml.image;

/* loaded from: classes3.dex */
final class zzc extends ImageProperties {
    public final boolean equals(Object obj) {
        if (obj == this || (obj instanceof ImageProperties)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return -721379959;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(65);
        sb.append("ImageProperties{imageFormat=0, storageType=0}");
        return sb.toString();
    }
}
