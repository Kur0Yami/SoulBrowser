package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Ascii;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public abstract class ByteSource {

    /* loaded from: classes3.dex */
    public class AsCharSource extends CharSource {
        public final String toString() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class ByteArrayByteSource extends ByteSource {
        public String toString() {
            return "ByteSource.wrap(" + Ascii.d(BaseEncoding.f12464c.c(null, 0)) + ")";
        }
    }

    /* loaded from: classes3.dex */
    public static final class ConcatenatedByteSource extends ByteSource {
        public final String toString() {
            return "ByteSource.concat(null)";
        }
    }

    /* loaded from: classes3.dex */
    public static final class EmptyByteSource extends ByteArrayByteSource {
        @Override // com.google.common.io.ByteSource.ByteArrayByteSource
        public final String toString() {
            return "ByteSource.empty()";
        }
    }

    /* loaded from: classes3.dex */
    public final class SlicedByteSource extends ByteSource {
        public final String toString() {
            throw null;
        }
    }
}
