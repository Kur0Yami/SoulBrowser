package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.DesugarCollections;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzcbf implements zzcbk {
    public static final List l = DesugarCollections.synchronizedList(new ArrayList());

    /* renamed from: a, reason: collision with root package name */
    public final zziev f5013a;
    public final LinkedHashMap b;
    public final Context e;
    public boolean f;
    public final zzcbh g;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f5014c = new ArrayList();
    public final ArrayList d = new ArrayList();
    public final Object h = new Object();
    public final HashSet i = new HashSet();
    public boolean j = false;
    public boolean k = false;

    public zzcbf(Context context, VersionInfoParcel versionInfoParcel, zzcbh zzcbhVar, String str) {
        Preconditions.checkNotNull(zzcbhVar, "SafeBrowsing config is not present.");
        this.e = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.b = new LinkedHashMap();
        this.g = zzcbhVar;
        Iterator it = zzcbhVar.i.iterator();
        while (it.hasNext()) {
            this.i.add(((String) it.next()).toLowerCase(Locale.ENGLISH));
        }
        this.i.remove("cookie".toLowerCase(Locale.ENGLISH));
        zziev G = zzigz.G();
        G.k();
        ((zzigz) G.f).R(9);
        if (str != null) {
            G.k();
            ((zzigz) G.f).H(str);
            G.k();
            ((zzigz) G.f).I(str);
        }
        zziew D = zziex.D();
        String str2 = this.g.f5015c;
        if (str2 != null) {
            D.k();
            ((zziex) D.f).E(str2);
        }
        zziex zziexVar = (zziex) D.m();
        G.k();
        ((zzigz) G.f).J(zziexVar);
        zzigl D2 = zzigm.D();
        boolean isCallerInstantApp = Wrappers.packageManager(this.e).isCallerInstantApp();
        D2.k();
        ((zzigm) D2.f).G(isCallerInstantApp);
        String str3 = versionInfoParcel.afmaVersion;
        if (str3 != null) {
            D2.k();
            ((zzigm) D2.f).E(str3);
        }
        long apkVersion = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.e);
        if (apkVersion > 0) {
            D2.k();
            ((zzigm) D2.f).F(apkVersion);
        }
        zzigm zzigmVar = (zzigm) D2.m();
        G.k();
        ((zzigz) G.f).O(zzigmVar);
        this.f5013a = G;
    }

    @Override // com.google.android.gms.internal.ads.zzcbk
    public final void a(String str) {
        synchronized (this.h) {
            try {
                if (str == null) {
                    zziev zzievVar = this.f5013a;
                    zzievVar.k();
                    ((zzigz) zzievVar.f).M();
                } else {
                    zziev zzievVar2 = this.f5013a;
                    zzievVar2.k();
                    ((zzigz) zzievVar2.f).L(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007e  */
    @Override // com.google.android.gms.internal.ads.zzcbk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(android.view.View r8) {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zzcbh r0 = r7.g
            boolean r0 = r0.g
            if (r0 != 0) goto L8
            goto L88
        L8:
            boolean r0 = r7.j
            if (r0 != 0) goto L88
            com.google.android.gms.ads.internal.zzt.zzc()
            r0 = 1
            r1 = 0
            if (r8 != 0) goto L15
            goto L76
        L15:
            boolean r2 = r8.isDrawingCacheEnabled()     // Catch: java.lang.RuntimeException -> L27
            r8.setDrawingCacheEnabled(r0)     // Catch: java.lang.RuntimeException -> L27
            android.graphics.Bitmap r3 = r8.getDrawingCache()     // Catch: java.lang.RuntimeException -> L27
            if (r3 == 0) goto L29
            android.graphics.Bitmap r3 = android.graphics.Bitmap.createBitmap(r3)     // Catch: java.lang.RuntimeException -> L27
            goto L2a
        L27:
            r2 = move-exception
            goto L30
        L29:
            r3 = r1
        L2a:
            r8.setDrawingCacheEnabled(r2)     // Catch: java.lang.RuntimeException -> L2e
            goto L38
        L2e:
            r2 = move-exception
            goto L31
        L30:
            r3 = r1
        L31:
            int r4 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r4 = "Fail to capture the web view"
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r4, r2)
        L38:
            if (r3 != 0) goto L75
            int r2 = r8.getWidth()     // Catch: java.lang.RuntimeException -> L63
            int r3 = r8.getHeight()     // Catch: java.lang.RuntimeException -> L63
            if (r2 == 0) goto L65
            if (r3 != 0) goto L47
            goto L65
        L47:
            int r4 = r8.getWidth()     // Catch: java.lang.RuntimeException -> L63
            int r5 = r8.getHeight()     // Catch: java.lang.RuntimeException -> L63
            android.graphics.Bitmap$Config r6 = android.graphics.Bitmap.Config.RGB_565     // Catch: java.lang.RuntimeException -> L63
            android.graphics.Bitmap r4 = android.graphics.Bitmap.createBitmap(r4, r5, r6)     // Catch: java.lang.RuntimeException -> L63
            android.graphics.Canvas r5 = new android.graphics.Canvas     // Catch: java.lang.RuntimeException -> L63
            r5.<init>(r4)     // Catch: java.lang.RuntimeException -> L63
            r6 = 0
            r8.layout(r6, r6, r2, r3)     // Catch: java.lang.RuntimeException -> L63
            r8.draw(r5)     // Catch: java.lang.RuntimeException -> L63
            r1 = r4
            goto L76
        L63:
            r8 = move-exception
            goto L6d
        L65:
            java.lang.String r8 = "Width or height of view is zero"
            int r2 = com.google.android.gms.ads.internal.util.zze.zza     // Catch: java.lang.RuntimeException -> L63
            com.google.android.gms.ads.internal.util.client.zzo.zzi(r8)     // Catch: java.lang.RuntimeException -> L63
            goto L76
        L6d:
            int r2 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r2 = "Fail to capture the webview"
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r2, r8)
            goto L76
        L75:
            r1 = r3
        L76:
            if (r1 != 0) goto L7e
            java.lang.String r8 = "Failed to capture the webview bitmap."
            com.google.android.gms.internal.ads.zzcbj.a(r8)
            return
        L7e:
            r7.j = r0
            com.google.android.gms.internal.ads.zzcbe r8 = new com.google.android.gms.internal.ads.zzcbe
            r8.<init>()
            com.google.android.gms.ads.internal.util.zzs.zzh(r8)
        L88:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcbf.b(android.view.View):void");
    }

    @Override // com.google.android.gms.internal.ads.zzcbk
    public final void c(String str, Map map, int i) {
        String str2;
        String str3;
        synchronized (this.h) {
            int i2 = 1;
            if (i == 3) {
                try {
                    this.k = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
            LinkedHashMap linkedHashMap = this.b;
            if (linkedHashMap.containsKey(str)) {
                if (i == 3) {
                    zzigj zzigjVar = (zzigj) linkedHashMap.get(str);
                    zzigjVar.k();
                    ((zzigk) zzigjVar.f).K(4);
                }
                return;
            }
            zzigj F = zzigk.F();
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            i2 = 0;
                        } else {
                            i2 = 4;
                        }
                    } else {
                        i2 = 3;
                    }
                } else {
                    i2 = 2;
                }
            }
            if (i2 != 0) {
                F.k();
                ((zzigk) F.f).K(i2);
            }
            int size = linkedHashMap.size();
            F.k();
            ((zzigk) F.f).G(size);
            F.k();
            ((zzigk) F.f).H(str);
            zzifi D = zzifl.D();
            if (!this.i.isEmpty() && map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    if (entry.getKey() != null) {
                        str2 = (String) entry.getKey();
                    } else {
                        str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    }
                    if (entry.getValue() != null) {
                        str3 = (String) entry.getValue();
                    } else {
                        str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    }
                    if (this.i.contains(str2.toLowerCase(Locale.ENGLISH))) {
                        zzifg D2 = zzifh.D();
                        Charset charset = zzibe.f8915a;
                        zzhzj zzhzjVar = new zzhzj(str2.getBytes(charset));
                        D2.k();
                        ((zzifh) D2.f).E(zzhzjVar);
                        zzhzj zzhzjVar2 = new zzhzj(str3.getBytes(charset));
                        D2.k();
                        ((zzifh) D2.f).F(zzhzjVar2);
                        zzifh zzifhVar = (zzifh) D2.m();
                        D.k();
                        ((zzifl) D.f).E(zzifhVar);
                    }
                }
            }
            zzifl zziflVar = (zzifl) D.m();
            F.k();
            ((zzigk) F.f).I(zziflVar);
            linkedHashMap.put(str, F);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbk
    public final zzcbh zza() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.zzcbk
    public final boolean zzc() {
        return this.g.g && !this.j;
    }

    @Override // com.google.android.gms.internal.ads.zzcbk
    public final void zzf() {
        synchronized (this.h) {
            this.b.keySet();
            ListenableFuture a2 = zzgym.a(Collections.EMPTY_MAP);
            zzgxu zzgxuVar = new zzgxu() { // from class: com.google.android.gms.internal.ads.zzcbb
                @Override // com.google.android.gms.internal.ads.zzgxu
                public final ListenableFuture zza(Object obj) {
                    int length;
                    zzigj zzigjVar;
                    ListenableFuture i;
                    zzcbf zzcbfVar = zzcbf.this;
                    Map map = (Map) obj;
                    if (map != null) {
                        try {
                            for (String str : map.keySet()) {
                                JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                                if (optJSONArray != null) {
                                    Object obj2 = zzcbfVar.h;
                                    synchronized (obj2) {
                                        try {
                                            length = optJSONArray.length();
                                            synchronized (obj2) {
                                                zzigjVar = (zzigj) zzcbfVar.b.get(str);
                                            }
                                        } finally {
                                        }
                                    }
                                    if (zzigjVar == null) {
                                        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 50);
                                        sb.append("Cannot find the corresponding resource object for ");
                                        sb.append(str);
                                        zzcbj.a(sb.toString());
                                    } else {
                                        boolean z = false;
                                        for (int i2 = 0; i2 < length; i2++) {
                                            String string = optJSONArray.getJSONObject(i2).getString("threat_type");
                                            zzigjVar.k();
                                            ((zzigk) zzigjVar.f).J(string);
                                        }
                                        boolean z2 = zzcbfVar.f;
                                        if (length > 0) {
                                            z = true;
                                        }
                                        zzcbfVar.f = z | z2;
                                    }
                                }
                            }
                        } catch (JSONException e) {
                            if (((Boolean) zzbis.f4727a.c()).booleanValue()) {
                                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zze("Failed to get SafeBrowsing metadata", e);
                            }
                            return zzgym.b(new Exception("Safebrowsing report transmission failed."));
                        }
                    }
                    if (zzcbfVar.f) {
                        synchronized (zzcbfVar.h) {
                            zziev zzievVar = zzcbfVar.f5013a;
                            zzievVar.k();
                            ((zzigz) zzievVar.f).R(10);
                        }
                    }
                    boolean z3 = zzcbfVar.f;
                    if ((z3 && zzcbfVar.g.k) || ((zzcbfVar.k && zzcbfVar.g.j) || (!z3 && zzcbfVar.g.h))) {
                        synchronized (zzcbfVar.h) {
                            try {
                                for (zzigj zzigjVar2 : zzcbfVar.b.values()) {
                                    zziev zzievVar2 = zzcbfVar.f5013a;
                                    zzigk zzigkVar = (zzigk) zzigjVar2.m();
                                    zzievVar2.k();
                                    ((zzigz) zzievVar2.f).K(zzigkVar);
                                }
                                zziev zzievVar3 = zzcbfVar.f5013a;
                                ArrayList arrayList = zzcbfVar.f5014c;
                                zzievVar3.k();
                                ((zzigz) zzievVar3.f).P(arrayList);
                                ArrayList arrayList2 = zzcbfVar.d;
                                zzievVar3.k();
                                ((zzigz) zzievVar3.f).Q(arrayList2);
                                if (((Boolean) zzbis.f4727a.c()).booleanValue()) {
                                    String D = ((zzigz) zzievVar3.f).D();
                                    String F = ((zzigz) zzievVar3.f).F();
                                    StringBuilder sb2 = new StringBuilder(String.valueOf(D).length() + 38 + String.valueOf(F).length() + 15);
                                    sb2.append("Sending SB report\n  url: ");
                                    sb2.append(D);
                                    sb2.append("\n  clickUrl: ");
                                    sb2.append(F);
                                    sb2.append("\n  resources: \n");
                                    StringBuilder sb3 = new StringBuilder(sb2.toString());
                                    for (zzigk zzigkVar2 : DesugarCollections.unmodifiableList(((zzigz) zzievVar3.f).E())) {
                                        sb3.append("    [");
                                        sb3.append(zzigkVar2.E());
                                        sb3.append("] ");
                                        sb3.append(zzigkVar2.D());
                                    }
                                    zzcbj.a(sb3.toString());
                                }
                                ListenableFuture zzb = new com.google.android.gms.ads.internal.util.zzbl(zzcbfVar.e).zzb(1, zzcbfVar.g.f, null, ((zzigz) zzievVar3.m()).h());
                                if (((Boolean) zzbis.f4727a.c()).booleanValue()) {
                                    zzb.k(zzcbd.f5011c, zzcdo.f5068a);
                                }
                                i = zzgym.i(zzb, zzcbc.f5010a, zzcdo.g);
                            } finally {
                            }
                        }
                        return i;
                    }
                    return zzgyq.f;
                }
            };
            zzgyw zzgywVar = zzcdo.g;
            ListenableFuture h = zzgym.h(a2, zzgxuVar, zzgywVar);
            ListenableFuture g = zzgym.g(h, 10L, TimeUnit.SECONDS, zzcdo.d);
            ((zzgxf) h).k(new zzgyk(h, new zzcba(this, g)), zzgywVar);
            l.add(g);
        }
    }
}
