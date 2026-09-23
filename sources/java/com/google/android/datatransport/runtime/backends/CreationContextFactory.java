package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.time.Clock;

/* loaded from: classes.dex */
class CreationContextFactory {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2842a;
    public final Clock b;

    /* renamed from: c, reason: collision with root package name */
    public final Clock f2843c;

    public CreationContextFactory(Context context, Clock clock, Clock clock2) {
        this.f2842a = context;
        this.b = clock;
        this.f2843c = clock2;
    }
}
