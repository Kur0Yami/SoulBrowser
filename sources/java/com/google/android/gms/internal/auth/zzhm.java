package com.google.android.gms.internal.auth;

/* loaded from: classes.dex */
final class zzhm extends zzhl {
    @Override // com.google.android.gms.internal.auth.zzhl
    public final int a(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] >= 0) {
            i++;
        }
        if (i < i2) {
            while (i < i2) {
                int i3 = i + 1;
                byte b = bArr[i];
                if (b < 0) {
                    if (b < -32) {
                        if (i3 >= i2) {
                            return b;
                        }
                        if (b >= -62) {
                            i += 2;
                            if (bArr[i3] > -65) {
                                return -1;
                            }
                        } else {
                            return -1;
                        }
                    } else if (b < -16) {
                        if (i3 >= i2 - 1) {
                            return zzhn.a(bArr, i3, i2);
                        }
                        int i4 = i + 2;
                        byte b2 = bArr[i3];
                        if (b2 <= -65) {
                            if (b != -32 || b2 >= -96) {
                                if (b != -19 || b2 < -96) {
                                    i += 3;
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
                        if (i3 >= i2 - 2) {
                            return zzhn.a(bArr, i3, i2);
                        }
                        int i5 = i + 2;
                        byte b3 = bArr[i3];
                        if (b3 <= -65) {
                            if ((((b3 + 112) + (b << 28)) >> 30) == 0) {
                                int i6 = i + 3;
                                if (bArr[i5] <= -65) {
                                    i += 4;
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
                    i = i3;
                }
            }
            return 0;
        }
        return 0;
    }
}
