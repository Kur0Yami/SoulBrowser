package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzbdk extends Thread {

    /* renamed from: c, reason: collision with root package name */
    public boolean f4572c;
    public boolean f;
    public final Object g;
    public final zzbdb h;
    public final int i;
    public final int j;
    public final int k;
    public final int l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public final String q;
    public final boolean r;
    public final boolean s;

    public zzbdk() {
        zzbdb zzbdbVar = new zzbdb();
        this.f4572c = false;
        this.f = false;
        this.h = zzbdbVar;
        this.g = new Object();
        this.j = ((Long) zzbib.d.c()).intValue();
        this.k = ((Long) zzbib.f4699a.c()).intValue();
        this.l = ((Long) zzbib.e.c()).intValue();
        this.m = ((Long) zzbib.f4700c.c()).intValue();
        this.n = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.A0)).intValue();
        this.o = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.B0)).intValue();
        this.p = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.C0)).intValue();
        this.i = ((Long) zzbib.f.c()).intValue();
        this.q = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.E0);
        this.r = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.F0)).booleanValue();
        this.s = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.G0)).booleanValue();
        ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.H0)).getClass();
        setName("ContentFetchTask");
    }

    public final void a() {
        synchronized (this.g) {
            try {
                if (this.f4572c) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzd("Content hash thread already started, quitting...");
                } else {
                    this.f4572c = true;
                    start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzbdj b(View view, zzbda zzbdaVar) {
        if (view == null) {
            return new zzbdj(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (!TextUtils.isEmpty(text)) {
                zzbdaVar.e(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
                return new zzbdj(this, 1, 0);
            }
            return new zzbdj(this, 0, 0);
        }
        if ((view instanceof WebView) && !(view instanceof zzcir)) {
            WebView webView = (WebView) view;
            synchronized (zzbdaVar.g) {
                zzbdaVar.m++;
            }
            webView.post(new zzbdi(this, zzbdaVar, webView, globalVisibleRect));
            return new zzbdj(this, 0, 1);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                zzbdj b = b(viewGroup.getChildAt(i3), zzbdaVar);
                i += b.f4571a;
                i2 += b.b;
            }
            return new zzbdj(this, i, i2);
        }
        return new zzbdj(this, 0, 0);
    }

    public final void c() {
        synchronized (this.g) {
            this.f = true;
            StringBuilder sb = new StringBuilder(40);
            sb.append("ContentFetchThread: paused, pause = true");
            String sb2 = sb.toString();
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd(sb2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0042, code lost:
    
        if (r3.importance != 100) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0048, code lost:
    
        if (r2.inKeyguardRestrictedInputMode() != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x004a, code lost:
    
        r0 = (android.os.PowerManager) r0.getSystemService("power");
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0052, code lost:
    
        if (r0 == null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0058, code lost:
    
        if (r0.isScreenOn() == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x005a, code lost:
    
        r0 = com.google.android.gms.ads.internal.zzt.zzg().d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0062, code lost:
    
        if (r0 != null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0064, code lost:
    
        r1 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd("ContentFetchThread: no activity. Sleeping.");
        c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0073, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0078, code lost:
    
        if (r0.getWindow() == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0082, code lost:
    
        if (r0.getWindow().getDecorView() == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0084, code lost:
    
        r1 = r0.getWindow().getDecorView().findViewById(android.R.id.content);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0094, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0095, code lost:
    
        com.google.android.gms.ads.internal.zzt.zzh().f("ContentFetchTask.extractContent", r0);
        r2 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Failed getting root view of activity. Content not extracted.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0071, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00de, code lost:
    
        r1 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzg("Error in ContentFetchTask", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x006f, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00cd, code lost:
    
        r1 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzg("Error in ContentFetchTask", r0);
        com.google.android.gms.ads.internal.zzt.zzh().f("ContentFetchTask.run", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00e8 A[EXC_TOP_SPLITTER, LOOP:1: B:9:0x00e8->B:16:0x00e8, LOOP_START, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbdk.run():void");
    }
}
