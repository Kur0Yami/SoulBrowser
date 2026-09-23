package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzi {
    public static final zzi h;

    /* renamed from: a, reason: collision with root package name */
    public final int f8902a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8903c;
    public final byte[] d;
    public final int e;
    public final int f;
    public int g;

    static {
        zzh zzhVar = new zzh();
        zzhVar.f8317a = 1;
        zzhVar.b = 2;
        zzhVar.f8318c = 3;
        h = zzhVar.a();
        zzh zzhVar2 = new zzh();
        zzhVar2.f8317a = 1;
        zzhVar2.b = 1;
        zzhVar2.f8318c = 2;
        zzhVar2.a();
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
    }

    public /* synthetic */ zzi(int i, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.f8902a = i;
        this.b = i2;
        this.f8903c = i3;
        this.d = bArr;
        this.e = i4;
        this.f = i5;
    }

    public static boolean a(zzi zziVar) {
        if (zziVar == null) {
            return true;
        }
        int i = zziVar.f8902a;
        if (i != -1 && i != 1 && i != 2) {
            return false;
        }
        int i2 = zziVar.b;
        if (i2 != -1 && i2 != 2) {
            return false;
        }
        int i3 = zziVar.f8903c;
        if ((i3 != -1 && i3 != 3) || zziVar.d != null) {
            return false;
        }
        int i4 = zziVar.f;
        if (i4 != -1 && i4 != 8) {
            return false;
        }
        int i5 = zziVar.e;
        return i5 == -1 || i5 == 8;
    }

    public static int b(int i) {
        if (i == 1) {
            return 1;
        }
        if (i != 9) {
            return (i == 4 || i == 5 || i == 6 || i == 7) ? 2 : -1;
        }
        return 6;
    }

    public static int c(int i) {
        if (i == 1) {
            return 3;
        }
        if (i == 4) {
            return 10;
        }
        if (i == 13) {
            return 2;
        }
        if (i == 16) {
            return 6;
        }
        if (i != 18) {
            return (i == 6 || i == 7) ? 3 : -1;
        }
        return 7;
    }

    public static String e(int i) {
        if (i != -1) {
            if (i != 6) {
                if (i != 1) {
                    if (i != 2) {
                        return androidx.work.impl.workers.a.r(i, "Undefined color space ", new StringBuilder(String.valueOf(i).length() + 22));
                    }
                    return "BT601";
                }
                return "BT709";
            }
            return "BT2020";
        }
        return "Unset color space";
    }

    public static String f(int i) {
        if (i != -1) {
            if (i != 10) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 6) {
                                if (i != 7) {
                                    return androidx.work.impl.workers.a.r(i, "Undefined color transfer ", new StringBuilder(String.valueOf(i).length() + 25));
                                }
                                return "HLG";
                            }
                            return "ST2084 PQ";
                        }
                        return "SDR SMPTE 170M";
                    }
                    return "sRGB";
                }
                return "Linear";
            }
            return "Gamma 2.2";
        }
        return "Unset color transfer";
    }

    public static String g(int i) {
        if (i != -1) {
            if (i != 1) {
                if (i != 2) {
                    return androidx.work.impl.workers.a.r(i, "Undefined color range ", new StringBuilder(String.valueOf(i).length() + 22));
                }
                return "Limited range";
            }
            return "Full range";
        }
        return "Unset color range";
    }

    public final boolean d() {
        return (this.f8902a == -1 || this.b == -1 || this.f8903c == -1) ? false : true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzi.class == obj.getClass()) {
            zzi zziVar = (zzi) obj;
            if (this.f8902a == zziVar.f8902a && this.b == zziVar.b && this.f8903c == zziVar.f8903c && Arrays.equals(this.d, zziVar.d) && this.e == zziVar.e && this.f == zziVar.f) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.g;
        if (i == 0) {
            int hashCode = ((((Arrays.hashCode(this.d) + ((((((this.f8902a + 527) * 31) + this.b) * 31) + this.f8903c) * 31)) * 31) + this.e) * 31) + this.f;
            this.g = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        String str;
        boolean z;
        String e = e(this.f8902a);
        String g = g(this.b);
        String f = f(this.f8903c);
        String str2 = "NA";
        int i = this.e;
        if (i == -1) {
            str = "NA";
        } else {
            str = android.support.v4.media.a.g(i, "bit Luma", new StringBuilder(String.valueOf(i).length() + 8));
        }
        int i2 = this.f;
        if (i2 != -1) {
            str2 = android.support.v4.media.a.g(i2, "bit Chroma", new StringBuilder(String.valueOf(i2).length() + 10));
        }
        if (this.d != null) {
            z = true;
        } else {
            z = false;
        }
        StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.d(androidx.work.impl.workers.a.d(androidx.work.impl.workers.a.d(androidx.work.impl.workers.a.d(e.length() + 12, 2, g) + f.length() + 2, 2, String.valueOf(z)), 2, str), 1, str2));
        sb.append("ColorInfo(");
        sb.append(e);
        sb.append(", ");
        sb.append(g);
        sb.append(", ");
        sb.append(f);
        sb.append(", ");
        sb.append(z);
        android.support.v4.media.a.z(sb, ", ", str, ", ", str2);
        sb.append(")");
        return sb.toString();
    }
}
