package com.google.android.gms.internal.fido;

import java.util.Comparator;
import kotlin.UByte;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
final class zzgk implements Comparator {

    /* renamed from: c, reason: collision with root package name */
    public static final zzgk f10319c;
    public static final /* synthetic */ zzgk[] f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.gms.internal.fido.zzgk] */
    static {
        ?? r0 = new Enum("INSTANCE", 0);
        f10319c = r0;
        f = new zzgk[]{r0};
    }

    public static zzgk[] values() {
        return (zzgk[]) f.clone();
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = (byte[]) obj2;
        int min = Math.min(bArr.length, bArr2.length);
        for (int i = 0; i < min; i++) {
            int i2 = (bArr[i] & UByte.MAX_VALUE) - (bArr2[i] & UByte.MAX_VALUE);
            if (i2 != 0) {
                return i2;
            }
        }
        return bArr.length - bArr2.length;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "UnsignedBytes.lexicographicalComparator() (pure Java version)";
    }
}
