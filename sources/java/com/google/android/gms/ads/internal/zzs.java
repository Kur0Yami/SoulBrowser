package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.client.zzbh;
import com.google.android.gms.ads.internal.client.zzbk;
import com.google.android.gms.ads.internal.client.zzbn;
import com.google.android.gms.ads.internal.client.zzbw;
import com.google.android.gms.ads.internal.client.zzcb;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.ads.internal.client.zzcs;
import com.google.android.gms.ads.internal.client.zzcv;
import com.google.android.gms.ads.internal.client.zzdt;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.client.zzed;
import com.google.android.gms.ads.internal.client.zzeh;
import com.google.android.gms.ads.internal.client.zzga;
import com.google.android.gms.ads.internal.client.zzx;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzac;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbeg;
import com.google.android.gms.internal.ads.zzbhf;
import com.google.android.gms.internal.ads.zzbhw;
import com.google.android.gms.internal.ads.zzbxh;
import com.google.android.gms.internal.ads.zzbxk;
import com.google.android.gms.internal.ads.zzbzs;
import java.util.TreeMap;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzs extends zzbw {

    /* renamed from: c, reason: collision with root package name */
    public final VersionInfoParcel f3180c;
    public final com.google.android.gms.ads.internal.client.zzr f;
    public final Context g;
    public final zzr h;
    public WebView i;
    public zzbk j;
    public AsyncTask k;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object, android.view.View$OnTouchListener] */
    public zzs(Context context, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, VersionInfoParcel versionInfoParcel) {
        this.g = context;
        this.f3180c = versionInfoParcel;
        this.f = zzrVar;
        this.i = new WebView(context);
        this.h = new zzr(context, str);
        c5(0);
        this.i.setVerticalScrollBarEnabled(false);
        this.i.getSettings().setJavaScriptEnabled(true);
        this.i.setWebViewClient(new zzo(this));
        this.i.setOnTouchListener(new Object());
    }

    public final void c5(int i) {
        if (this.i == null) {
            return;
        }
        this.i.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
    }

    public final String d5() {
        String str = this.h.e;
        if (true == TextUtils.isEmpty(str)) {
            str = "www.google.com";
        }
        String str2 = (String) zzbhw.d.c();
        return a.q(new StringBuilder(String.valueOf(str).length() + 8 + String.valueOf(str2).length()), "https://", str, str2);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zzA() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zzB() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzC(zzbzs zzbzsVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzD(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzE(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    @Nullable
    public final zzed zzF() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzG(zzga zzgaVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzH(zzeh zzehVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzI(zzx zzxVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzJ(zzbeg zzbegVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzK(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzP(zzdt zzdtVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzQ(com.google.android.gms.ads.internal.client.zzm zzmVar, zzbn zzbnVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzR(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzS(zzcv zzcvVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzT(long j) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final long zzU() {
        return 0L;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzY(zzcs zzcsVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final IObjectWrapper zzb() {
        Preconditions.checkMainThread("getAdFrame must be called on the main UI thread.");
        return new ObjectWrapper(this.i);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzc() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.k.cancel(true);
        this.i.destroy();
        this.i = null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zzd() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzdR(zzbk zzbkVar) {
        this.j = zzbkVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zze(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        Bundle bundle;
        Preconditions.checkNotNull(this.i, "This Search Ad has already been torn down");
        zzr zzrVar = this.h;
        TreeMap treeMap = zzrVar.f3179c;
        zzrVar.d = zzmVar.zzj.zza;
        Bundle bundle2 = zzmVar.zzm;
        if (bundle2 != null) {
            bundle = bundle2.getBundle(AdMobAdapter.class.getName());
        } else {
            bundle = null;
        }
        if (bundle != null) {
            String str = (String) zzbhw.f4694c.c();
            for (String str2 : bundle.keySet()) {
                if (str.equals(str2)) {
                    zzrVar.e = bundle.getString(str2);
                } else if (str2.startsWith("csa_")) {
                    treeMap.put(str2.substring(4), bundle.getString(str2));
                }
            }
            treeMap.put("SDKVersion", this.f3180c.afmaVersion);
            if (((Boolean) zzbhw.f4693a.c()).booleanValue()) {
                Bundle zzb = zzac.zzb(zzrVar.f3178a, (String) zzbhw.b.c());
                for (String str3 : zzb.keySet()) {
                    treeMap.put(str3, zzb.get(str3).toString());
                }
            }
        }
        this.k = new zzq(this).execute(new Void[0]);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzf() {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzg() {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzi(zzco zzcoVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzj(zzcb zzcbVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final Bundle zzk() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzl() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzm() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzr zzn() {
        return this.f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzo(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzp(zzbxh zzbxhVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzq(zzbxk zzbxkVar, String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    @Nullable
    public final String zzr() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    @Nullable
    public final String zzs() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    @Nullable
    public final zzea zzt() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final String zzu() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final zzco zzv() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final zzbk zzw() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzx(zzbhf zzbhfVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzy(zzbh zzbhVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzz(boolean z) {
    }
}
