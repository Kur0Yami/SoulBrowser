package com.google.android.gms.internal.drive;

/* loaded from: classes.dex */
final class zzni extends zznh {
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
    
        return r10 + r0;
     */
    @Override // com.google.android.gms.internal.drive.zznh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(java.lang.String r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.drive.zzni.a(java.lang.String, byte[], int, int):int");
    }

    @Override // com.google.android.gms.internal.drive.zznh
    public final int b(byte[] bArr, int i, int i2) {
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
                            return zznf.b(bArr, i3, i2);
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
                            return zznf.b(bArr, i3, i2);
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
