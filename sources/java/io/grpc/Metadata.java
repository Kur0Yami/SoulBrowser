package io.grpc;

import android.support.v4.media.a;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.io.BaseEncoding;
import java.nio.charset.StandardCharsets;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.concurrent.Immutable;
import javax.annotation.concurrent.NotThreadSafe;

@NotThreadSafe
/* loaded from: classes3.dex */
public final class Metadata {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f21042a = Logger.getLogger(Metadata.class.getName());

    /* renamed from: io.grpc.Metadata$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements BinaryMarshaller<byte[]> {
    }

    /* renamed from: io.grpc.Metadata$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements AsciiMarshaller<String> {
    }

    /* loaded from: classes3.dex */
    public static class AsciiKey<T> extends Key<T> {
    }

    /* loaded from: classes3.dex */
    public interface AsciiMarshaller<T> {
    }

    /* loaded from: classes3.dex */
    public static class BinaryKey<T> extends Key<T> {
    }

    /* loaded from: classes3.dex */
    public interface BinaryMarshaller<T> {
    }

    @ExperimentalApi
    /* loaded from: classes3.dex */
    public interface BinaryStreamMarshaller<T> {
    }

    /* loaded from: classes3.dex */
    public final class IterableAt<T> implements Iterable<T> {

        /* renamed from: io.grpc.Metadata$IterableAt$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Iterator<Object> {

            /* renamed from: c, reason: collision with root package name */
            public boolean f21043c;

            @Override // java.util.Iterator
            public final boolean hasNext() {
                if (this.f21043c) {
                    return true;
                }
                Logger logger = Metadata.f21042a;
                throw null;
            }

            @Override // java.util.Iterator
            public final Object next() {
                hasNext();
                this.f21043c = false;
                Logger logger = Metadata.f21042a;
                throw null;
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException();
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Iterator, java.lang.Object, io.grpc.Metadata$IterableAt$1] */
        @Override // java.lang.Iterable
        public final Iterator iterator() {
            ?? obj = new Object();
            obj.f21043c = true;
            return obj;
        }
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class Key<T> {

        /* renamed from: c, reason: collision with root package name */
        public static final BitSet f21044c;

        /* renamed from: a, reason: collision with root package name */
        public final String f21045a;
        public final Object b;

        static {
            BitSet bitSet = new BitSet(127);
            bitSet.set(45);
            bitSet.set(95);
            bitSet.set(46);
            for (char c2 = '0'; c2 <= '9'; c2 = (char) (c2 + 1)) {
                bitSet.set(c2);
            }
            for (char c3 = 'a'; c3 <= 'z'; c3 = (char) (c3 + 1)) {
                bitSet.set(c3);
            }
            f21044c = bitSet;
        }

        public Key(String str, Object obj) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            Preconditions.h(lowerCase, "name");
            Preconditions.e(!lowerCase.isEmpty(), "token must have at least 1 tchar");
            if (lowerCase.equals("connection")) {
                Metadata.f21042a.log(Level.WARNING, "Metadata key is 'Connection', which should not be used. That is used by HTTP/1 for connection-specific headers which are not to be forwarded. There is probably an HTTP/1 conversion bug. Simply removing the Connection header is not enough; you should remove all headers it references as well. See RFC 7230 section 6.1", (Throwable) new RuntimeException("exception to show backtrace"));
            }
            for (int i = 0; i < lowerCase.length(); i++) {
                char charAt = lowerCase.charAt(i);
                if (!f21044c.get(charAt)) {
                    throw new IllegalArgumentException(Strings.a("Invalid character '%s' in key name '%s'", Character.valueOf(charAt), lowerCase));
                }
            }
            this.f21045a = lowerCase;
            lowerCase.getBytes(StandardCharsets.US_ASCII);
            this.b = obj;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                return this.f21045a.equals(((Key) obj).f21045a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f21045a.hashCode();
        }

        public final String toString() {
            return a.p(new StringBuilder("Key{name='"), this.f21045a, "'}");
        }
    }

    /* loaded from: classes3.dex */
    public static class LazyStreamBinaryKey<T> extends Key<T> {
    }

    /* loaded from: classes3.dex */
    public static final class LazyValue<T> {
    }

    /* loaded from: classes3.dex */
    public static final class TrustedAsciiKey<T> extends Key<T> {
        public final TrustedAsciiMarshaller d;

        public TrustedAsciiKey(String str, TrustedAsciiMarshaller trustedAsciiMarshaller) {
            super(str, trustedAsciiMarshaller);
            Preconditions.f(!str.endsWith("-bin"), "ASCII header is named %s.  Only binary headers may end with %s", str, "-bin");
            this.d = trustedAsciiMarshaller;
        }
    }

    @Immutable
    /* loaded from: classes3.dex */
    public interface TrustedAsciiMarshaller<T> {
    }

    static {
        BaseEncoding.f12463a.h();
    }

    public final String toString() {
        return "Metadata()";
    }
}
