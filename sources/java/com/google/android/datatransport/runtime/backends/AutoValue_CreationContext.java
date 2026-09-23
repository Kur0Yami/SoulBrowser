package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import android.support.v4.media.a;
import com.google.android.datatransport.runtime.time.Clock;

/* loaded from: classes.dex */
final class AutoValue_CreationContext extends CreationContext {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2839a;
    public final Clock b;

    /* renamed from: c, reason: collision with root package name */
    public final Clock f2840c;
    public final String d;

    public AutoValue_CreationContext(Context context, Clock clock, Clock clock2, String str) {
        if (context != null) {
            this.f2839a = context;
            if (clock != null) {
                this.b = clock;
                if (clock2 != null) {
                    this.f2840c = clock2;
                    if (str != null) {
                        this.d = str;
                        return;
                    }
                    throw new NullPointerException("Null backendName");
                }
                throw new NullPointerException("Null monotonicClock");
            }
            throw new NullPointerException("Null wallClock");
        }
        throw new NullPointerException("Null applicationContext");
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    public final Context a() {
        return this.f2839a;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    public final String b() {
        return this.d;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    public final Clock c() {
        return this.f2840c;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    public final Clock d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof CreationContext) {
                CreationContext creationContext = (CreationContext) obj;
                if (this.f2839a.equals(creationContext.a()) && this.b.equals(creationContext.d()) && this.f2840c.equals(creationContext.c()) && this.d.equals(creationContext.b())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return ((((((this.f2839a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.f2840c.hashCode()) * 1000003) ^ this.d.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CreationContext{applicationContext=");
        sb.append(this.f2839a);
        sb.append(", wallClock=");
        sb.append(this.b);
        sb.append(", monotonicClock=");
        sb.append(this.f2840c);
        sb.append(", backendName=");
        return a.p(sb, this.d, "}");
    }
}
