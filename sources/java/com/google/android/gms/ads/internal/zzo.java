package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbk;
import com.google.android.gms.internal.ads.zzfjm;

/* loaded from: classes.dex */
final class zzo extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzs f3176a;

    public zzo(zzs zzsVar) {
        this.f3176a = zzsVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        zzs zzsVar = this.f3176a;
        zzbk zzbkVar = zzsVar.j;
        if (zzbkVar != null) {
            try {
                zzbkVar.zzd(zzfjm.d(1, null, null));
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
        zzbk zzbkVar2 = zzsVar.j;
        if (zzbkVar2 != null) {
            try {
                zzbkVar2.zzc(0);
            } catch (RemoteException e2) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        zzs zzsVar = this.f3176a;
        String d5 = zzsVar.d5();
        Context context = zzsVar.g;
        int i = 0;
        if (str.startsWith(d5)) {
            return false;
        }
        if (str.startsWith("gmsg://noAdLoaded")) {
            zzbk zzbkVar = zzsVar.j;
            if (zzbkVar != null) {
                try {
                    zzbkVar.zzd(zzfjm.d(3, null, null));
                } catch (RemoteException e) {
                    int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                }
            }
            zzbk zzbkVar2 = zzsVar.j;
            if (zzbkVar2 != null) {
                try {
                    zzbkVar2.zzc(3);
                } catch (RemoteException e2) {
                    int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e2);
                }
            }
            zzsVar.c5(0);
            return true;
        }
        if (str.startsWith("gmsg://scriptLoadFailed")) {
            zzbk zzbkVar3 = zzsVar.j;
            if (zzbkVar3 != null) {
                try {
                    zzbkVar3.zzd(zzfjm.d(1, null, null));
                } catch (RemoteException e3) {
                    int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e3);
                }
            }
            zzbk zzbkVar4 = zzsVar.j;
            if (zzbkVar4 != null) {
                try {
                    zzbkVar4.zzc(0);
                } catch (RemoteException e4) {
                    int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e4);
                }
            }
            zzsVar.c5(0);
            return true;
        }
        if (str.startsWith("gmsg://adResized")) {
            zzbk zzbkVar5 = zzsVar.j;
            if (zzbkVar5 != null) {
                try {
                    zzbkVar5.zzf();
                } catch (RemoteException e5) {
                    int i6 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e5);
                }
            }
            String queryParameter = Uri.parse(str).getQueryParameter("height");
            if (!TextUtils.isEmpty(queryParameter)) {
                try {
                    zzbb.zza();
                    i = com.google.android.gms.ads.internal.util.client.zzf.zzC(context, Integer.parseInt(queryParameter));
                } catch (NumberFormatException unused) {
                }
            }
            zzsVar.c5(i);
            return true;
        }
        if (str.startsWith("gmsg://")) {
            return true;
        }
        zzbk zzbkVar6 = zzsVar.j;
        if (zzbkVar6 != null) {
            try {
                zzbkVar6.zzh();
                zzsVar.j.zze();
            } catch (RemoteException e6) {
                int i7 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e6);
            }
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        context.startActivity(intent);
        return true;
    }
}
