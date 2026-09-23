package com.google.android.gms.internal.mlkit_code_scanner;

import android.content.Context;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes3.dex */
public final class zzoa {

    /* renamed from: a, reason: collision with root package name */
    public final TelemetryLoggingClient f10627a;
    public final AtomicLong b = new AtomicLong(-1);

    public zzoa(Context context) {
        this.f10627a = TelemetryLogging.getClient(context, TelemetryLoggingOptions.builder().setApi("mlkit:vision").build());
    }
}
