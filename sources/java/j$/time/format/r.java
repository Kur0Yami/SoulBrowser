package j$.time.format;

import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class r extends i {
    public final char g;
    public final int h;

    @Override // j$.time.format.i, j$.time.format.e
    public final int g(v vVar, CharSequence charSequence, int i) {
        return h(vVar.f21219a.b).g(vVar, charSequence, i);
    }

    @Override // j$.time.format.i, j$.time.format.e
    public final boolean d(y yVar, StringBuilder sb) {
        return h(yVar.b.b).d(yVar, sb);
    }

    public r(char c2, int i, int i2, int i3, int i4) {
        super(null, i2, i3, f0.NOT_NEGATIVE, i4);
        this.g = c2;
        this.h = i;
    }

    @Override // j$.time.format.i
    public final i e() {
        if (this.e == -1) {
            return this;
        }
        return new r(this.g, this.h, this.b, this.f21203c, -1);
    }

    @Override // j$.time.format.i
    public final i f(int i) {
        return new r(this.g, this.h, this.b, this.f21203c, this.e + i);
    }

    public final i h(Locale locale) {
        j$.time.temporal.w wVar;
        ConcurrentHashMap concurrentHashMap = j$.time.temporal.x.g;
        Objects.requireNonNull(locale, "locale");
        j$.time.temporal.x a2 = j$.time.temporal.x.a(j$.time.d.f21182a[((((int) ((r7.getFirstDayOfWeek() - 1) % 7)) + 7) + j$.time.d.SUNDAY.ordinal()) % 7], Calendar.getInstance(new Locale(locale.getLanguage(), locale.getCountry())).getMinimalDaysInFirstWeek());
        char c2 = this.g;
        if (c2 == 'W') {
            wVar = a2.d;
        } else {
            if (c2 == 'Y') {
                j$.time.temporal.w wVar2 = a2.f;
                int i = this.h;
                if (i == 2) {
                    return new o(wVar2, 2, 2, o.h, this.e);
                }
                return new i(wVar2, i, 19, i < 4 ? f0.NORMAL : f0.EXCEEDS_PAD, this.e);
            }
            if (c2 == 'c' || c2 == 'e') {
                wVar = a2.f21263c;
            } else if (c2 == 'w') {
                wVar = a2.e;
            } else {
                throw new IllegalStateException("unreachable");
            }
        }
        return new i(wVar, this.b, this.f21203c, f0.NOT_NEGATIVE, this.e);
    }

    @Override // j$.time.format.i
    public final String toString() {
        StringBuilder sb = new StringBuilder(30);
        sb.append("Localized(");
        int i = this.h;
        char c2 = this.g;
        if (c2 != 'Y') {
            if (c2 == 'W') {
                sb.append("WeekOfMonth");
            } else if (c2 == 'c' || c2 == 'e') {
                sb.append("DayOfWeek");
            } else if (c2 == 'w') {
                sb.append("WeekOfWeekBasedYear");
            }
            sb.append(",");
            sb.append(i);
        } else if (i == 1) {
            sb.append("WeekBasedYear");
        } else if (i == 2) {
            sb.append("ReducedValue(WeekBasedYear,2,2,2000-01-01)");
        } else {
            sb.append("WeekBasedYear,");
            sb.append(i);
            sb.append(",19,");
            sb.append(i < 4 ? f0.NORMAL : f0.EXCEEDS_PAD);
        }
        sb.append(")");
        return sb.toString();
    }
}
