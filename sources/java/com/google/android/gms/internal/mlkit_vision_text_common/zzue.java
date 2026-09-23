package com.google.android.gms.internal.mlkit_vision_text_common;

import android.content.Context;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes3.dex */
public final class zzue {

    /* renamed from: a, reason: collision with root package name */
    public final TelemetryLoggingClient f11424a;
    public final AtomicLong b = new AtomicLong(-1);

    public zzue(Context context) {
        this.f11424a = TelemetryLogging.getClient(context, TelemetryLoggingOptions.builder().setApi("mlkit:vision").build());
    }
}
