package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.core.graphics.Insets;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzesj implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzr f6885a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f6886c;
    public final String d;
    public final float e;
    public final int f;
    public final int g;
    public final String h;
    public final int i;
    public final boolean j;
    public final Insets k;
    public final zzesg l;

    public zzesj(com.google.android.gms.ads.internal.client.zzr zzrVar, String str, boolean z, String str2, float f, int i, int i2, String str3, int i3, boolean z2, Insets insets, zzesg zzesgVar) {
        Preconditions.checkNotNull(zzrVar, "the adSize must not be null");
        this.f6885a = zzrVar;
        this.b = str;
        this.f6886c = z;
        this.d = str2;
        this.e = f;
        this.f = i;
        this.g = i2;
        this.h = str3;
        this.i = i3;
        this.j = z2;
        this.k = insets;
        this.l = zzesgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
        b(((zzczm) obj).b);
    }

    public final void b(Bundle bundle) {
        boolean z;
        boolean z2;
        com.google.android.gms.ads.internal.client.zzr zzrVar = this.f6885a;
        int i = zzrVar.zze;
        if (i == -1) {
            z = true;
        } else {
            z = false;
        }
        zzfiz.b(bundle, "smart_w", "full", z);
        int i2 = zzrVar.zzb;
        if (i2 == -2) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzfiz.b(bundle, "smart_h", "auto", z2);
        zzfiz.d(bundle, "ene", true, zzrVar.zzj);
        zzfiz.b(bundle, "rafmt", "102", zzrVar.zzm);
        zzfiz.b(bundle, "rafmt", "103", zzrVar.zzn);
        zzfiz.b(bundle, "rafmt", "105", zzrVar.zzo);
        zzfiz.d(bundle, "inline_adaptive_slot", true, this.j);
        zzfiz.d(bundle, "interscroller_slot", true, zzrVar.zzo);
        zzfiz.e("format", bundle, this.b);
        zzfiz.b(bundle, "fluid", "height", this.f6886c);
        zzfiz.b(bundle, "sz", this.d, !TextUtils.isEmpty(r6));
        bundle.putFloat("u_sd", this.e);
        bundle.putInt("sw", this.f);
        bundle.putInt("sh", this.g);
        String str = this.h;
        zzfiz.b(bundle, "sc", str, true ^ TextUtils.isEmpty(str));
        int i3 = this.i;
        if (i3 != -1) {
            bundle.putInt("u_mso", i3);
        }
        Insets insets = this.k;
        if (insets != null) {
            bundle.putInt("sam_t", insets.b);
            bundle.putInt("sam_b", insets.d);
            bundle.putInt("sam_l", insets.f681a);
            bundle.putInt("sam_r", insets.f682c);
        }
        zzesg zzesgVar = this.l;
        if (zzesgVar != null) {
            bundle.putInt("rc_tl", zzesgVar.f6880a);
            bundle.putInt("rc_tr", zzesgVar.b);
            bundle.putInt("rc_bl", zzesgVar.f6881c);
            bundle.putInt("rc_br", zzesgVar.d);
        }
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        com.google.android.gms.ads.internal.client.zzr[] zzrVarArr = zzrVar.zzg;
        if (zzrVarArr == null) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt("height", i2);
            bundle2.putInt("width", i);
            bundle2.putBoolean("is_fluid_height", zzrVar.zzi);
            arrayList.add(bundle2);
        } else {
            for (com.google.android.gms.ads.internal.client.zzr zzrVar2 : zzrVarArr) {
                Bundle bundle3 = new Bundle();
                bundle3.putBoolean("is_fluid_height", zzrVar2.zzi);
                bundle3.putInt("height", zzrVar2.zzb);
                bundle3.putInt("width", zzrVar2.zze);
                arrayList.add(bundle3);
            }
        }
        bundle.putParcelableArrayList("valid_ad_sizes", arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void zza(Object obj) {
        b(((zzczm) obj).f5627a);
    }
}
