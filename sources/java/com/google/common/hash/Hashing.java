package com.google.common.hash;

import com.google.errorprone.annotations.Immutable;
import java.util.Arrays;
import java.util.zip.Adler32;
import java.util.zip.CRC32;
import java.util.zip.Checksum;

/* loaded from: classes3.dex */
public final class Hashing {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f12453a = 0;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class ChecksumType implements ImmutableSupplier<Checksum> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ ChecksumType[] f12454c = {new Enum("CRC_32", 0), new Enum("ADLER_32", 1)};

        /* JADX INFO: Fake field, exist only in values array */
        ChecksumType EF5;

        /* renamed from: com.google.common.hash.Hashing$ChecksumType$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public enum AnonymousClass1 extends ChecksumType {
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return new CRC32();
            }
        }

        /* renamed from: com.google.common.hash.Hashing$ChecksumType$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        public enum AnonymousClass2 extends ChecksumType {
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return new Adler32();
            }
        }

        public static ChecksumType valueOf(String str) {
            return (ChecksumType) Enum.valueOf(ChecksumType.class, str);
        }

        public static ChecksumType[] values() {
            return (ChecksumType[]) f12454c.clone();
        }
    }

    /* loaded from: classes3.dex */
    public static final class ConcatenatedHashFunction extends AbstractCompositeHashFunction {
        public final boolean equals(Object obj) {
            if (obj instanceof ConcatenatedHashFunction) {
                return Arrays.equals((Object[]) null, (Object[]) null);
            }
            return false;
        }

        public final int hashCode() {
            return Arrays.hashCode((Object[]) null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class LinearCongruentialGenerator {
    }

    /* loaded from: classes3.dex */
    public static final class Md5Holder {
        static {
            new MessageDigestHashFunction("MD5", "Hashing.md5()");
        }
    }

    /* loaded from: classes3.dex */
    public static final class Sha1Holder {
        static {
            new MessageDigestHashFunction("SHA-1", "Hashing.sha1()");
        }
    }

    /* loaded from: classes3.dex */
    public static final class Sha256Holder {
        static {
            new MessageDigestHashFunction("SHA-256", "Hashing.sha256()");
        }
    }

    /* loaded from: classes3.dex */
    public static final class Sha384Holder {
        static {
            new MessageDigestHashFunction("SHA-384", "Hashing.sha384()");
        }
    }

    /* loaded from: classes3.dex */
    public static final class Sha512Holder {
        static {
            new MessageDigestHashFunction("SHA-512", "Hashing.sha512()");
        }
    }

    static {
        System.currentTimeMillis();
    }
}
