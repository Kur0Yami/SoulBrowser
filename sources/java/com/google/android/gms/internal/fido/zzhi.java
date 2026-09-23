package com.google.android.gms.internal.fido;

import android.support.v4.media.a;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzhi extends zzhp {

    /* renamed from: c, reason: collision with root package name */
    public final zzgx f10329c;

    public zzhi(zzgx zzgxVar) {
        this.f10329c = zzgxVar;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        zzhp zzhpVar = (zzhp) obj;
        int zza = zzhpVar.zza();
        int c2 = zzhp.c((byte) 64);
        if (c2 != zza) {
            return c2 - zzhpVar.zza();
        }
        zzgx zzgxVar = ((zzhi) zzhpVar).f10329c;
        zzgx zzgxVar2 = this.f10329c;
        byte[] bArr = ((zzgu) zzgxVar2).g;
        int length = bArr.length;
        byte[] bArr2 = ((zzgu) zzgxVar).g;
        if (length != bArr2.length) {
            return bArr.length - bArr2.length;
        }
        return zzgl.f10320a.compare(zzgxVar2.t(), zzgxVar.t());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzhi.class != obj.getClass()) {
            return false;
        }
        return this.f10329c.equals(((zzhi) obj).f10329c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zzhp.c((byte) 64)), this.f10329c});
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        zzgb zzgbVar;
        int i;
        boolean z;
        zzge zzgeVar = (zzge) zzgf.f10317a;
        zzgf zzgfVar = zzgeVar.d;
        if (zzgfVar == null) {
            zzgb zzgbVar2 = zzgeVar.b;
            char[] cArr = zzgbVar2.b;
            int i2 = 0;
            while (true) {
                if (i2 < cArr.length) {
                    char c2 = cArr[i2];
                    if (c2 >= 'a' && c2 <= 'z') {
                        int i3 = 0;
                        while (true) {
                            if (i3 < cArr.length) {
                                char c3 = cArr[i3];
                                if (c3 >= 'A' && c3 <= 'Z') {
                                    z = true;
                                    break;
                                }
                                i3++;
                            } else {
                                z = false;
                                break;
                            }
                        }
                        if (!z) {
                            char[] cArr2 = new char[cArr.length];
                            for (int i4 = 0; i4 < cArr.length; i4++) {
                                char c4 = cArr[i4];
                                if (c4 >= 97 && c4 <= 122) {
                                    c4 ^= 32;
                                }
                                cArr2[i4] = (char) c4;
                            }
                            zzgbVar = new zzgb(zzgbVar2.f10314a.concat(".upperCase()"), cArr2);
                            byte[] bArr = zzgbVar.g;
                            if (zzgbVar2.h && !zzgbVar.h) {
                                byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                                for (i = 65; i <= 90; i++) {
                                    int i5 = i | 32;
                                    byte b = bArr[i];
                                    byte b2 = bArr[i5];
                                    if (b == -1) {
                                        copyOf[i] = b2;
                                    } else {
                                        char c5 = (char) i;
                                        char c6 = (char) i5;
                                        if (b2 == -1) {
                                            copyOf[i5] = b;
                                        } else {
                                            throw new IllegalStateException(zzbo.a("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c5), Character.valueOf(c6)));
                                        }
                                    }
                                }
                                zzgbVar = new zzgb(zzgbVar.f10314a.concat(".ignoreCase()"), zzgbVar.b, copyOf, true);
                            }
                        } else {
                            throw new IllegalStateException("Cannot call upperCase() on a mixed-case alphabet");
                        }
                    } else {
                        i2++;
                    }
                } else {
                    zzgbVar = zzgbVar2;
                    break;
                }
            }
            if (zzgbVar == zzgbVar2) {
                zzgfVar = zzgeVar;
            } else {
                zzgfVar = zzgeVar.d(zzgbVar, zzgeVar.f10316c);
            }
            zzgeVar.d = zzgfVar;
        }
        byte[] t = this.f10329c.t();
        return a.l("h'", zzgfVar.c(t, t.length), "'");
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int zza() {
        return zzhp.c((byte) 64);
    }
}
