package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzbfp;
import com.google.android.gms.internal.ads.zzccn;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzay {

    /* renamed from: a, reason: collision with root package name */
    public final String f3243a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final zzccn f3244c;

    public /* synthetic */ zzay(zzax zzaxVar) {
        this.f3243a = zzaxVar.f3241a;
        this.b = zzaxVar.b;
        this.f3244c = zzaxVar.f3242c;
    }

    public final Set zza() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.f3243a.toLowerCase(Locale.ROOT));
        return hashSet;
    }

    public final String zzb() {
        return this.f3243a.toLowerCase(Locale.ROOT);
    }

    public final zzbfp.zza.EnumC0010zza zzc() {
        String str = this.f3243a;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    return zzbfp.zza.EnumC0010zza.AD_LOADER;
                }
                break;
            case -1372958932:
                if (str.equals("INTERSTITIAL")) {
                    return zzbfp.zza.EnumC0010zza.INTERSTITIAL;
                }
                break;
            case 543046670:
                if (str.equals("REWARDED")) {
                    return zzbfp.zza.EnumC0010zza.REWARD_BASED_VIDEO_AD;
                }
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    return zzbfp.zza.EnumC0010zza.BANNER;
                }
                break;
        }
        return zzbfp.zza.EnumC0010zza.AD_INITIATER_UNSPECIFIED;
    }
}
