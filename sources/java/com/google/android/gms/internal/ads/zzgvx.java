package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
import kotlin.UByte;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzgvx extends zzgvy {
    public final zzgvt d;
    public final Character e;
    public volatile zzgvy f;

    public zzgvx(zzgvt zzgvtVar, Character ch) {
        this.d = zzgvtVar;
        boolean z = true;
        if (ch != null) {
            byte[] bArr = zzgvtVar.g;
            if (bArr.length > 61 && bArr[61] != -1) {
                z = false;
            }
        }
        zzgqa.e("Padding character %s was already in alphabet", ch, z);
        this.e = ch;
    }

    @Override // com.google.android.gms.internal.ads.zzgvy
    public void a(StringBuilder sb, byte[] bArr, int i) {
        int i2 = 0;
        zzgqa.k(0, i, bArr.length);
        while (i2 < i) {
            int i3 = this.d.f;
            j(sb, bArr, i2, Math.min(i3, i - i2));
            i2 += i3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgvy
    public int b(byte[] bArr, CharSequence charSequence) {
        int i;
        CharSequence e = e(charSequence);
        int length = e.length();
        zzgvt zzgvtVar = this.d;
        boolean z = zzgvtVar.h[length % zzgvtVar.e];
        int i2 = zzgvtVar.d;
        if (z) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < e.length()) {
                long j = 0;
                int i5 = 0;
                int i6 = 0;
                while (true) {
                    i = zzgvtVar.e;
                    if (i5 >= i) {
                        break;
                    }
                    j <<= i2;
                    if (i3 + i5 < e.length()) {
                        j |= zzgvtVar.a(e.charAt(i6 + i3));
                        i6++;
                    }
                    i5++;
                }
                int i7 = zzgvtVar.f;
                int i8 = i6 * i2;
                int i9 = (i7 - 1) * 8;
                while (i9 >= (i7 * 8) - i8) {
                    bArr[i4] = (byte) ((j >>> i9) & 255);
                    i9 -= 8;
                    i4++;
                }
                i3 += i;
            }
            return i4;
        }
        int length2 = e.length();
        throw new IOException(androidx.work.impl.workers.a.r(length2, "Invalid input length ", new StringBuilder(String.valueOf(length2).length() + 21)));
    }

    @Override // com.google.android.gms.internal.ads.zzgvy
    public final int c(int i) {
        zzgvt zzgvtVar = this.d;
        int i2 = zzgvtVar.f;
        RoundingMode roundingMode = RoundingMode.CEILING;
        return zzgvtVar.e * zzgwq.a(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgvy
    public final int d(int i) {
        return (int) (((this.d.d * i) + 7) / 8);
    }

    @Override // com.google.android.gms.internal.ads.zzgvy
    public final CharSequence e(CharSequence charSequence) {
        charSequence.getClass();
        if (this.e == null) {
            return charSequence;
        }
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                break;
            }
        } while (charSequence.charAt(length) == '=');
        return charSequence.subSequence(0, length + 1);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzgvx) {
            zzgvx zzgvxVar = (zzgvx) obj;
            if (this.d.equals(zzgvxVar.d) && Objects.equals(this.e, zzgvxVar.e)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // com.google.android.gms.internal.ads.zzgvy
    public final zzgvy f() {
        zzgvt zzgvtVar;
        boolean z;
        zzgvy zzgvyVar = this.f;
        if (zzgvyVar == null) {
            zzgvt zzgvtVar2 = this.d;
            int i = 0;
            while (true) {
                char[] cArr = zzgvtVar2.b;
                int length = cArr.length;
                if (i < length) {
                    if (zzgpj.c(cArr[i])) {
                        int i2 = 0;
                        while (true) {
                            if (i2 < length) {
                                char c2 = cArr[i2];
                                if (c2 >= 'a' && c2 <= 'z') {
                                    z = true;
                                    break;
                                }
                                i2++;
                            } else {
                                z = false;
                                break;
                            }
                        }
                        zzgqa.g("Cannot call lowerCase() on a mixed-case alphabet", !z);
                        char[] cArr2 = new char[cArr.length];
                        for (int i3 = 0; i3 < cArr.length; i3++) {
                            char c3 = cArr[i3];
                            if (zzgpj.c(c3)) {
                                c3 ^= 32;
                            }
                            cArr2[i3] = (char) c3;
                        }
                        zzgvtVar = new zzgvt(zzgvtVar2.f8266a.concat(".lowerCase()"), cArr2);
                        if (zzgvtVar2.i && !zzgvtVar.i) {
                            byte[] bArr = zzgvtVar.g;
                            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                            for (int i4 = 65; i4 <= 90; i4++) {
                                int i5 = i4 | 32;
                                byte b = bArr[i4];
                                byte b2 = bArr[i5];
                                if (b == -1) {
                                    copyOf[i4] = b2;
                                } else {
                                    char c4 = (char) i4;
                                    char c5 = (char) i5;
                                    if (b2 == -1) {
                                        copyOf[i5] = b;
                                    } else {
                                        throw new IllegalStateException(zzgqr.b("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c4), Character.valueOf(c5)));
                                    }
                                }
                            }
                            zzgvtVar = new zzgvt(zzgvtVar.f8266a.concat(".ignoreCase()"), zzgvtVar.b, copyOf, true);
                        }
                    } else {
                        i++;
                    }
                } else {
                    zzgvtVar = zzgvtVar2;
                    break;
                }
            }
            if (zzgvtVar == zzgvtVar2) {
                zzgvyVar = this;
            } else {
                zzgvyVar = i(zzgvtVar, this.e);
            }
            this.f = zzgvyVar;
        }
        return zzgvyVar;
    }

    public final int hashCode() {
        return this.d.hashCode() ^ Objects.hashCode(this.e);
    }

    public zzgvy i(zzgvt zzgvtVar, Character ch) {
        return new zzgvx(zzgvtVar, ch);
    }

    public final void j(StringBuilder sb, byte[] bArr, int i, int i2) {
        boolean z;
        zzgqa.k(i, i + i2, bArr.length);
        zzgvt zzgvtVar = this.d;
        int i3 = zzgvtVar.f;
        int i4 = 0;
        if (i2 <= i3) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        long j = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            j = (j | (bArr[i + i5] & UByte.MAX_VALUE)) << 8;
        }
        int i6 = (i2 + 1) * 8;
        int i7 = zzgvtVar.d;
        while (i4 < i2 * 8) {
            sb.append(zzgvtVar.b[zzgvtVar.f8267c & ((int) (j >>> ((i6 - i7) - i4)))]);
            i4 += i7;
        }
        if (this.e != null) {
            while (i4 < i3 * 8) {
                sb.append('=');
                i4 += i7;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        zzgvt zzgvtVar = this.d;
        sb.append(zzgvtVar);
        if (8 % zzgvtVar.d != 0) {
            Character ch = this.e;
            if (ch == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(ch);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    public zzgvx(String str, String str2) {
        this(new zzgvt(str, str2.toCharArray()), (Character) '=');
    }
}
