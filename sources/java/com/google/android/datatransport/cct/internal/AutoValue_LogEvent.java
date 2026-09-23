package com.google.android.datatransport.cct.internal;

import android.support.v4.media.a;
import com.google.android.datatransport.cct.internal.LogEvent;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;

/* loaded from: classes.dex */
final class AutoValue_LogEvent extends LogEvent {

    /* renamed from: a, reason: collision with root package name */
    public final long f2784a;
    public final Integer b;

    /* renamed from: c, reason: collision with root package name */
    public final long f2785c;
    public final byte[] d;
    public final String e;
    public final long f;
    public final NetworkConnectionInfo g;

    /* loaded from: classes.dex */
    public static final class Builder extends LogEvent.Builder {

        /* renamed from: a, reason: collision with root package name */
        public Long f2786a;
        public Integer b;

        /* renamed from: c, reason: collision with root package name */
        public Long f2787c;
        public byte[] d;
        public String e;
        public Long f;
        public NetworkConnectionInfo g;

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public final LogEvent a() {
            String str;
            if (this.f2786a == null) {
                str = " eventTimeMs";
            } else {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (this.f2787c == null) {
                str = str.concat(" eventUptimeMs");
            }
            if (this.f == null) {
                str = a.k(str, " timezoneOffsetSeconds");
            }
            if (str.isEmpty()) {
                return new AutoValue_LogEvent(this.f2786a.longValue(), this.b, this.f2787c.longValue(), this.d, this.e, this.f.longValue(), this.g);
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public final LogEvent.Builder b(Integer num) {
            this.b = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public final LogEvent.Builder c(long j) {
            this.f2786a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public final LogEvent.Builder d(long j) {
            this.f2787c = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public final LogEvent.Builder e(NetworkConnectionInfo networkConnectionInfo) {
            this.g = networkConnectionInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public final LogEvent.Builder f(long j) {
            this.f = Long.valueOf(j);
            return this;
        }
    }

    public AutoValue_LogEvent(long j, Integer num, long j2, byte[] bArr, String str, long j3, NetworkConnectionInfo networkConnectionInfo) {
        this.f2784a = j;
        this.b = num;
        this.f2785c = j2;
        this.d = bArr;
        this.e = str;
        this.f = j3;
        this.g = networkConnectionInfo;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public final Integer a() {
        return this.b;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public final long b() {
        return this.f2784a;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public final long c() {
        return this.f2785c;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public final NetworkConnectionInfo d() {
        return this.g;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public final byte[] e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        byte[] e;
        if (obj != this) {
            if (obj instanceof LogEvent) {
                LogEvent logEvent = (LogEvent) obj;
                if (this.f2784a == logEvent.b()) {
                    Integer num = this.b;
                    if (num == null) {
                        if (logEvent.a() != null) {
                            return false;
                        }
                    } else if (!num.equals(logEvent.a())) {
                        return false;
                    }
                    if (this.f2785c == logEvent.c()) {
                        if (logEvent instanceof AutoValue_LogEvent) {
                            e = ((AutoValue_LogEvent) logEvent).d;
                        } else {
                            e = logEvent.e();
                        }
                        if (Arrays.equals(this.d, e)) {
                            String str = this.e;
                            if (str == null) {
                                if (logEvent.f() != null) {
                                    return false;
                                }
                            } else if (!str.equals(logEvent.f())) {
                                return false;
                            }
                            if (this.f == logEvent.g()) {
                                NetworkConnectionInfo networkConnectionInfo = this.g;
                                if (networkConnectionInfo == null) {
                                    if (logEvent.d() == null) {
                                        return true;
                                    }
                                    return false;
                                }
                                if (networkConnectionInfo.equals(logEvent.d())) {
                                    return true;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public final String f() {
        return this.e;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public final long g() {
        return this.f;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        long j = this.f2784a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        int i2 = 0;
        Integer num = this.b;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i3 = (i ^ hashCode) * 1000003;
        long j2 = this.f2785c;
        int hashCode3 = (((i3 ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.d)) * 1000003;
        String str = this.e;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i4 = (hashCode3 ^ hashCode2) * 1000003;
        long j3 = this.f;
        int i5 = (i4 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        NetworkConnectionInfo networkConnectionInfo = this.g;
        if (networkConnectionInfo != null) {
            i2 = networkConnectionInfo.hashCode();
        }
        return i5 ^ i2;
    }

    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.f2784a + ", eventCode=" + this.b + ", eventUptimeMs=" + this.f2785c + ", sourceExtension=" + Arrays.toString(this.d) + ", sourceExtensionJsonProto3=" + this.e + ", timezoneOffsetSeconds=" + this.f + ", networkConnectionInfo=" + this.g + "}";
    }
}
