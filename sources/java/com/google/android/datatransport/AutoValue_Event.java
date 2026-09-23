package com.google.android.datatransport;

/* loaded from: classes.dex */
final class AutoValue_Event<T> extends Event<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f2752a;
    public final Object b;

    /* renamed from: c, reason: collision with root package name */
    public final Priority f2753c;

    public AutoValue_Event(Integer num, Object obj, Priority priority) {
        this.f2752a = num;
        if (obj != null) {
            this.b = obj;
            this.f2753c = priority;
            return;
        }
        throw new NullPointerException("Null payload");
    }

    @Override // com.google.android.datatransport.Event
    public final Integer a() {
        return this.f2752a;
    }

    @Override // com.google.android.datatransport.Event
    public final Object b() {
        return this.b;
    }

    @Override // com.google.android.datatransport.Event
    public final Priority c() {
        return this.f2753c;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Event) {
                Event event = (Event) obj;
                Integer num = this.f2752a;
                if (num == null) {
                    if (event.a() != null) {
                        return false;
                    }
                } else if (!num.equals(event.a())) {
                    return false;
                }
                if (this.b.equals(event.b()) && this.f2753c.equals(event.c())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        Integer num = this.f2752a;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.f2753c.hashCode();
    }

    public final String toString() {
        return "Event{code=" + this.f2752a + ", payload=" + this.b + ", priority=" + this.f2753c + "}";
    }
}
