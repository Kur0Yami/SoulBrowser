package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig;

/* loaded from: classes.dex */
final class AutoValue_EventStoreConfig extends EventStoreConfig {
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2899c;
    public final int d;
    public final long e;
    public final int f;

    /* loaded from: classes.dex */
    public static final class Builder extends EventStoreConfig.Builder {

        /* renamed from: a, reason: collision with root package name */
        public Long f2900a;
        public Integer b;

        /* renamed from: c, reason: collision with root package name */
        public Integer f2901c;
        public Long d;
        public Integer e;
    }

    public AutoValue_EventStoreConfig(int i, int i2, int i3, long j, long j2) {
        this.b = j;
        this.f2899c = i;
        this.d = i2;
        this.e = j2;
        this.f = i3;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig
    public final int a() {
        return this.d;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig
    public final long b() {
        return this.e;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig
    public final int c() {
        return this.f2899c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig
    public final int d() {
        return this.f;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig
    public final long e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof EventStoreConfig) {
                EventStoreConfig eventStoreConfig = (EventStoreConfig) obj;
                if (this.b == eventStoreConfig.e() && this.f2899c == eventStoreConfig.c() && this.d == eventStoreConfig.a() && this.e == eventStoreConfig.b() && this.f == eventStoreConfig.d()) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        long j = this.b;
        int i = (((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f2899c) * 1000003) ^ this.d) * 1000003;
        long j2 = this.e;
        return ((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EventStoreConfig{maxStorageSizeInBytes=");
        sb.append(this.b);
        sb.append(", loadBatchSize=");
        sb.append(this.f2899c);
        sb.append(", criticalSectionEnterTimeoutMs=");
        sb.append(this.d);
        sb.append(", eventCleanUpAge=");
        sb.append(this.e);
        sb.append(", maxBlobByteSizePerRow=");
        return android.support.v4.media.a.g(this.f, "}", sb);
    }
}
