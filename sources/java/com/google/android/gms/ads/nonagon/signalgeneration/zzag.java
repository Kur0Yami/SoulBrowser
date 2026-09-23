package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzgyj;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzag implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzau f3219a;

    public zzag(zzau zzauVar) {
        this.f3219a = zzauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final /* synthetic */ void a(Object obj) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Initialized webview successfully for SDKCore.");
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.bb)).booleanValue()) {
            Pair pair = new Pair("se", "query_g");
            Pair pair2 = new Pair("ad_format", AdFormat.BANNER.name());
            Pair pair3 = new Pair("rtype", Integer.toString(6));
            Pair pair4 = new Pair("scar", "true");
            zzau zzauVar = this.f3219a;
            zzaa.zze(zzauVar.o, null, "sgs", pair, pair2, pair3, pair4, new Pair("sgi_rn", Integer.toString(zzauVar.G.get())));
            zzauVar.F.set(true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        com.google.android.gms.ads.internal.zzt.zzh().f("SignalGeneratorImpl.initializeWebViewForSignalCollection", th);
        Pair pair = new Pair("sgf_reason", th.getMessage());
        Pair pair2 = new Pair("se", "query_g");
        Pair pair3 = new Pair("ad_format", AdFormat.BANNER.name());
        Pair pair4 = new Pair("rtype", Integer.toString(6));
        Pair pair5 = new Pair("scar", "true");
        zzau zzauVar = this.f3219a;
        zzaa.zze(zzauVar.o, null, "sgf", pair, pair2, pair3, pair4, pair5, new Pair("sgi_rn", Integer.toString(zzauVar.G.get())));
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to initialize webview for loading SDKCore. ", th);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.bb)).booleanValue() && !zzauVar.F.get() && zzauVar.G.getAndIncrement() < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.cb)).intValue()) {
            zzauVar.f5();
        }
    }
}
