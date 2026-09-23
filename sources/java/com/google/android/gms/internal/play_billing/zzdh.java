package com.google.android.gms.internal.play_billing;

import android.support.v4.media.a;
import com.google.android.gms.internal.play_billing.zzcm;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
final class zzdh extends zzct {
    public zzdc l;
    public ScheduledFuture m;

    @Override // com.google.android.gms.internal.play_billing.zzcm
    public final String d() {
        zzdc zzdcVar = this.l;
        ScheduledFuture scheduledFuture = this.m;
        if (zzdcVar != null) {
            String l = a.l("inputFuture=[", zzdcVar.toString(), "]");
            if (scheduledFuture != null) {
                long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
                if (delay > 0) {
                    return l + ", remaining delay=[" + delay + " ms]";
                }
                return l;
            }
            return l;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzcm
    public final void e() {
        boolean z;
        zzdc zzdcVar = this.l;
        boolean z2 = this.f11470c instanceof zzcm.zza;
        boolean z3 = true;
        if (zzdcVar != null) {
            z = true;
        } else {
            z = false;
        }
        if (z2 & z) {
            Object obj = this.f11470c;
            if (!(obj instanceof zzcm.zza) || !((zzcm.zza) obj).f11465a) {
                z3 = false;
            }
            zzdcVar.cancel(z3);
        }
        ScheduledFuture scheduledFuture = this.m;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.l = null;
        this.m = null;
    }
}
