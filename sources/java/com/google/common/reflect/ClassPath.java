package com.google.common.reflect;

import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class ClassPath {

    /* loaded from: classes3.dex */
    public static final class ClassInfo extends ResourceInfo {
        @Override // com.google.common.reflect.ClassPath.ResourceInfo
        public final String toString() {
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class LocationInfo {
        public final boolean equals(Object obj) {
            if (!(obj instanceof LocationInfo)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class ResourceInfo {
        public final boolean equals(Object obj) {
            if (!(obj instanceof ResourceInfo)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            throw null;
        }

        public String toString() {
            return null;
        }
    }

    static {
        boolean z;
        Logger.getLogger(ClassPath.class.getName());
        if (" ".length() != 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z, "The separator may not be the empty string.");
        if (" ".length() == 1) {
            " ".charAt(0);
        } else {
            new Splitter(new com.google.common.base.a(0, " "));
        }
    }
}
