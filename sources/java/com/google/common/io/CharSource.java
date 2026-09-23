package com.google.common.io;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Splitter;
import com.google.common.collect.AbstractIterator;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public abstract class CharSource {

    /* loaded from: classes3.dex */
    public final class AsByteSource extends ByteSource {
        public final String toString() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class CharSequenceCharSource extends CharSource {

        /* renamed from: com.google.common.io.CharSource$CharSequenceCharSource$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends AbstractIterator<String> {
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                throw null;
            }
        }

        static {
            Splitter.b();
        }

        public String toString() {
            return "CharSource.wrap(" + Ascii.d(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED) + ")";
        }
    }

    /* loaded from: classes3.dex */
    public static final class ConcatenatedCharSource extends CharSource {
        public final String toString() {
            return "CharSource.concat(null)";
        }
    }

    /* loaded from: classes3.dex */
    public static final class EmptyCharSource extends StringCharSource {
        @Override // com.google.common.io.CharSource.CharSequenceCharSource
        public final String toString() {
            return "CharSource.empty()";
        }
    }

    /* loaded from: classes3.dex */
    public static class StringCharSource extends CharSequenceCharSource {
    }
}
