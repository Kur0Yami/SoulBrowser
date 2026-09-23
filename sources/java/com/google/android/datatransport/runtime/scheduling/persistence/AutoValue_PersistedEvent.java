package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;

/* loaded from: classes.dex */
final class AutoValue_PersistedEvent extends PersistedEvent {

    /* renamed from: a, reason: collision with root package name */
    public final long f2902a;
    public final TransportContext b;

    /* renamed from: c, reason: collision with root package name */
    public final EventInternal f2903c;

    public AutoValue_PersistedEvent(long j, TransportContext transportContext, EventInternal eventInternal) {
        this.f2902a = j;
        if (transportContext != null) {
            this.b = transportContext;
            if (eventInternal != null) {
                this.f2903c = eventInternal;
                return;
            }
            throw new NullPointerException("Null event");
        }
        throw new NullPointerException("Null transportContext");
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent
    public final EventInternal a() {
        return this.f2903c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent
    public final long b() {
        return this.f2902a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent
    public final TransportContext c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof PersistedEvent) {
                PersistedEvent persistedEvent = (PersistedEvent) obj;
                if (this.f2902a == persistedEvent.b() && this.b.equals(persistedEvent.c()) && this.f2903c.equals(persistedEvent.a())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        long j = this.f2902a;
        return ((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.f2903c.hashCode();
    }

    public final String toString() {
        return "PersistedEvent{id=" + this.f2902a + ", transportContext=" + this.b + ", event=" + this.f2903c + "}";
    }
}
