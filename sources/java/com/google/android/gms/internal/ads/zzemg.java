package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class zzemg implements zzejg {
    @Override // com.google.android.gms.internal.ads.zzejg
    public final ListenableFuture a(zzfic zzficVar, zzfhr zzfhrVar) {
        Bundle bundle;
        Bundle bundle2;
        JSONObject jSONObject = zzfhrVar.v;
        String optString = jSONObject.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        zzfik zzfikVar = zzficVar.f7383a.f7378a;
        zzfij zzfijVar = new zzfij();
        zzfijVar.o.f7376a = zzfikVar.p.f7377a;
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzfikVar.d;
        zzfijVar.f7388a = zzmVar;
        zzfijVar.b = zzfikVar.f;
        zzfijVar.w = zzfikVar.w;
        String str = zzfikVar.g;
        zzfijVar.f7389c = str;
        zzfijVar.d = zzfikVar.f7390a;
        zzfijVar.f = zzfikVar.h;
        zzfijVar.g = zzfikVar.i;
        zzfijVar.h = zzfikVar.j;
        zzfijVar.i = zzfikVar.k;
        AdManagerAdViewOptions adManagerAdViewOptions = zzfikVar.m;
        zzfijVar.j = adManagerAdViewOptions;
        if (adManagerAdViewOptions != null) {
            zzfijVar.e = adManagerAdViewOptions.getManualImpressionsEnabled();
        }
        PublisherAdViewOptions publisherAdViewOptions = zzfikVar.n;
        zzfijVar.k = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            zzfijVar.e = publisherAdViewOptions.zza();
            zzfijVar.l = publisherAdViewOptions.zzb();
        }
        zzfijVar.p = zzfikVar.q;
        zzfijVar.q = zzfikVar.r;
        zzfijVar.r = zzfikVar.f7391c;
        zzfijVar.s = zzfikVar.s;
        zzfijVar.t = zzfikVar.t;
        zzfijVar.u.set(zzfikVar.u.get());
        zzfijVar.f7389c = optString;
        zzfijVar.v = true;
        Bundle bundle3 = zzmVar.zzm;
        if (bundle3 == null) {
            bundle = new Bundle();
        } else {
            bundle = new Bundle(bundle3);
        }
        Bundle bundle4 = bundle.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle4 == null) {
            bundle2 = new Bundle();
        } else {
            bundle2 = new Bundle(bundle4);
        }
        bundle2.putInt("gw", 1);
        String optString2 = jSONObject.optString("mad_hac", null);
        if (optString2 != null) {
            bundle2.putString("mad_hac", optString2);
        }
        String optString3 = jSONObject.optString("adJson", null);
        if (optString3 != null) {
            bundle2.putString("_ad", optString3);
        }
        bundle2.putBoolean("_noRefresh", true);
        JSONObject jSONObject2 = zzfhrVar.D;
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = jSONObject2.optString(next, null);
            if (next != null) {
                bundle2.putString(next, optString4);
            }
        }
        bundle.putBundle("com.google.ads.mediation.admob.AdMobAdapter", bundle2);
        zzfijVar.f7388a = new com.google.android.gms.ads.internal.client.zzm(zzmVar.zza, zzmVar.zzb, bundle2, zzmVar.zzd, zzmVar.zze, zzmVar.zzf, zzmVar.zzg, zzmVar.zzh, zzmVar.zzi, zzmVar.zzj, zzmVar.zzk, zzmVar.zzl, bundle, zzmVar.zzn, zzmVar.zzo, zzmVar.zzp, zzmVar.zzq, zzmVar.zzr, zzmVar.zzs, zzmVar.zzt, zzmVar.zzu, zzmVar.zzv, zzmVar.zzw, zzmVar.zzx, zzmVar.zzy, zzmVar.zzz, zzmVar.zzA);
        zzfik a2 = zzfijVar.a();
        Bundle bundle5 = new Bundle();
        zzfhu zzfhuVar = zzficVar.b.b;
        Bundle bundle6 = new Bundle();
        bundle6.putStringArrayList("nofill_urls", new ArrayList<>(zzfhuVar.f7372a));
        bundle6.putInt("refresh_interval", zzfhuVar.f7373c);
        bundle6.putString("gws_query_id", zzfhuVar.b);
        bundle5.putBundle("parent_common_config", bundle6);
        Bundle bundle7 = new Bundle();
        bundle7.putString("initial_ad_unit_id", str);
        bundle7.putString("allocation_id", zzfhrVar.w);
        bundle7.putString("ad_source_name", zzfhrVar.F);
        bundle7.putStringArrayList("click_urls", new ArrayList<>(zzfhrVar.f7368c));
        bundle7.putStringArrayList("imp_urls", new ArrayList<>(zzfhrVar.d));
        bundle7.putStringArrayList("manual_tracking_urls", new ArrayList<>(zzfhrVar.p));
        bundle7.putStringArrayList("fill_urls", new ArrayList<>(zzfhrVar.m));
        bundle7.putStringArrayList("video_start_urls", new ArrayList<>(zzfhrVar.g));
        bundle7.putStringArrayList("video_reward_urls", new ArrayList<>(zzfhrVar.h));
        bundle7.putStringArrayList("video_complete_urls", new ArrayList<>(zzfhrVar.i));
        bundle7.putString("transaction_id", zzfhrVar.j);
        bundle7.putString("valid_from_timestamp", zzfhrVar.k);
        bundle7.putBoolean("is_closable_area_disabled", zzfhrVar.P);
        bundle7.putString("recursive_server_response_data", zzfhrVar.o0);
        bundle7.putBoolean("is_analytics_logging_enabled", zzfhrVar.W);
        zzbzy zzbzyVar = zzfhrVar.l;
        if (zzbzyVar != null) {
            Bundle bundle8 = new Bundle();
            bundle8.putInt("rb_amount", zzbzyVar.f);
            bundle8.putString("rb_type", zzbzyVar.f4991c);
            bundle7.putParcelableArray("rewards", new Bundle[]{bundle8});
        }
        bundle5.putBundle("parent_ad_config", bundle7);
        return c(a2, bundle5, zzfhrVar, zzficVar);
    }

    @Override // com.google.android.gms.internal.ads.zzejg
    public final boolean b(zzfic zzficVar, zzfhr zzfhrVar) {
        if (!TextUtils.isEmpty(zzfhrVar.v.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED))) {
            return true;
        }
        return false;
    }

    public abstract zzfmb c(zzfik zzfikVar, Bundle bundle, zzfhr zzfhrVar, zzfic zzficVar);
}
