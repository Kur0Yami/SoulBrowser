package j$.time.format;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;

/* loaded from: classes2.dex */
public final class f extends i {
    public final boolean g;

    @Override // j$.time.format.i
    public final boolean b(v vVar) {
        return vVar.f21220c && this.b == this.f21203c && !this.g;
    }

    @Override // j$.time.format.i, j$.time.format.e
    public final int g(v vVar, CharSequence charSequence, int i) {
        boolean z = vVar.f21220c;
        DateTimeFormatter dateTimeFormatter = vVar.f21219a;
        int i2 = (z || b(vVar)) ? this.b : 0;
        int i3 = (vVar.f21220c || b(vVar)) ? this.f21203c : 9;
        int length = charSequence.length();
        if (i != length) {
            if (this.g) {
                char charAt = charSequence.charAt(i);
                dateTimeFormatter.f21186c.getClass();
                if (charAt == '.') {
                    i++;
                } else if (i2 > 0) {
                    return ~i;
                }
            }
            int i4 = i;
            int i5 = i2 + i4;
            if (i5 > length) {
                return ~i4;
            }
            int min = Math.min(i3 + i4, length);
            int i6 = 0;
            int i7 = i4;
            while (true) {
                if (i7 >= min) {
                    break;
                }
                int i8 = i7 + 1;
                char charAt2 = charSequence.charAt(i7);
                dateTimeFormatter.f21186c.getClass();
                int i9 = charAt2 - '0';
                if (i9 < 0 || i9 > 9) {
                    i9 = -1;
                }
                if (i9 >= 0) {
                    i6 = (i6 * 10) + i9;
                    i7 = i8;
                } else if (i8 < i5) {
                    return ~i4;
                }
            }
            BigDecimal movePointLeft = new BigDecimal(i6).movePointLeft(i7 - i4);
            j$.time.temporal.v range = this.f21202a.range();
            BigDecimal valueOf = BigDecimal.valueOf(range.f21258a);
            return vVar.f(this.f21202a, movePointLeft.multiply(BigDecimal.valueOf(range.d).subtract(valueOf).add(BigDecimal.ONE)).setScale(0, RoundingMode.FLOOR).add(valueOf).longValueExact(), i4, i7);
        }
        if (i2 > 0) {
            return ~i;
        }
        return i;
    }

    public f(j$.time.temporal.r rVar, int i, int i2, boolean z) {
        this(rVar, i, i2, z, 0);
        Objects.requireNonNull(rVar, "field");
        j$.time.temporal.v range = rVar.range();
        if (range.f21258a != range.b || range.f21259c != range.d) {
            throw new IllegalArgumentException(j$.time.c.a("Field must have a fixed set of values: ", rVar));
        }
        if (i < 0 || i > 9) {
            throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i);
        }
        if (i2 < 1 || i2 > 9) {
            throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i2);
        }
        if (i2 >= i) {
            return;
        }
        throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
    }

    public f(j$.time.temporal.r rVar, int i, int i2, boolean z, int i3) {
        super(rVar, i, i2, f0.NOT_NEGATIVE, i3);
        this.g = z;
    }

    @Override // j$.time.format.i
    public final i e() {
        if (this.e == -1) {
            return this;
        }
        return new f(this.f21202a, this.b, this.f21203c, this.g, -1);
    }

    @Override // j$.time.format.i
    public final i f(int i) {
        return new f(this.f21202a, this.b, this.f21203c, this.g, this.e + i);
    }

    @Override // j$.time.format.i, j$.time.format.e
    public final boolean d(y yVar, StringBuilder sb) {
        j$.time.temporal.r rVar = this.f21202a;
        Long a2 = yVar.a(rVar);
        if (a2 == null) {
            return false;
        }
        c0 c0Var = yVar.b.f21186c;
        long longValue = a2.longValue();
        j$.time.temporal.v range = rVar.range();
        range.b(longValue, rVar);
        BigDecimal valueOf = BigDecimal.valueOf(range.f21258a);
        BigDecimal add = BigDecimal.valueOf(range.d).subtract(valueOf).add(BigDecimal.ONE);
        BigDecimal subtract = BigDecimal.valueOf(longValue).subtract(valueOf);
        RoundingMode roundingMode = RoundingMode.FLOOR;
        BigDecimal divide = subtract.divide(add, 9, roundingMode);
        BigDecimal bigDecimal = BigDecimal.ZERO;
        if (divide.compareTo(bigDecimal) != 0) {
            bigDecimal = divide.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : divide.stripTrailingZeros();
        }
        int scale = bigDecimal.scale();
        boolean z = this.g;
        int i = this.b;
        if (scale != 0) {
            String substring = bigDecimal.setScale(Math.min(Math.max(bigDecimal.scale(), i), this.f21203c), roundingMode).toPlainString().substring(2);
            c0Var.getClass();
            if (z) {
                sb.append('.');
            }
            sb.append(substring);
            return true;
        }
        if (i > 0) {
            if (z) {
                c0Var.getClass();
                sb.append('.');
            }
            for (int i2 = 0; i2 < i; i2++) {
                c0Var.getClass();
                sb.append('0');
            }
        }
        return true;
    }

    @Override // j$.time.format.i
    public final String toString() {
        return "Fraction(" + this.f21202a + "," + this.b + "," + this.f21203c + (this.g ? ",DecimalPoint" : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED) + ")";
    }
}
