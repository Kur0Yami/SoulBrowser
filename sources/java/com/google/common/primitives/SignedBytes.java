package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import java.util.Comparator;

@GwtCompatible
/* loaded from: classes3.dex */
public final class SignedBytes {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class LexicographicalComparator implements Comparator<byte[]> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ LexicographicalComparator[] f12522c = {new Enum("INSTANCE", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        LexicographicalComparator EF5;

        public static LexicographicalComparator valueOf(String str) {
            return (LexicographicalComparator) Enum.valueOf(LexicographicalComparator.class, str);
        }

        public static LexicographicalComparator[] values() {
            return (LexicographicalComparator[]) f12522c.clone();
        }

        @Override // java.util.Comparator
        public final int compare(byte[] bArr, byte[] bArr2) {
            byte[] bArr3 = bArr;
            byte[] bArr4 = bArr2;
            int min = Math.min(bArr3.length, bArr4.length);
            for (int i = 0; i < min; i++) {
                int compare = Byte.compare(bArr3[i], bArr4[i]);
                if (compare != 0) {
                    return compare;
                }
            }
            return bArr3.length - bArr4.length;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "SignedBytes.lexicographicalComparator()";
        }
    }
}
