package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import kotlin.UByte;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public final class zzgwx extends zzgwy {
    public static int a(long j) {
        boolean z;
        int i = (int) j;
        if (i == j) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.d("Out of range: %s", j, z);
        return i;
    }

    public static int b(long j) {
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return j < -2147483648L ? IntCompanionObject.MIN_VALUE : (int) j;
    }

    public static int c(byte b, byte b2, byte b3, byte b4) {
        return (b << 24) | ((b2 & UByte.MAX_VALUE) << 16) | ((b3 & UByte.MAX_VALUE) << 8) | (b4 & UByte.MAX_VALUE);
    }

    public static int[] d(AbstractCollection abstractCollection) {
        if (abstractCollection instanceof zzgww) {
            zzgww zzgwwVar = (zzgww) abstractCollection;
            return Arrays.copyOfRange(zzgwwVar.f8281c, zzgwwVar.f, zzgwwVar.g);
        }
        Object[] array = abstractCollection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            Object obj = array[i];
            obj.getClass();
            iArr[i] = ((Number) obj).intValue();
        }
        return iArr;
    }

    public static List e(int... iArr) {
        int length = iArr.length;
        if (length == 0) {
            return Collections.EMPTY_LIST;
        }
        return new zzgww(iArr, 0, length);
    }

    public static Integer f(String str) {
        byte b;
        Long valueOf;
        byte b2;
        str.getClass();
        if (!str.isEmpty()) {
            int i = 0;
            char charAt = str.charAt(0);
            if (charAt == '-') {
                i = 1;
            }
            if (i != str.length()) {
                int i2 = i + 1;
                char charAt2 = str.charAt(i);
                if (charAt2 < 128) {
                    b = zzgwz.f8282a[charAt2];
                } else {
                    byte[] bArr = zzgwz.f8282a;
                    b = -1;
                }
                if (b >= 0 && b < 10) {
                    long j = -b;
                    while (true) {
                        if (i2 < str.length()) {
                            int i3 = i2 + 1;
                            char charAt3 = str.charAt(i2);
                            if (charAt3 < 128) {
                                b2 = zzgwz.f8282a[charAt3];
                            } else {
                                byte[] bArr2 = zzgwz.f8282a;
                                b2 = -1;
                            }
                            if (b2 < 0 || b2 >= 10 || j < -922337203685477580L) {
                                break;
                            }
                            long j2 = j * 10;
                            long j3 = b2;
                            if (j2 < Long.MIN_VALUE + j3) {
                                break;
                            }
                            j = j2 - j3;
                            i2 = i3;
                        } else if (charAt == '-') {
                            valueOf = Long.valueOf(j);
                        } else if (j != Long.MIN_VALUE) {
                            valueOf = Long.valueOf(-j);
                        }
                    }
                }
            }
        }
        valueOf = null;
        if (valueOf == null || valueOf.longValue() != valueOf.intValue()) {
            return null;
        }
        return Integer.valueOf(valueOf.intValue());
    }
}
