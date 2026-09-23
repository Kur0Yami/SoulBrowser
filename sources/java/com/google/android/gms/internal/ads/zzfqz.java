package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.ClientApi;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzfqz {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7583a;
    public final VersionInfoParcel b;

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f7584c;
    public final zzfly d;
    public final ClientApi e = new ClientApi();
    public final zzfjg f;
    public final Clock g;
    public final zzfpp h;

    public zzfqz(Context context, VersionInfoParcel versionInfoParcel, ScheduledExecutorService scheduledExecutorService, zzfly zzflyVar, zzfjg zzfjgVar, Clock clock, zzfpp zzfppVar) {
        this.f7583a = context;
        this.b = versionInfoParcel;
        this.f7584c = scheduledExecutorService;
        this.d = zzflyVar;
        this.g = clock;
        this.f = zzfjgVar;
        this.h = zzfppVar;
    }

    public final zzfqy a(com.google.android.gms.ads.internal.client.zzft zzftVar, com.google.android.gms.ads.internal.client.zzce zzceVar) {
        AdFormat adFormat = AdFormat.getAdFormat(zzftVar.zzb);
        if (adFormat != null) {
            int ordinal = adFormat.ordinal();
            Context context = this.f7583a;
            VersionInfoParcel versionInfoParcel = this.b;
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 5) {
                        return null;
                    }
                    return new zzfqy(this.e, context, versionInfoParcel.clientJarVersion, this.f, zzftVar, zzceVar, this.f7584c, this.d, c(), this.g);
                }
                return new zzfqy(this.e, context, versionInfoParcel.clientJarVersion, this.f, zzftVar, zzceVar, this.f7584c, this.d, c(), this.g);
            }
            return new zzfqy(this.e, context, versionInfoParcel.clientJarVersion, this.f, zzftVar, zzceVar, this.f7584c, this.d, c(), this.g);
        }
        return null;
    }

    public final zzfqy b(String str, com.google.android.gms.ads.internal.client.zzft zzftVar, com.google.android.gms.ads.internal.client.zzch zzchVar) {
        AdFormat adFormat = AdFormat.getAdFormat(zzftVar.zzb);
        if (adFormat != null) {
            int ordinal = adFormat.ordinal();
            Context context = this.f7583a;
            VersionInfoParcel versionInfoParcel = this.b;
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 5) {
                        return null;
                    }
                    return new zzfqy(str, this.e, context, versionInfoParcel.clientJarVersion, this.f, zzftVar, zzchVar, this.f7584c, this.d, c(), this.g, this.h);
                }
                return new zzfqy(str, this.e, context, versionInfoParcel.clientJarVersion, this.f, zzftVar, zzchVar, this.f7584c, this.d, c(), this.g, this.h);
            }
            return new zzfqy(str, this.e, context, versionInfoParcel.clientJarVersion, this.f, zzftVar, zzchVar, this.f7584c, this.d, c(), this.g, this.h);
        }
        return null;
    }

    public final zzfpy c() {
        return new zzfpy(((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.G)).longValue(), ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.H)).longValue(), this.g);
    }
}
