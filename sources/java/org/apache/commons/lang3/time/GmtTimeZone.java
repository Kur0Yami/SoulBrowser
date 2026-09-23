package org.apache.commons.lang3.time;

import j$.time.ZoneId;
import j$.util.DesugarTimeZone;
import j$.util.Objects;
import j$.util.TimeZoneRetargetInterface;
import java.util.Date;
import java.util.TimeZone;

/* loaded from: classes4.dex */
final class GmtTimeZone extends TimeZone implements TimeZoneRetargetInterface {

    /* renamed from: c, reason: collision with root package name */
    public final int f22443c;
    public final String f;

    public GmtTimeZone(int i, int i2, boolean z) {
        char c2;
        if (i < 24) {
            if (i2 < 60) {
                int i3 = ((i * 60) + i2) * 60000;
                this.f22443c = z ? -i3 : i3;
                StringBuilder sb = new StringBuilder(9);
                sb.append("GMT");
                if (z) {
                    c2 = '-';
                } else {
                    c2 = '+';
                }
                sb.append(c2);
                sb.append((char) ((i / 10) + 48));
                sb.append((char) ((i % 10) + 48));
                sb.append(':');
                sb.append((char) ((i2 / 10) + 48));
                sb.append((char) ((i2 % 10) + 48));
                this.f = sb.toString();
                return;
            }
            throw new IllegalArgumentException(i2 + " minutes out of range");
        }
        throw new IllegalArgumentException(i + " hours out of range");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GmtTimeZone)) {
            return false;
        }
        GmtTimeZone gmtTimeZone = (GmtTimeZone) obj;
        if (this.f22443c == gmtTimeZone.f22443c && Objects.equals(this.f, gmtTimeZone.f)) {
            return true;
        }
        return false;
    }

    @Override // java.util.TimeZone
    public final String getID() {
        return this.f;
    }

    @Override // java.util.TimeZone
    public final int getOffset(int i, int i2, int i3, int i4, int i5, int i6) {
        return this.f22443c;
    }

    @Override // java.util.TimeZone
    public final int getRawOffset() {
        return this.f22443c;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f22443c), this.f);
    }

    @Override // java.util.TimeZone
    public final boolean inDaylightTime(Date date) {
        return false;
    }

    @Override // java.util.TimeZone
    public final void setRawOffset(int i) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        return "[GmtTimeZone id=\"" + this.f + "\",offset=" + this.f22443c + ']';
    }

    @Override // java.util.TimeZone, j$.util.TimeZoneRetargetInterface
    public /* synthetic */ ZoneId toZoneId() {
        return DesugarTimeZone.toZoneId(this);
    }

    @Override // java.util.TimeZone
    public final boolean useDaylightTime() {
        return false;
    }
}
