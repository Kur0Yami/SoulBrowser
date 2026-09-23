package com.google.android.gms.internal.fido;

import j$.util.Objects;
import java.math.RoundingMode;
import kotlin.UByte;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class zzge extends zzgf {
    public final zzgb b;

    /* renamed from: c, reason: collision with root package name */
    public final Character f10316c;
    public volatile zzgf d;

    public zzge(zzgb zzgbVar, Character ch) {
        this.b = zzgbVar;
        if (ch != null) {
            byte[] bArr = zzgbVar.g;
            if (bArr.length > 61 && bArr[61] != -1) {
                throw new IllegalArgumentException(zzbo.a("Padding character %s was already in alphabet", ch));
            }
        }
        this.f10316c = ch;
    }

    @Override // com.google.android.gms.internal.fido.zzgf
    public void a(StringBuilder sb, byte[] bArr, int i) {
        int i2 = 0;
        zzbm.b(0, i, bArr.length);
        while (i2 < i) {
            zzgb zzgbVar = this.b;
            e(sb, bArr, i2, Math.min(zzgbVar.f, i - i2));
            i2 += zzgbVar.f;
        }
    }

    @Override // com.google.android.gms.internal.fido.zzgf
    public final int b(int i) {
        zzgb zzgbVar = this.b;
        int i2 = zzgbVar.f;
        RoundingMode roundingMode = RoundingMode.CEILING;
        return zzgbVar.e * zzgh.a(i, i2);
    }

    public zzgf d(zzgb zzgbVar, Character ch) {
        return new zzge(zzgbVar, ch);
    }

    public final void e(StringBuilder sb, byte[] bArr, int i, int i2) {
        zzbm.b(i, i + i2, bArr.length);
        zzgb zzgbVar = this.b;
        int i3 = zzgbVar.f;
        int i4 = zzgbVar.d;
        if (i2 <= i3) {
            int i5 = 0;
            long j = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                j = (j | (bArr[i + i6] & UByte.MAX_VALUE)) << 8;
            }
            int i7 = (i2 + 1) * 8;
            while (i5 < i2 * 8) {
                sb.append(zzgbVar.b[((int) (j >>> ((i7 - i4) - i5))) & zzgbVar.f10315c]);
                i5 += i4;
            }
            if (this.f10316c != null) {
                while (i5 < zzgbVar.f * 8) {
                    sb.append('=');
                    i5 += i4;
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzge) {
            zzge zzgeVar = (zzge) obj;
            if (this.b.equals(zzgeVar.b) && Objects.equals(this.f10316c, zzgeVar.f10316c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() ^ Objects.hashCode(this.f10316c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        zzgb zzgbVar = this.b;
        sb.append(zzgbVar);
        if (8 % zzgbVar.d != 0) {
            Character ch = this.f10316c;
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

    public zzge(String str, String str2) {
        this(new zzgb(str, str2.toCharArray()), (Character) '=');
    }
}
