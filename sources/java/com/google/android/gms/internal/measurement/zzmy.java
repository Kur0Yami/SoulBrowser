package com.google.android.gms.internal.measurement;

/* loaded from: classes3.dex */
final class zzmy extends zzmx {
    public final int a(byte[] bArr, int i) {
        int i2 = 0;
        while (i2 < i && bArr[i2] >= 0) {
            i2++;
        }
        if (i2 < i) {
            while (i2 < i) {
                int i3 = i2 + 1;
                byte b = bArr[i2];
                if (b < 0) {
                    if (b < -32) {
                        if (i3 < i) {
                            if (b >= -62) {
                                i2 += 2;
                                if (bArr[i3] > -65) {
                                    return -1;
                                }
                            } else {
                                return -1;
                            }
                        } else {
                            return b;
                        }
                    } else if (b < -16) {
                        if (i3 >= i - 1) {
                            return zzna.a(bArr, i3, i);
                        }
                        int i4 = i2 + 2;
                        byte b2 = bArr[i3];
                        if (b2 <= -65) {
                            if (b != -32 || b2 >= -96) {
                                if (b != -19 || b2 < -96) {
                                    i2 += 3;
                                    if (bArr[i4] > -65) {
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
                        if (i3 >= i - 2) {
                            return zzna.a(bArr, i3, i);
                        }
                        int i5 = i2 + 2;
                        byte b3 = bArr[i3];
                        if (b3 <= -65) {
                            if ((((b3 + 112) + (b << 28)) >> 30) == 0) {
                                int i6 = i2 + 3;
                                if (bArr[i5] <= -65) {
                                    i2 += 4;
                                    if (bArr[i6] > -65) {
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
                    }
                } else {
                    i2 = i3;
                }
            }
        }
        return 0;
    }
}
