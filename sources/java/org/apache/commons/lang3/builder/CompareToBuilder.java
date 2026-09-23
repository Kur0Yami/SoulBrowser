package org.apache.commons.lang3.builder;

/* loaded from: classes4.dex */
public class CompareToBuilder implements Builder<Integer> {

    /* renamed from: c, reason: collision with root package name */
    public int f22367c = 0;

    public final void a(Object obj, Object obj2) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (this.f22367c == 0 && obj != obj2) {
            int i9 = -1;
            if (obj == null) {
                this.f22367c = -1;
                return;
            }
            if (obj2 == null) {
                this.f22367c = 1;
                return;
            }
            if (obj.getClass().isArray()) {
                int i10 = 0;
                if (obj instanceof long[]) {
                    long[] jArr = (long[]) obj;
                    long[] jArr2 = (long[]) obj2;
                    if (this.f22367c == 0 && jArr != jArr2) {
                        if (jArr.length != jArr2.length) {
                            if (jArr.length >= jArr2.length) {
                                i9 = 1;
                            }
                            this.f22367c = i9;
                            return;
                        }
                        while (i10 < jArr.length && (i8 = this.f22367c) == 0) {
                            long j = jArr[i10];
                            long j2 = jArr2[i10];
                            if (i8 == 0) {
                                this.f22367c = Long.compare(j, j2);
                            }
                            i10++;
                        }
                        return;
                    }
                    return;
                }
                if (obj instanceof int[]) {
                    int[] iArr = (int[]) obj;
                    int[] iArr2 = (int[]) obj2;
                    if (this.f22367c == 0 && iArr != iArr2) {
                        if (iArr.length != iArr2.length) {
                            if (iArr.length >= iArr2.length) {
                                i9 = 1;
                            }
                            this.f22367c = i9;
                            return;
                        }
                        while (i10 < iArr.length && (i7 = this.f22367c) == 0) {
                            int i11 = iArr[i10];
                            int i12 = iArr2[i10];
                            if (i7 == 0) {
                                this.f22367c = Integer.compare(i11, i12);
                            }
                            i10++;
                        }
                        return;
                    }
                    return;
                }
                if (obj instanceof short[]) {
                    short[] sArr = (short[]) obj;
                    short[] sArr2 = (short[]) obj2;
                    if (this.f22367c == 0 && sArr != sArr2) {
                        if (sArr.length != sArr2.length) {
                            if (sArr.length >= sArr2.length) {
                                i9 = 1;
                            }
                            this.f22367c = i9;
                            return;
                        }
                        while (i10 < sArr.length && (i6 = this.f22367c) == 0) {
                            short s = sArr[i10];
                            short s2 = sArr2[i10];
                            if (i6 == 0) {
                                this.f22367c = Short.compare(s, s2);
                            }
                            i10++;
                        }
                        return;
                    }
                    return;
                }
                if (obj instanceof char[]) {
                    char[] cArr = (char[]) obj;
                    char[] cArr2 = (char[]) obj2;
                    if (this.f22367c == 0 && cArr != cArr2) {
                        if (cArr.length != cArr2.length) {
                            if (cArr.length >= cArr2.length) {
                                i9 = 1;
                            }
                            this.f22367c = i9;
                            return;
                        }
                        while (i10 < cArr.length && (i5 = this.f22367c) == 0) {
                            char c2 = cArr[i10];
                            char c3 = cArr2[i10];
                            if (i5 == 0) {
                                this.f22367c = Character.compare(c2, c3);
                            }
                            i10++;
                        }
                        return;
                    }
                    return;
                }
                if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    byte[] bArr2 = (byte[]) obj2;
                    if (this.f22367c == 0 && bArr != bArr2) {
                        if (bArr.length != bArr2.length) {
                            if (bArr.length >= bArr2.length) {
                                i9 = 1;
                            }
                            this.f22367c = i9;
                            return;
                        }
                        while (i10 < bArr.length && (i4 = this.f22367c) == 0) {
                            byte b = bArr[i10];
                            byte b2 = bArr2[i10];
                            if (i4 == 0) {
                                this.f22367c = Byte.compare(b, b2);
                            }
                            i10++;
                        }
                        return;
                    }
                    return;
                }
                if (obj instanceof double[]) {
                    double[] dArr = (double[]) obj;
                    double[] dArr2 = (double[]) obj2;
                    if (this.f22367c == 0 && dArr != dArr2) {
                        if (dArr.length != dArr2.length) {
                            if (dArr.length >= dArr2.length) {
                                i9 = 1;
                            }
                            this.f22367c = i9;
                            return;
                        }
                        while (i10 < dArr.length && (i3 = this.f22367c) == 0) {
                            double d = dArr[i10];
                            double d2 = dArr2[i10];
                            if (i3 == 0) {
                                this.f22367c = Double.compare(d, d2);
                            }
                            i10++;
                        }
                        return;
                    }
                    return;
                }
                if (obj instanceof float[]) {
                    float[] fArr = (float[]) obj;
                    float[] fArr2 = (float[]) obj2;
                    if (this.f22367c == 0 && fArr != fArr2) {
                        if (fArr.length != fArr2.length) {
                            if (fArr.length >= fArr2.length) {
                                i9 = 1;
                            }
                            this.f22367c = i9;
                            return;
                        }
                        while (i10 < fArr.length && (i2 = this.f22367c) == 0) {
                            float f = fArr[i10];
                            float f2 = fArr2[i10];
                            if (i2 == 0) {
                                this.f22367c = Float.compare(f, f2);
                            }
                            i10++;
                        }
                        return;
                    }
                    return;
                }
                if (obj instanceof boolean[]) {
                    boolean[] zArr = (boolean[]) obj;
                    boolean[] zArr2 = (boolean[]) obj2;
                    if (this.f22367c == 0 && zArr != zArr2) {
                        if (zArr.length != zArr2.length) {
                            if (zArr.length >= zArr2.length) {
                                i9 = 1;
                            }
                            this.f22367c = i9;
                            return;
                        }
                        while (i10 < zArr.length && (i = this.f22367c) == 0) {
                            boolean z = zArr[i10];
                            boolean z2 = zArr2[i10];
                            if (i == 0 && z != z2) {
                                if (z) {
                                    this.f22367c = 1;
                                } else {
                                    this.f22367c = -1;
                                }
                            }
                            i10++;
                        }
                        return;
                    }
                    return;
                }
                Object[] objArr = (Object[]) obj;
                Object[] objArr2 = (Object[]) obj2;
                if (this.f22367c == 0 && objArr != objArr2) {
                    if (objArr.length != objArr2.length) {
                        if (objArr.length >= objArr2.length) {
                            i9 = 1;
                        }
                        this.f22367c = i9;
                        return;
                    } else {
                        while (i10 < objArr.length && this.f22367c == 0) {
                            a(objArr[i10], objArr2[i10]);
                            i10++;
                        }
                        return;
                    }
                }
                return;
            }
            this.f22367c = ((Comparable) obj).compareTo(obj2);
        }
    }
}
