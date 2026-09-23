package androidx.webkit;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class UserAgentMetadata {

    /* loaded from: classes.dex */
    public static final class BrandVersion {

        /* loaded from: classes.dex */
        public static final class Builder {
        }

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof BrandVersion)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(null, null, null);
        }

        public final String toString() {
            return "null,null,null";
        }
    }

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    public final boolean equals(Object obj) {
        if (this == obj || (obj instanceof UserAgentMetadata)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        Boolean bool = Boolean.FALSE;
        return Objects.hash(null, null, null, null, null, null, bool, 0, bool);
    }
}
