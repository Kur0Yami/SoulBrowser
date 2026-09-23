package com.google.android.gms.cast.internal;

import android.os.Build;
import android.util.Log;

/* loaded from: classes.dex */
public class zzq {

    /* renamed from: a, reason: collision with root package name */
    public final Logger f3627a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public zzas f3628c;

    public zzq(String str) {
        CastUtils.b(str);
        this.b = str;
        this.f3627a = new Logger("MediaControlChannel", null);
    }

    public final void a(long j, String str) {
        Object[] objArr = {str, null};
        Logger logger = this.f3627a;
        logger.getClass();
        String str2 = logger.f3604a;
        if (!Build.TYPE.equals("user") && logger.b && Log.isLoggable(str2, 2)) {
            Log.v(str2, logger.d("Sending text message: %s to: %s", objArr));
        }
        zzas zzasVar = this.f3628c;
        if (zzasVar == null) {
            Log.e(str2, logger.d("Attempt to send text message without a sink", new Object[0]));
        } else {
            zzasVar.a(j, this.b, str);
        }
    }

    public final long b() {
        zzas zzasVar = this.f3628c;
        if (zzasVar == null) {
            Logger logger = this.f3627a;
            Log.e(logger.f3604a, logger.d("Attempt to generate requestId without a sink", new Object[0]));
            return 0L;
        }
        return zzasVar.zzc();
    }
}
