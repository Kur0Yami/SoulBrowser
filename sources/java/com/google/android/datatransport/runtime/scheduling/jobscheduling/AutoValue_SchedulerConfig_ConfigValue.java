package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Set;

/* loaded from: classes.dex */
final class AutoValue_SchedulerConfig_ConfigValue extends SchedulerConfig.ConfigValue {

    /* renamed from: a, reason: collision with root package name */
    public final long f2876a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f2877c;

    /* loaded from: classes.dex */
    public static final class Builder extends SchedulerConfig.ConfigValue.Builder {

        /* renamed from: a, reason: collision with root package name */
        public Long f2878a;
        public Long b;

        /* renamed from: c, reason: collision with root package name */
        public Set f2879c;

        public final SchedulerConfig.ConfigValue a() {
            String str;
            if (this.f2878a == null) {
                str = " delta";
            } else {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (this.b == null) {
                str = str.concat(" maxAllowedDelay");
            }
            if (this.f2879c == null) {
                str = android.support.v4.media.a.k(str, " flags");
            }
            if (str.isEmpty()) {
                return new AutoValue_SchedulerConfig_ConfigValue(this.f2878a.longValue(), this.b.longValue(), this.f2879c);
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }
    }

    public AutoValue_SchedulerConfig_ConfigValue(long j, long j2, Set set) {
        this.f2876a = j;
        this.b = j2;
        this.f2877c = set;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue
    public final long a() {
        return this.f2876a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue
    public final Set b() {
        return this.f2877c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue
    public final long c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof SchedulerConfig.ConfigValue) {
                SchedulerConfig.ConfigValue configValue = (SchedulerConfig.ConfigValue) obj;
                if (this.f2876a == configValue.a() && this.b == configValue.c() && this.f2877c.equals(configValue.b())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        long j = this.f2876a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        long j2 = this.b;
        return ((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f2877c.hashCode();
    }

    public final String toString() {
        return "ConfigValue{delta=" + this.f2876a + ", maxAllowedDelay=" + this.b + ", flags=" + this.f2877c + "}";
    }
}
