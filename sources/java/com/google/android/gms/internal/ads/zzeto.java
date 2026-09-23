package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzeto implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6924a;
    public final Bundle b;

    /* renamed from: c, reason: collision with root package name */
    public final String f6925c;
    public final String d;
    public final com.google.android.gms.ads.internal.util.zzg e;
    public final String f;
    public final zzcxo g;

    public zzeto(Context context, Bundle bundle, String str, String str2, com.google.android.gms.ads.internal.util.zzj zzjVar, String str3, zzcxo zzcxoVar) {
        this.f6924a = context;
        this.b = bundle;
        this.f6925c = str;
        this.d = str2;
        this.e = zzjVar;
        this.f = str3;
        this.g = zzcxoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = ((zzczm) obj).b;
        bundle.putBundle("quality_signals", this.b);
        b(bundle);
    }

    public final void b(Bundle bundle) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z6)).booleanValue()) {
            try {
                com.google.android.gms.ads.internal.zzt.zzc();
                bundle.putString("_app_id", com.google.android.gms.ads.internal.util.zzs.zzt(this.f6924a));
            } catch (RemoteException | RuntimeException e) {
                com.google.android.gms.ads.internal.zzt.zzh().f("AppStatsSignal_AppId", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final void zza(Object obj) {
        long longValue;
        int intValue;
        Bundle bundle = ((zzczm) obj).f5627a;
        bundle.putBundle("quality_signals", this.b);
        bundle.putString("seq_num", this.f6925c);
        if (!this.e.zzx()) {
            bundle.putString("session_id", this.d);
        }
        bundle.putBoolean("client_purpose_one", !r0.zzx());
        b(bundle);
        String str = this.f;
        if (str != null) {
            Bundle bundle2 = new Bundle();
            zzcxo zzcxoVar = this.g;
            Long l = (Long) zzcxoVar.d.get(str);
            if (l == null) {
                longValue = -1;
            } else {
                longValue = l.longValue();
            }
            bundle2.putLong("dload", longValue);
            Integer num = (Integer) zzcxoVar.b.get(str);
            if (num == null) {
                intValue = 0;
            } else {
                intValue = num.intValue();
            }
            bundle2.putInt("pcc", intValue);
            bundle.putBundle("ad_unit_quality_signals", bundle2);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.db)).booleanValue() && com.google.android.gms.ads.internal.zzt.zzh().l.get() > 0) {
            bundle.putInt("nrwv", com.google.android.gms.ads.internal.zzt.zzh().l.get());
        }
    }
}
