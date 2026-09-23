package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzarg;
import com.google.android.gms.internal.ads.zzark;
import com.google.android.gms.internal.ads.zzarn;
import com.google.android.gms.internal.ads.zzarz;
import com.google.android.gms.internal.ads.zzasg;
import com.google.android.gms.internal.ads.zzasl;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbpl;
import com.google.android.gms.internal.ads.zzfwj;
import java.io.File;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzay extends zzarz {

    /* renamed from: c, reason: collision with root package name */
    public final Context f3118c;

    public zzay(Context context, zzasl zzaslVar) {
        super(zzaslVar);
        this.f3118c = context;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzasl, java.lang.Object] */
    public static zzarn zzb(Context context) {
        zzarn zzarnVar = new zzarn(new zzasg(new File(zzfwj.f7704a.a(context.getCacheDir(), "admob_volley"))), new zzay(context, new Object()));
        zzarnVar.a();
        return zzarnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzarz, com.google.android.gms.internal.ads.zzard
    public final zzarg zza(zzark zzarkVar) {
        if (zzarkVar.zza() == 0) {
            if (Pattern.matches((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.o5), zzarkVar.zzh())) {
                com.google.android.gms.ads.internal.client.zzbb.zza();
                Context context = this.f3118c;
                if (com.google.android.gms.ads.internal.util.client.zzf.zzx(context, 13400000)) {
                    zzarg zza = new zzbpl(context).zza(zzarkVar);
                    if (zza != null) {
                        zze.zza("Got gmscore asset response: ".concat(String.valueOf(zzarkVar.zzh())));
                        return zza;
                    }
                    zze.zza("Failed to get gmscore asset response: ".concat(String.valueOf(zzarkVar.zzh())));
                }
            }
        }
        return super.zza(zzarkVar);
    }
}
