package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.time.Clock;
import java.util.Map;

/* loaded from: classes.dex */
final class AutoValue_SchedulerConfig extends SchedulerConfig {

    /* renamed from: a, reason: collision with root package name */
    public final Clock f2875a;
    public final Map b;

    public AutoValue_SchedulerConfig(Clock clock, Map map) {
        if (clock != null) {
            this.f2875a = clock;
            if (map != null) {
                this.b = map;
                return;
            }
            throw new NullPointerException("Null values");
        }
        throw new NullPointerException("Null clock");
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    public final Clock a() {
        return this.f2875a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    public final Map d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof SchedulerConfig) {
                SchedulerConfig schedulerConfig = (SchedulerConfig) obj;
                if (this.f2875a.equals(schedulerConfig.a()) && this.b.equals(schedulerConfig.d())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return ((this.f2875a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public final String toString() {
        return "SchedulerConfig{clock=" + this.f2875a + ", values=" + this.b + "}";
    }
}
