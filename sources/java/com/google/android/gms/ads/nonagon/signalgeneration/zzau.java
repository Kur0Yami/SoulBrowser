package com.google.android.gms.ads.nonagon.signalgeneration;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsSession;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzayl;
import com.google.android.gms.internal.ads.zzayq;
import com.google.android.gms.internal.ads.zzayr;
import com.google.android.gms.internal.ads.zzbgb;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbhm;
import com.google.android.gms.internal.ads.zzbhp;
import com.google.android.gms.internal.ads.zzbid;
import com.google.android.gms.internal.ads.zzbip;
import com.google.android.gms.internal.ads.zzbxn;
import com.google.android.gms.internal.ads.zzbxq;
import com.google.android.gms.internal.ads.zzccg;
import com.google.android.gms.internal.ads.zzcci;
import com.google.android.gms.internal.ads.zzccn;
import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzclg;
import com.google.android.gms.internal.ads.zzdsp;
import com.google.android.gms.internal.ads.zzdxj;
import com.google.android.gms.internal.ads.zzfio;
import com.google.android.gms.internal.ads.zzfjj;
import com.google.android.gms.internal.ads.zzfne;
import com.google.android.gms.internal.ads.zzfno;
import com.google.android.gms.internal.ads.zzfnr;
import com.google.android.gms.internal.ads.zzfpi;
import com.google.android.gms.internal.ads.zzgpr;
import com.google.android.gms.internal.ads.zzgqr;
import com.google.android.gms.internal.ads.zzgxf;
import com.google.android.gms.internal.ads.zzgxi;
import com.google.android.gms.internal.ads.zzgxt;
import com.google.android.gms.internal.ads.zzgxu;
import com.google.android.gms.internal.ads.zzgye;
import com.google.android.gms.internal.ads.zzgym;
import com.google.android.gms.internal.ads.zzgyw;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzau extends zzcci {
    public static final ArrayList K = new ArrayList(Arrays.asList("/aclk", "/pcs/click", "/dbm/clk"));
    public static final ArrayList L = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));
    public static final ArrayList M = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion", "/dbm/ad"));
    public static final ArrayList N = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));
    public static final /* synthetic */ int zze = 0;
    public final ArrayList A;
    public final ArrayList B;
    public final ArrayList C;
    public final ArrayList D;
    public final AtomicBoolean E;
    public final AtomicBoolean F;
    public final AtomicInteger G;
    public final zzbhp H;
    public final zzo I;
    public final zzf J;

    /* renamed from: c, reason: collision with root package name */
    public final zzclg f3237c;
    public Context f;
    public final zzayq g;
    public final zzfio h;
    public final zzfjj i;
    public final zzgyw j;
    public final ScheduledExecutorService k;
    public zzbxq l;
    public Point m;
    public Point n;
    public final zzdxj o;
    public final zzfpi p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public final String u;
    public final String v;
    public final AtomicInteger w;
    public final VersionInfoParcel x;
    public String y;
    public final String z;

    public zzau(zzclg zzclgVar, Context context, zzayq zzayqVar, zzfjj zzfjjVar, zzgyw zzgywVar, ScheduledExecutorService scheduledExecutorService, zzdxj zzdxjVar, zzfpi zzfpiVar, VersionInfoParcel versionInfoParcel, zzbhp zzbhpVar, zzfio zzfioVar, zzo zzoVar, zzf zzfVar) {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
        ArrayList arrayList;
        this.m = new Point();
        this.n = new Point();
        this.w = new AtomicInteger(0);
        this.E = new AtomicBoolean(false);
        this.F = new AtomicBoolean(false);
        this.G = new AtomicInteger(0);
        this.f3237c = zzclgVar;
        this.f = context;
        this.g = zzayqVar;
        this.h = zzfioVar;
        this.i = zzfjjVar;
        this.j = zzgywVar;
        this.k = scheduledExecutorService;
        this.o = zzdxjVar;
        this.p = zzfpiVar;
        this.x = versionInfoParcel;
        this.H = zzbhpVar;
        this.q = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.d8)).booleanValue();
        this.r = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.c8)).booleanValue();
        this.s = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.f8)).booleanValue();
        this.t = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h8)).booleanValue();
        this.u = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.g8);
        this.v = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.i8);
        this.z = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.j8);
        this.I = zzoVar;
        this.J = zzfVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.k8)).booleanValue()) {
            this.A = k5((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.l8));
            this.B = k5((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.m8));
            this.C = k5((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.n8));
            arrayList = k5((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.o8));
        } else {
            this.A = K;
            this.B = L;
            this.C = M;
            arrayList = N;
        }
        this.D = arrayList;
    }

    public static boolean g5(Uri uri, List list, List list2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (host != null && path != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (path.contains((String) it.next())) {
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        if (host.endsWith((String) it2.next())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final Uri j5(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl=");
        if (indexOf == -1) {
            indexOf = uri2.indexOf("?adurl=");
        }
        if (indexOf != -1) {
            int i = indexOf + 1;
            StringBuilder sb = new StringBuilder(uri2.substring(0, i));
            a.z(sb, str, "=", str2, "&");
            sb.append(uri2.substring(i));
            return Uri.parse(sb.toString());
        }
        return uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    public static final ArrayList k5(String str) {
        String[] split2 = TextUtils.split(str, ",");
        ArrayList arrayList = new ArrayList();
        for (String str2 : split2) {
            if (!zzgqr.a(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    public static /* synthetic */ zzfno l5(ListenableFuture listenableFuture, zzccn zzccnVar) {
        String str;
        if (zzfnr.a() && ((Boolean) zzbid.e.c()).booleanValue()) {
            try {
                zzfno zzb = ((zzac) zzgym.l(listenableFuture)).zzb();
                zzb.b(new ArrayList(Collections.singletonList(zzccnVar.f)));
                com.google.android.gms.ads.internal.client.zzm zzmVar = zzccnVar.h;
                if (zzmVar == null) {
                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                } else {
                    str = zzmVar.zzp;
                }
                zzb.c(str);
                zzb.d(zzmVar.zzm);
                return zzb;
            } catch (ExecutionException e) {
                com.google.android.gms.ads.internal.zzt.zzh().f("SignalGeneratorImpl.getConfiguredCriticalUserJourney", e);
            }
        }
        return null;
    }

    public final void c5(final List list, final IObjectWrapper iObjectWrapper, zzbxn zzbxnVar, boolean z) {
        Map map;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.A8)).booleanValue()) {
            try {
                zzbxnVar.zzf("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
                return;
            }
        }
        Callable callable = new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzai
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String str;
                zzau zzauVar = zzau.this;
                zzayl zzaylVar = zzauVar.g.b;
                if (zzaylVar != null) {
                    str = zzaylVar.zzj(zzauVar.f, (View) ObjectWrapper.f2(iObjectWrapper), null);
                } else {
                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                if (!TextUtils.isEmpty(str)) {
                    ArrayList arrayList = new ArrayList();
                    for (Uri uri : list) {
                        if (!zzau.g5(uri, zzauVar.C, zzauVar.D)) {
                            String valueOf = String.valueOf(uri);
                            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzi("Not a Google URL: ".concat(valueOf));
                            arrayList.add(uri);
                        } else {
                            arrayList.add(zzau.j5(uri, "ms", str));
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        return arrayList;
                    }
                    throw new Exception("Empty impression URLs result.");
                }
                throw new Exception("Failed to get view signals.");
            }
        };
        zzgyw zzgywVar = this.j;
        ListenableFuture v0 = zzgywVar.v0(callable);
        zzbxq zzbxqVar = this.l;
        if (zzbxqVar != null && (map = zzbxqVar.f) != null && !map.isEmpty()) {
            v0 = zzgym.h(v0, new zzgxu() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzak
                @Override // com.google.android.gms.internal.ads.zzgxu
                public final /* synthetic */ ListenableFuture zza(Object obj) {
                    final ArrayList arrayList = (ArrayList) obj;
                    final zzau zzauVar = zzau.this;
                    return zzgym.i(zzauVar.i5("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new zzgpr() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzao
                        @Override // com.google.android.gms.internal.ads.zzgpr
                        public final Object apply(Object obj2) {
                            String str = (String) obj2;
                            ArrayList arrayList2 = new ArrayList();
                            for (Uri uri : arrayList) {
                                zzau zzauVar2 = zzau.this;
                                if (zzau.g5(uri, zzauVar2.C, zzauVar2.D) && !TextUtils.isEmpty(str)) {
                                    arrayList2.add(zzau.j5(uri, "nas", str));
                                } else {
                                    arrayList2.add(uri);
                                }
                            }
                            return arrayList2;
                        }
                    }, zzauVar.j);
                }
            }, zzgywVar);
        } else {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Asset view map is empty.");
        }
        zzgym.k(v0, new zzae(this, zzbxnVar, z), this.f3237c.f());
    }

    public final void d5(List list, final IObjectWrapper iObjectWrapper, zzbxn zzbxnVar, boolean z) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ListenableFuture listenableFuture;
        Map map;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.A8)).booleanValue()) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("The updating URL feature is not enabled.");
            try {
                zzbxnVar.zzf("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
                return;
            }
        }
        Iterator it = list.iterator();
        int i2 = 0;
        while (true) {
            boolean hasNext = it.hasNext();
            arrayList = this.B;
            arrayList2 = this.A;
            if (!hasNext) {
                break;
            } else if (g5((Uri) it.next(), arrayList2, arrayList)) {
                i2++;
            }
        }
        if (i2 > 1) {
            String valueOf = String.valueOf(list);
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Multiple google urls found: ".concat(valueOf));
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            final Uri uri = (Uri) it2.next();
            if (!g5(uri, arrayList2, arrayList)) {
                String valueOf2 = String.valueOf(uri);
                int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Not a Google URL: ".concat(valueOf2));
                listenableFuture = zzgym.a(uri);
            } else {
                Callable callable = new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzal
                    @Override // java.util.concurrent.Callable
                    public final /* synthetic */ Object call() {
                        zzfio zzfioVar;
                        Uri uri2 = uri;
                        try {
                            boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.qd)).booleanValue();
                            zzau zzauVar = zzau.this;
                            IObjectWrapper iObjectWrapper2 = iObjectWrapper;
                            if (booleanValue && (zzfioVar = zzauVar.h) != null) {
                                uri2 = zzfioVar.a(uri2, zzauVar.f, (View) ObjectWrapper.f2(iObjectWrapper2), null);
                            } else {
                                uri2 = zzauVar.g.b(uri2, zzauVar.f, (View) ObjectWrapper.f2(iObjectWrapper2), null);
                            }
                        } catch (zzayr e2) {
                            int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzj(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e2);
                        }
                        if (uri2.getQueryParameter("ms") != null) {
                            return uri2;
                        }
                        throw new Exception("Failed to append spam signals to click url.");
                    }
                };
                zzgyw zzgywVar = this.j;
                ListenableFuture v0 = zzgywVar.v0(callable);
                zzbxq zzbxqVar = this.l;
                if (zzbxqVar != null && (map = zzbxqVar.f) != null && !map.isEmpty()) {
                    listenableFuture = zzgym.h(v0, new zzgxu() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzam
                        @Override // com.google.android.gms.internal.ads.zzgxu
                        public final /* synthetic */ ListenableFuture zza(Object obj) {
                            final Uri uri2 = (Uri) obj;
                            zzau zzauVar = zzau.this;
                            return zzgym.i(zzauVar.i5("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new zzgpr() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzap
                                @Override // com.google.android.gms.internal.ads.zzgpr
                                public final /* synthetic */ Object apply(Object obj2) {
                                    String str = (String) obj2;
                                    ArrayList arrayList4 = zzau.K;
                                    boolean isEmpty = TextUtils.isEmpty(str);
                                    Uri uri3 = uri2;
                                    if (!isEmpty) {
                                        return zzau.j5(uri3, "nas", str);
                                    }
                                    return uri3;
                                }
                            }, zzauVar.j);
                        }
                    }, zzgywVar);
                } else {
                    int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("Asset view map is empty.");
                    listenableFuture = v0;
                }
            }
            arrayList3.add(listenableFuture);
        }
        zzgym.k(zzgym.j(arrayList3), new zzaf(this, zzbxnVar, z), this.f3237c.f());
    }

    public final void e5() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ua)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Xa)).booleanValue()) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.bb)).booleanValue() || !this.E.getAndSet(true)) {
                    f5();
                }
            }
        }
    }

    public final void f5() {
        zzau zzauVar;
        ListenableFuture zza;
        if (((Boolean) zzbip.e.c()).booleanValue()) {
            this.I.zza();
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.vc)).booleanValue()) {
            zza = zzgym.d(new zzgxt() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzan
                @Override // com.google.android.gms.internal.ads.zzgxt
                public final /* synthetic */ ListenableFuture zza() {
                    zzau zzauVar2 = zzau.this;
                    return zzauVar2.h5(zzauVar2.f, null, AdFormat.BANNER.name(), null, null, 0, null, new Bundle(), null).zza();
                }
            }, zzcdo.f5068a);
            zzauVar = this;
        } else {
            zzauVar = this;
            zza = zzauVar.h5(this.f, null, AdFormat.BANNER.name(), null, null, 0, null, new Bundle(), null).zza();
        }
        zzgym.k(zza, new zzag(this), zzauVar.f3237c.f());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005c, code lost:
    
        if (r8.equals("REWARDED_INTERSTITIAL") != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0065, code lost:
    
        r9 = com.google.android.gms.ads.internal.client.zzr.zzc();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
    
        if (r8.equals("REWARDED") != false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.ads.nonagon.signalgeneration.zzac h5(android.content.Context r6, java.lang.String r7, java.lang.String r8, com.google.android.gms.ads.internal.client.zzr r9, com.google.android.gms.ads.internal.client.zzm r10, int r11, java.lang.String r12, android.os.Bundle r13, com.google.android.gms.internal.ads.zzccn r14) {
        /*
            r5 = this;
            com.google.android.gms.internal.ads.zzfij r0 = new com.google.android.gms.internal.ads.zzfij
            r0.<init>()
            java.lang.String r1 = "REWARDED"
            boolean r2 = r1.equals(r8)
            java.lang.String r3 = "REWARDED_INTERSTITIAL"
            com.google.android.gms.internal.ads.zzfhx r4 = r0.o
            if (r2 == 0) goto L15
            r2 = 2
            r4.f7376a = r2
            goto L1e
        L15:
            boolean r2 = r3.equals(r8)
            if (r2 == 0) goto L1e
            r2 = 3
            r4.f7376a = r2
        L1e:
            com.google.android.gms.internal.ads.zzclg r2 = r5.f3237c
            com.google.android.gms.ads.nonagon.signalgeneration.zzab r2 = r2.t()
            com.google.android.gms.internal.ads.zzczs r4 = new com.google.android.gms.internal.ads.zzczs
            r4.<init>()
            r4.f5634a = r6
            if (r7 != 0) goto L2f
            java.lang.String r7 = "adUnitId"
        L2f:
            r0.f7389c = r7
            if (r10 != 0) goto L3c
            com.google.android.gms.ads.internal.client.zzn r7 = new com.google.android.gms.ads.internal.client.zzn
            r7.<init>()
            com.google.android.gms.ads.internal.client.zzm r10 = r7.zza()
        L3c:
            r0.f7388a = r10
            if (r9 != 0) goto L89
            int r7 = r8.hashCode()
            switch(r7) {
                case -1999289321: goto L77;
                case -428325382: goto L6a;
                case 543046670: goto L5f;
                case 1854800829: goto L58;
                case 1951953708: goto L48;
                default: goto L47;
            }
        L47:
            goto L84
        L48:
            java.lang.String r7 = "BANNER"
            boolean r7 = r8.equals(r7)
            if (r7 == 0) goto L84
            com.google.android.gms.ads.internal.client.zzr r9 = new com.google.android.gms.ads.internal.client.zzr
            com.google.android.gms.ads.AdSize r7 = com.google.android.gms.ads.AdSize.BANNER
            r9.<init>(r6, r7)
            goto L89
        L58:
            boolean r6 = r8.equals(r3)
            if (r6 == 0) goto L84
            goto L65
        L5f:
            boolean r6 = r8.equals(r1)
            if (r6 == 0) goto L84
        L65:
            com.google.android.gms.ads.internal.client.zzr r9 = com.google.android.gms.ads.internal.client.zzr.zzc()
            goto L89
        L6a:
            java.lang.String r6 = "APP_OPEN_AD"
            boolean r6 = r8.equals(r6)
            if (r6 == 0) goto L84
            com.google.android.gms.ads.internal.client.zzr r9 = com.google.android.gms.ads.internal.client.zzr.zzd()
            goto L89
        L77:
            java.lang.String r6 = "NATIVE"
            boolean r6 = r8.equals(r6)
            if (r6 == 0) goto L84
            com.google.android.gms.ads.internal.client.zzr r9 = com.google.android.gms.ads.internal.client.zzr.zzb()
            goto L89
        L84:
            com.google.android.gms.ads.internal.client.zzr r9 = new com.google.android.gms.ads.internal.client.zzr
            r9.<init>()
        L89:
            r0.b = r9
            r6 = 1
            r0.s = r6
            r0.t = r13
            com.google.android.gms.internal.ads.zzfik r6 = r0.a()
            r4.b = r6
            r4.g = r11
            com.google.android.gms.internal.ads.zzczt r6 = new com.google.android.gms.internal.ads.zzczt
            r6.<init>(r4)
            r2.zzc(r6)
            com.google.android.gms.ads.nonagon.signalgeneration.zzax r6 = new com.google.android.gms.ads.nonagon.signalgeneration.zzax
            r6.<init>()
            r6.zza(r8)
            r6.zzb(r12)
            r6.zzc(r14)
            com.google.android.gms.ads.nonagon.signalgeneration.zzay r7 = new com.google.android.gms.ads.nonagon.signalgeneration.zzay
            r7.<init>(r6)
            r2.zzb(r7)
            com.google.android.gms.internal.ads.zzdgj r6 = new com.google.android.gms.internal.ads.zzdgj
            r6.<init>()
            com.google.android.gms.ads.nonagon.signalgeneration.zzac r6 = r2.zza()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.nonagon.signalgeneration.zzau.h5(android.content.Context, java.lang.String, java.lang.String, com.google.android.gms.ads.internal.client.zzr, com.google.android.gms.ads.internal.client.zzm, int, java.lang.String, android.os.Bundle, com.google.android.gms.internal.ads.zzccn):com.google.android.gms.ads.nonagon.signalgeneration.zzac");
    }

    public final zzgye i5(final String str) {
        final zzdsp[] zzdspVarArr = new zzdsp[1];
        ListenableFuture b = this.i.b();
        zzgxu zzgxuVar = new zzgxu() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzas
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                zzdsp zzdspVar = (zzdsp) obj;
                zzau zzauVar = zzau.this;
                zzauVar.getClass();
                zzdspVarArr[0] = zzdspVar;
                Context context = zzauVar.f;
                zzbxq zzbxqVar = zzauVar.l;
                Map map = zzbxqVar.f;
                JSONObject zze2 = com.google.android.gms.ads.internal.util.zzbs.zze(context, map, map, zzbxqVar.f4964c, null);
                JSONObject zzb = com.google.android.gms.ads.internal.util.zzbs.zzb(zzauVar.f, zzauVar.l.f4964c);
                JSONObject zzc = com.google.android.gms.ads.internal.util.zzbs.zzc(zzauVar.l.f4964c);
                JSONObject zzd = com.google.android.gms.ads.internal.util.zzbs.zzd(zzauVar.f, zzauVar.l.f4964c);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("asset_view_signal", zze2);
                jSONObject.put("ad_view_signal", zzb);
                jSONObject.put("scroll_view_signal", zzc);
                jSONObject.put("lock_screen_signal", zzd);
                String str2 = str;
                if ("google.afma.nativeAds.getPublisherCustomRenderedClickSignals".equals(str2)) {
                    jSONObject.put("click_signal", com.google.android.gms.ads.internal.util.zzbs.zzf(null, zzauVar.f, zzauVar.n, zzauVar.m));
                }
                return zzdspVar.a(jSONObject, str2);
            }
        };
        zzgyw zzgywVar = this.j;
        ListenableFuture h = zzgym.h(b, zzgxuVar, zzgywVar);
        ((zzgxf) h).k(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzaj
            @Override // java.lang.Runnable
            public final void run() {
                zzau zzauVar = zzau.this;
                zzdsp zzdspVar = zzdspVarArr[0];
                if (zzdspVar != null) {
                    zzfjj zzfjjVar = zzauVar.i;
                    ListenableFuture a2 = zzgym.a(zzdspVar);
                    synchronized (zzfjjVar) {
                        zzfjjVar.f7413a.addFirst(a2);
                    }
                }
            }
        }, zzgywVar);
        return (zzgye) zzgym.e((zzgye) zzgym.i((zzgye) zzgym.g(zzgye.r(h), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.B8)).intValue(), TimeUnit.MILLISECONDS, this.k), zzaq.f3231a, zzgywVar), Exception.class, zzar.f3232a, zzgywVar);
    }

    @Override // com.google.android.gms.internal.ads.zzccj
    public final void zze(IObjectWrapper iObjectWrapper, final zzccn zzccnVar, @Nullable zzccg zzccgVar) {
        zzccn zzccnVar2;
        ListenableFuture a2;
        ListenableFuture zza;
        ListenableFuture h;
        ListenableFuture listenableFuture;
        final Bundle bundle = new Bundle();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I2)).booleanValue()) {
            bundle.putLong("api-call", zzccnVar.h.zzz);
            bundle.putLong("dynamite-enter", com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        this.f = (Context) ObjectWrapper.f2(iObjectWrapper);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.X2)).booleanValue()) {
            com.google.android.gms.ads.internal.client.zzbb.zzc();
        }
        zzfne o = com.google.android.gms.internal.ads.a.o(this.f, 22);
        o.zza();
        int i = 0;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t8)).booleanValue()) {
            com.google.android.gms.ads.internal.client.zzm zzmVar = zzccnVar.h;
            if (zzmVar.zzc.getBoolean("optimize_for_app_start", false) && Objects.equals(zzaa.zzc(zzmVar), "requester_type_8")) {
                i = 2;
                if (zzccnVar.i != 2) {
                    i = 1;
                }
            }
        }
        final int i2 = i;
        String str = zzccnVar.f;
        if ("UNKNOWN".equals(str)) {
            List arrayList = new ArrayList();
            zzbgb zzbgbVar = zzbgk.s8;
            if (!((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).isEmpty()) {
                arrayList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).split(","));
            }
            if (arrayList.contains(zzaa.zzc(zzccnVar.h))) {
                a2 = zzgym.b(new IllegalArgumentException("Unknown format is no longer supported."));
                zza = zzgym.b(new IllegalArgumentException("Unknown format is no longer supported."));
                zzccnVar2 = zzccnVar;
                listenableFuture = a2;
                h = zza;
                zzgym.k(h, new zzad(this, listenableFuture, zzccnVar2, zzccgVar, o), this.f3237c.f());
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.vc)).booleanValue()) {
            zzgxi zzgxiVar = (zzgxi) zzcdo.f5068a;
            ListenableFuture v0 = zzgxiVar.v0(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzat
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    zzau zzauVar = zzau.this;
                    Context context = zzauVar.f;
                    zzccn zzccnVar3 = zzccnVar;
                    return zzauVar.h5(context, zzccnVar3.f5039c, zzccnVar3.f, zzccnVar3.g, zzccnVar3.h, i2, zzccnVar3.j, bundle, zzccnVar3);
                }
            });
            h = zzgym.h(v0, zzah.f3220a, zzgxiVar);
            zzccnVar2 = zzccnVar;
            listenableFuture = v0;
            zzgym.k(h, new zzad(this, listenableFuture, zzccnVar2, zzccgVar, o), this.f3237c.f());
        }
        zzac h5 = h5(this.f, zzccnVar.f5039c, str, zzccnVar.g, zzccnVar.h, i2, zzccnVar.j, bundle, zzccnVar);
        zzccnVar2 = zzccnVar;
        a2 = zzgym.a(h5);
        zza = h5.zza();
        listenableFuture = a2;
        h = zza;
        zzgym.k(h, new zzad(this, listenableFuture, zzccnVar2, zzccgVar, o), this.f3237c.f());
    }

    @Override // com.google.android.gms.internal.ads.zzccj
    public final void zzf(IObjectWrapper iObjectWrapper) {
        View view;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.A8)).booleanValue()) {
            return;
        }
        MotionEvent motionEvent = (MotionEvent) ObjectWrapper.f2(iObjectWrapper);
        zzbxq zzbxqVar = this.l;
        if (zzbxqVar == null) {
            view = null;
        } else {
            view = zzbxqVar.f4964c;
        }
        this.m = com.google.android.gms.ads.internal.util.zzbs.zzh(motionEvent, view);
        if (motionEvent.getAction() == 0) {
            this.n = this.m;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.m;
        obtain.setLocation(point.x, point.y);
        this.g.b.zzd(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzccj
    public final void zzg(List list, IObjectWrapper iObjectWrapper, zzbxn zzbxnVar) {
        c5(list, iObjectWrapper, zzbxnVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzccj
    public final void zzh(List list, IObjectWrapper iObjectWrapper, zzbxn zzbxnVar) {
        d5(list, iObjectWrapper, zzbxnVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzccj
    public final void zzi(zzbxq zzbxqVar) {
        this.l = zzbxqVar;
        this.i.a(1);
    }

    @Override // com.google.android.gms.internal.ads.zzccj
    @SuppressLint({"AddJavascriptInterface"})
    public final void zzj(IObjectWrapper iObjectWrapper) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ta)).booleanValue()) {
            zzbgb zzbgbVar = zzbgk.r8;
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                e5();
            }
            WebView webView = (WebView) ObjectWrapper.f2(iObjectWrapper);
            if (webView == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzf("The webView cannot be null.");
                return;
            }
            zzgyw zzgywVar = zzcdo.f;
            zzf zzfVar = this.J;
            final zzj zzjVar = new zzj(webView, zzfVar, zzgywVar);
            webView.addJavascriptInterface(new TaggingLibraryJsInterface(webView, this.g, this.o, this.p, this.h, this.I, zzfVar, zzjVar), "gmaSdk");
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.db)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzh().l.incrementAndGet();
            }
            if (((Boolean) zzbip.f4723c.c()).booleanValue()) {
                zzfVar.zza(webView);
                if (((Boolean) zzbip.d.c()).booleanValue()) {
                    ((ScheduledThreadPoolExecutor) zzcdo.d).scheduleWithFixedDelay(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzi
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzj.this.zza();
                        }
                    }, 0L, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.eb)).intValue(), TimeUnit.MILLISECONDS);
                }
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                e5();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccj
    public final void zzk(List list, IObjectWrapper iObjectWrapper, zzbxn zzbxnVar) {
        c5(list, iObjectWrapper, zzbxnVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzccj
    public final void zzl(List list, IObjectWrapper iObjectWrapper, zzbxn zzbxnVar) {
        d5(list, iObjectWrapper, zzbxnVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzccj
    public final IObjectWrapper zzm(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, String str, IObjectWrapper iObjectWrapper3) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.hb)).booleanValue()) {
            return new ObjectWrapper(null);
        }
        Context context = (Context) ObjectWrapper.f2(iObjectWrapper);
        CustomTabsClient customTabsClient = (CustomTabsClient) ObjectWrapper.f2(iObjectWrapper2);
        CustomTabsCallback customTabsCallback = (CustomTabsCallback) ObjectWrapper.f2(iObjectWrapper3);
        zzbhp zzbhpVar = this.H;
        zzbhpVar.getClass();
        if (context != null) {
            if (!TextUtils.isEmpty(str)) {
                if (customTabsClient != null) {
                    zzbhpVar.l = context;
                    zzbhpVar.h = str;
                    zzdxj zzdxjVar = zzbhpVar.d;
                    zzbhm zzbhmVar = new zzbhm(zzbhpVar, customTabsCallback, zzdxjVar);
                    zzbhpVar.f = zzbhmVar;
                    CustomTabsSession c2 = customTabsClient.c(zzbhmVar);
                    zzbhpVar.g = c2;
                    if (c2 == null) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzf("CustomTabsClient failed to create new session.");
                    }
                    zzaa.zze(zzdxjVar, null, "pact_action", new Pair("pe", "pact_init"));
                    if (((Boolean) zzbip.e.c()).booleanValue()) {
                        this.I.zza();
                    }
                    if (((Boolean) zzbip.f4723c.c()).booleanValue()) {
                        this.J.zza(null);
                    }
                    return new ObjectWrapper(zzbhpVar.g);
                }
                throw new IllegalArgumentException("CustomTabsClient parameter is null");
            }
            throw new IllegalArgumentException("Origin parameter is empty or null");
        }
        throw new IllegalArgumentException("App Context parameter is null");
    }
}
