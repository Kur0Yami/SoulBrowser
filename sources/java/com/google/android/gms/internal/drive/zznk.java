package com.google.android.gms.internal.drive;

import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
final class zznk extends zznh {
    public static int c(long j, byte[] bArr, int i, int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    byte a2 = zznd.a(bArr, j);
                    byte a3 = zznd.a(bArr, j + 1);
                    zznh zznhVar = zznf.f10262a;
                    if (i > -12 || a2 > -65 || a3 > -65) {
                        return -1;
                    }
                    return (a3 << 16) ^ ((a2 << 8) ^ i);
                }
                throw new AssertionError();
            }
            byte a4 = zznd.a(bArr, j);
            zznh zznhVar2 = zznf.f10262a;
            if (i > -12 || a4 > -65) {
                return -1;
            }
            return (a4 << 8) ^ i;
        }
        zznh zznhVar3 = zznf.f10262a;
        if (i > -12) {
            return -1;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.drive.zznh
    public final int a(String str, byte[] bArr, int i, int i2) {
        long j;
        long j2;
        long j3;
        int i3;
        char charAt;
        long j4 = i;
        long j5 = i2 + j4;
        int length = str.length();
        if (length <= i2 && bArr.length - i2 >= i) {
            int i4 = 0;
            while (true) {
                j = 1;
                if (i4 >= length || (charAt = str.charAt(i4)) >= 128) {
                    break;
                }
                zznd.e(bArr, j4, (byte) charAt);
                i4++;
                j4 = 1 + j4;
            }
            if (i4 == length) {
                return (int) j4;
            }
            while (i4 < length) {
                char charAt2 = str.charAt(i4);
                if (charAt2 < 128 && j4 < j5) {
                    zznd.e(bArr, j4, (byte) charAt2);
                    j3 = j5;
                    j2 = j;
                    j4 += j;
                } else if (charAt2 < 2048 && j4 <= j5 - 2) {
                    j2 = j;
                    long j6 = j4 + j2;
                    zznd.e(bArr, j4, (byte) ((charAt2 >>> 6) | 960));
                    j4 += 2;
                    zznd.e(bArr, j6, (byte) ((charAt2 & '?') | Uuid.SIZE_BITS));
                    j3 = j5;
                } else {
                    j2 = j;
                    if ((charAt2 >= 55296 && 57343 >= charAt2) || j4 > j5 - 3) {
                        j3 = j5;
                        if (j4 <= j3 - 4) {
                            int i5 = i4 + 1;
                            if (i5 != length) {
                                char charAt3 = str.charAt(i5);
                                if (Character.isSurrogatePair(charAt2, charAt3)) {
                                    int codePoint = Character.toCodePoint(charAt2, charAt3);
                                    zznd.e(bArr, j4, (byte) ((codePoint >>> 18) | 240));
                                    zznd.e(bArr, j4 + j2, (byte) (((codePoint >>> 12) & 63) | Uuid.SIZE_BITS));
                                    long j7 = j4 + 3;
                                    zznd.e(bArr, j4 + 2, (byte) (((codePoint >>> 6) & 63) | Uuid.SIZE_BITS));
                                    j4 += 4;
                                    zznd.e(bArr, j7, (byte) ((codePoint & 63) | Uuid.SIZE_BITS));
                                    i4 = i5;
                                } else {
                                    i4 = i5;
                                }
                            }
                            throw new zznj(i4 - 1, length);
                        }
                        if (55296 <= charAt2 && charAt2 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(charAt2, str.charAt(i3)))) {
                            throw new zznj(i4, length);
                        }
                        StringBuilder sb = new StringBuilder(46);
                        sb.append("Failed writing ");
                        sb.append(charAt2);
                        sb.append(" at index ");
                        sb.append(j4);
                        throw new ArrayIndexOutOfBoundsException(sb.toString());
                    }
                    zznd.e(bArr, j4, (byte) ((charAt2 >>> '\f') | 480));
                    j3 = j5;
                    long j8 = j4 + 2;
                    zznd.e(bArr, j4 + j2, (byte) (((charAt2 >>> 6) & 63) | Uuid.SIZE_BITS));
                    j4 += 3;
                    zznd.e(bArr, j8, (byte) ((charAt2 & '?') | Uuid.SIZE_BITS));
                }
                i4++;
                j = j2;
                j5 = j3;
            }
            return (int) j4;
        }
        char charAt4 = str.charAt(length - 1);
        StringBuilder sb2 = new StringBuilder(37);
        sb2.append("Failed writing ");
        sb2.append(charAt4);
        sb2.append(" at index ");
        sb2.append(i + i2);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    @Override // com.google.android.gms.internal.drive.zznh
    public final int b(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        byte b;
        long j;
        int i5 = 2;
        byte b2 = 0;
        if ((i | i2 | (bArr.length - i2)) >= 0) {
            long j2 = i;
            int i6 = (int) (i2 - j2);
            long j3 = 1;
            if (i6 < 16) {
                i3 = 0;
            } else {
                i3 = 0;
                long j4 = j2;
                while (true) {
                    if (i3 < i6) {
                        long j5 = j4 + 1;
                        if (zznd.a(bArr, j4) < 0) {
                            break;
                        }
                        i3++;
                        j4 = j5;
                    } else {
                        i3 = i6;
                        break;
                    }
                }
            }
            int i7 = i6 - i3;
            long j6 = j2 + i3;
            while (true) {
                byte b3 = b2;
                while (true) {
                    if (i7 <= 0) {
                        break;
                    }
                    long j7 = j6 + j3;
                    byte a2 = zznd.a(bArr, j6);
                    if (a2 >= 0) {
                        i7--;
                        b3 = a2;
                        j6 = j7;
                    } else {
                        b3 = a2;
                        j6 = j7;
                        break;
                    }
                }
                if (i7 == 0) {
                    return b2;
                }
                int i8 = i7 - 1;
                if (b3 < -32) {
                    if (i8 == 0) {
                        return b3;
                    }
                    i7 -= 2;
                    if (b3 >= -62) {
                        long j8 = j6 + j3;
                        if (zznd.a(bArr, j6) <= -65) {
                            j6 = j8;
                            i4 = i5;
                            b = b2;
                            j = j3;
                        } else {
                            return -1;
                        }
                    } else {
                        return -1;
                    }
                } else if (b3 < -16) {
                    if (i8 < i5) {
                        return c(j6, bArr, b3, i8);
                    }
                    i7 -= 3;
                    i4 = i5;
                    b = b2;
                    long j9 = j6 + j3;
                    byte a3 = zznd.a(bArr, j6);
                    if (a3 <= -65) {
                        j = j3;
                        if (b3 != -32 || a3 >= -96) {
                            if (b3 != -19 || a3 < -96) {
                                j6 += 2;
                                if (zznd.a(bArr, j9) > -65) {
                                    return -1;
                                }
                            } else {
                                return -1;
                            }
                        } else {
                            return -1;
                        }
                    } else {
                        return -1;
                    }
                } else {
                    i4 = i5;
                    b = b2;
                    j = j3;
                    if (i8 < 3) {
                        return c(j6, bArr, b3, i8);
                    }
                    i7 -= 4;
                    long j10 = j6 + j;
                    byte a4 = zznd.a(bArr, j6);
                    if (a4 <= -65 && (((a4 + 112) + (b3 << 28)) >> 30) == 0) {
                        long j11 = 2 + j6;
                        if (zznd.a(bArr, j10) <= -65) {
                            j6 += 3;
                            if (zznd.a(bArr, j11) > -65) {
                                return -1;
                            }
                        } else {
                            return -1;
                        }
                    } else {
                        return -1;
                    }
                }
                j3 = j;
                i5 = i4;
                b2 = b;
            }
        } else {
            throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
    }
}
