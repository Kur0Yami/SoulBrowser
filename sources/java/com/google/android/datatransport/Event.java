package com.google.android.datatransport;

import com.google.android.gms.internal.cast.zzqr;
import com.google.auto.value.AutoValue;

@AutoValue
/* loaded from: classes.dex */
public abstract class Event<T> {
    public static Event d(int i, zzqr zzqrVar) {
        return new AutoValue_Event(Integer.valueOf(i), zzqrVar, Priority.f2755c);
    }

    public static Event e(Object obj) {
        return new AutoValue_Event(null, obj, Priority.f2755c);
    }

    public static Event f(int i, zzqr zzqrVar) {
        return new AutoValue_Event(Integer.valueOf(i), zzqrVar, Priority.f);
    }

    public static Event g(Object obj) {
        return new AutoValue_Event(null, obj, Priority.f);
    }

    public abstract Integer a();

    public abstract Object b();

    public abstract Priority c();
}
