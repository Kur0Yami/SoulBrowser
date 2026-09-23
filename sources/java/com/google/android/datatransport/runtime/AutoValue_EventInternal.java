package com.google.android.datatransport.runtime;

import android.support.v4.media.a;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
final class AutoValue_EventInternal extends EventInternal {

    /* renamed from: a, reason: collision with root package name */
    public final String f2811a;
    public final Integer b;

    /* renamed from: c, reason: collision with root package name */
    public final EncodedPayload f2812c;
    public final long d;
    public final long e;
    public final Map f;

    /* loaded from: classes.dex */
    public static final class Builder extends EventInternal.Builder {

        /* renamed from: a, reason: collision with root package name */
        public String f2813a;
        public Integer b;

        /* renamed from: c, reason: collision with root package name */
        public EncodedPayload f2814c;
        public Long d;
        public Long e;
        public HashMap f;

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal b() {
            String str;
            if (this.f2813a == null) {
                str = " transportName";
            } else {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (this.f2814c == null) {
                str = str.concat(" encodedPayload");
            }
            if (this.d == null) {
                str = a.k(str, " eventMillis");
            }
            if (this.e == null) {
                str = a.k(str, " uptimeMillis");
            }
            if (this.f == null) {
                str = a.k(str, " autoMetadata");
            }
            if (str.isEmpty()) {
                return new AutoValue_EventInternal(this.f2813a, this.b, this.f2814c, this.d.longValue(), this.e.longValue(), this.f);
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final Map c() {
            HashMap hashMap = this.f;
            if (hashMap != null) {
                return hashMap;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder d(Integer num) {
            this.b = num;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder e(EncodedPayload encodedPayload) {
            if (encodedPayload != null) {
                this.f2814c = encodedPayload;
                return this;
            }
            throw new NullPointerException("Null encodedPayload");
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder f(long j) {
            this.d = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder g(String str) {
            if (str != null) {
                this.f2813a = str;
                return this;
            }
            throw new NullPointerException("Null transportName");
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder h(long j) {
            this.e = Long.valueOf(j);
            return this;
        }
    }

    public AutoValue_EventInternal(String str, Integer num, EncodedPayload encodedPayload, long j, long j2, HashMap hashMap) {
        this.f2811a = str;
        this.b = num;
        this.f2812c = encodedPayload;
        this.d = j;
        this.e = j2;
        this.f = hashMap;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final Map c() {
        return this.f;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final Integer d() {
        return this.b;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final EncodedPayload e() {
        return this.f2812c;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof EventInternal) {
                EventInternal eventInternal = (EventInternal) obj;
                if (this.f2811a.equals(eventInternal.h())) {
                    Integer num = this.b;
                    if (num == null) {
                        if (eventInternal.d() != null) {
                            return false;
                        }
                    } else if (!num.equals(eventInternal.d())) {
                        return false;
                    }
                    if (this.f2812c.equals(eventInternal.e()) && this.d == eventInternal.f() && this.e == eventInternal.i() && this.f.equals(eventInternal.c())) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final long f() {
        return this.d;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final String h() {
        return this.f2811a;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = (this.f2811a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.b;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int hashCode3 = (((hashCode2 ^ hashCode) * 1000003) ^ this.f2812c.hashCode()) * 1000003;
        long j = this.d;
        int i = (hashCode3 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.e;
        return ((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f.hashCode();
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final long i() {
        return this.e;
    }

    public final String toString() {
        return "EventInternal{transportName=" + this.f2811a + ", code=" + this.b + ", encodedPayload=" + this.f2812c + ", eventMillis=" + this.d + ", uptimeMillis=" + this.e + ", autoMetadata=" + this.f + "}";
    }
}
