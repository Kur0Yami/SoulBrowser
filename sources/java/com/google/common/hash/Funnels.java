package com.google.common.hash;

import com.google.common.annotations.Beta;
import java.io.OutputStream;
import java.io.Serializable;

@Beta
/* loaded from: classes3.dex */
public final class Funnels {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class ByteArrayFunnel implements Funnel<byte[]> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ ByteArrayFunnel[] f12448c = {new Enum("INSTANCE", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        ByteArrayFunnel EF5;

        public static ByteArrayFunnel valueOf(String str) {
            return (ByteArrayFunnel) Enum.valueOf(ByteArrayFunnel.class, str);
        }

        public static ByteArrayFunnel[] values() {
            return (ByteArrayFunnel[]) f12448c.clone();
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "Funnels.byteArrayFunnel()";
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class IntegerFunnel implements Funnel<Integer> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ IntegerFunnel[] f12449c = {new Enum("INSTANCE", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        IntegerFunnel EF5;

        public static IntegerFunnel valueOf(String str) {
            return (IntegerFunnel) Enum.valueOf(IntegerFunnel.class, str);
        }

        public static IntegerFunnel[] values() {
            return (IntegerFunnel[]) f12449c.clone();
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "Funnels.integerFunnel()";
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class LongFunnel implements Funnel<Long> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ LongFunnel[] f12450c = {new Enum("INSTANCE", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        LongFunnel EF5;

        public static LongFunnel valueOf(String str) {
            return (LongFunnel) Enum.valueOf(LongFunnel.class, str);
        }

        public static LongFunnel[] values() {
            return (LongFunnel[]) f12450c.clone();
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "Funnels.longFunnel()";
        }
    }

    /* loaded from: classes3.dex */
    public static final class SequentialFunnel<E> implements Funnel<Iterable<? extends E>> {
        public final boolean equals(Object obj) {
            if (!(obj instanceof SequentialFunnel)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            SequentialFunnel.class.hashCode();
            throw null;
        }

        public final String toString() {
            return "Funnels.sequentialFunnel(null)";
        }
    }

    /* loaded from: classes3.dex */
    public static final class SinkAsStream extends OutputStream {
        public final String toString() {
            return "Funnels.asOutputStream(null)";
        }

        @Override // java.io.OutputStream
        public final void write(int i) {
            throw null;
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr) {
            throw null;
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class StringCharsetFunnel implements Funnel<CharSequence> {

        /* loaded from: classes3.dex */
        public static final class SerializedForm implements Serializable {
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof StringCharsetFunnel)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            StringCharsetFunnel.class.hashCode();
            throw null;
        }

        public final String toString() {
            throw null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class UnencodedCharsFunnel implements Funnel<CharSequence> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ UnencodedCharsFunnel[] f12451c = {new Enum("INSTANCE", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        UnencodedCharsFunnel EF5;

        public static UnencodedCharsFunnel valueOf(String str) {
            return (UnencodedCharsFunnel) Enum.valueOf(UnencodedCharsFunnel.class, str);
        }

        public static UnencodedCharsFunnel[] values() {
            return (UnencodedCharsFunnel[]) f12451c.clone();
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "Funnels.unencodedCharsFunnel()";
        }
    }
}
