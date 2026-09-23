package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.core.view.ViewCompat;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.ByteArrayInputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.ParametersAreNonnullByDefault;
import kotlin.uuid.Uuid;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public class zzcjc extends WebViewClient implements zzckp {
    public static final /* synthetic */ int M = 0;
    public com.google.android.gms.ads.internal.zzb A;
    public zzcbk C;
    public zzdxe D;
    public zzcze E;
    public boolean F;
    public boolean G;
    public int H;
    public boolean I;
    public final zzeif K;
    public View.OnAttachStateChangeListener L;

    /* renamed from: c, reason: collision with root package name */
    public final zzcir f5194c;
    public final zzbfj f;
    public com.google.android.gms.ads.internal.client.zza i;
    public com.google.android.gms.ads.internal.overlay.zzr j;
    public zzckn k;
    public zzcko l;
    public zzbmd m;
    public zzbmf n;
    public zzdir o;
    public boolean p;
    public boolean q;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public com.google.android.gms.ads.internal.overlay.zzad y;
    public zzbwc z;
    public final HashMap g = new HashMap();
    public final Object h = new Object();
    public int r = 0;
    public String s = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public String t = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public zzbvx B = null;
    public final HashSet J = new HashSet(Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.B6)).split(",")));

    public zzcjc(zzcir zzcirVar, zzbfj zzbfjVar, boolean z, zzbwc zzbwcVar, zzeif zzeifVar) {
        this.f = zzbfjVar;
        this.f5194c = zzcirVar;
        this.u = z;
        this.z = zzbwcVar;
        this.K = zzeifVar;
    }

    public static WebResourceResponse J() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.o1)).booleanValue()) {
            return new WebResourceResponse(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    public static final boolean Q(zzcir zzcirVar) {
        if (zzcirVar.zzC() != null && zzcirVar.zzC().b()) {
            return true;
        }
        return false;
    }

    public static final boolean S(boolean z, zzcir zzcirVar) {
        if (z && !zzcirVar.zzN().b() && !zzcirVar.k().equals("interstitial_mb")) {
            return true;
        }
        return false;
    }

    public final void B(final View view, final zzcbk zzcbkVar, final int i) {
        if (zzcbkVar.zzc() && i > 0) {
            zzcbkVar.b(view);
            if (zzcbkVar.zzc()) {
                com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcja
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzcjc.this.B(view, zzcbkVar, i - 1);
                    }
                }, 100L);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x010a, code lost:
    
        com.google.android.gms.ads.internal.zzt.zzc();
        com.google.android.gms.ads.internal.zzt.zzc();
        r0 = r13.getContentType();
        r1 = android.text.TextUtils.isEmpty(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0118, code lost:
    
        r4 = com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x011c, code lost:
    
        if (r1 == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x011e, code lost:
    
        r15 = com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x012b, code lost:
    
        com.google.android.gms.ads.internal.zzt.zzc();
        r0 = r13.getContentType();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0136, code lost:
    
        if (android.text.TextUtils.isEmpty(r0) == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0138, code lost:
    
        r16 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x016e, code lost:
    
        r0 = r13.getHeaderFields();
        r1 = new java.util.HashMap(r0.size());
        r0 = r0.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0187, code lost:
    
        if (r0.hasNext() == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0189, code lost:
    
        r2 = r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0193, code lost:
    
        if (r2.getKey() == null) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0199, code lost:
    
        if (r2.getValue() == null) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01a5, code lost:
    
        if (r2.getValue().isEmpty() != false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01a7, code lost:
    
        r1.put(r2.getKey(), r2.getValue().get(0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01bd, code lost:
    
        r9 = com.google.android.gms.ads.internal.zzt.zzf().zzc(r15, r16, r13.getResponseCode(), r13.getResponseMessage(), r1, r13.getInputStream());
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x013b, code lost:
    
        r0 = r0.split(";");
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0140, code lost:
    
        if (r0.length != 1) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0143, code lost:
    
        r1 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0145, code lost:
    
        if (r1 >= r0.length) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0153, code lost:
    
        if (r0[r1].trim().startsWith("charset") == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0155, code lost:
    
        r2 = r0[r1].trim().split("=");
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0162, code lost:
    
        if (r2.length <= 1) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0164, code lost:
    
        r4 = r2[1].trim();
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x016b, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0120, code lost:
    
        r15 = r0.split(";")[0].trim();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.webkit.WebResourceResponse K(java.lang.String r22, java.util.Map r23) {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcjc.K(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    public final void N(Map map, List list, String str) {
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("Received GMSG: ".concat(str));
            for (String str2 : map.keySet()) {
                String str3 = (String) map.get(str2);
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 4 + String.valueOf(str3).length());
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(str3);
                com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((zzbnn) it.next()).a(map, this.f5194c);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdir
    public final void P() {
        zzdir zzdirVar = this.o;
        if (zzdirVar != null) {
            zzdirVar.P();
        }
    }

    public final void U(zzcra zzcraVar, zzehu zzehuVar, zzfpi zzfpiVar) {
        f("/click");
        if (zzehuVar != null && zzfpiVar != null) {
            b("/click", new zzfiu(this.o, zzcraVar, zzfpiVar, zzehuVar));
            return;
        }
        zzdir zzdirVar = this.o;
        zzbnn zzbnnVar = zzbnm.f4781a;
        b("/click", new zzbnh(zzdirVar, zzcraVar));
    }

    public final void Z(zzcra zzcraVar, zzehu zzehuVar, zzdxe zzdxeVar) {
        f("/open");
        b("/open", new zzboa(this.A, this.B, zzehuVar, zzdxeVar, zzcraVar, null));
    }

    public final void a(AdOverlayInfoParcel adOverlayInfoParcel) {
        com.google.android.gms.ads.internal.overlay.zzc zzcVar;
        zzbvx zzbvxVar = this.B;
        boolean z = false;
        if (zzbvxVar != null) {
            synchronized (zzbvxVar.k) {
                if (zzbvxVar.r != null) {
                    z = true;
                }
            }
        }
        com.google.android.gms.ads.internal.zzt.zzb();
        com.google.android.gms.ads.internal.overlay.zzn.zza(this.f5194c.getContext(), adOverlayInfoParcel, !z, this.D);
        zzcbk zzcbkVar = this.C;
        if (zzcbkVar != null) {
            String str = adOverlayInfoParcel.zzl;
            if (str == null && (zzcVar = adOverlayInfoParcel.zza) != null) {
                str = zzcVar.zzb;
            }
            zzcbkVar.a(str);
        }
    }

    public final void b(String str, zzbnn zzbnnVar) {
        synchronized (this.h) {
            try {
                HashMap hashMap = this.g;
                List list = (List) hashMap.get(str);
                if (list == null) {
                    list = new CopyOnWriteArrayList();
                    hashMap.put(str, list);
                }
                list.add(zzbnnVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdir
    public final void d0() {
        zzdir zzdirVar = this.o;
        if (zzdirVar != null) {
            zzdirVar.d0();
        }
    }

    public final void f(String str) {
        synchronized (this.h) {
            try {
                List list = (List) this.g.get(str);
                if (list == null) {
                    return;
                }
                list.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g() {
        zzcbk zzcbkVar = this.C;
        if (zzcbkVar != null) {
            zzcbkVar.zzf();
            this.C = null;
        }
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.L;
        if (onAttachStateChangeListener != null) {
            ((View) this.f5194c).removeOnAttachStateChangeListener(onAttachStateChangeListener);
        }
        synchronized (this.h) {
            try {
                this.g.clear();
                this.i = null;
                this.j = null;
                this.k = null;
                this.l = null;
                this.m = null;
                this.n = null;
                this.p = false;
                this.u = false;
                this.v = false;
                this.w = false;
                this.y = null;
                this.A = null;
                this.z = null;
                zzbvx zzbvxVar = this.B;
                if (zzbvxVar != null) {
                    zzbvxVar.f(true);
                    this.B = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bc A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TRY_ENTER, TryCatch #11 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000c, B:5:0x0019, B:6:0x0026, B:8:0x0036, B:11:0x003d, B:13:0x0049, B:15:0x0065, B:17:0x0081, B:19:0x0098, B:20:0x009b, B:21:0x00a2, B:24:0x00bc, B:27:0x00c4, B:29:0x00d0, B:32:0x00eb, B:68:0x0217, B:51:0x0178, B:53:0x02ca, B:55:0x02dc, B:57:0x02e2, B:59:0x02f0, B:50:0x01c6, B:74:0x0245, B:75:0x0278, B:70:0x014c, B:90:0x00de, B:91:0x0279, B:93:0x0283, B:95:0x0289, B:97:0x02bc), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x02ca A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TryCatch #11 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000c, B:5:0x0019, B:6:0x0026, B:8:0x0036, B:11:0x003d, B:13:0x0049, B:15:0x0065, B:17:0x0081, B:19:0x0098, B:20:0x009b, B:21:0x00a2, B:24:0x00bc, B:27:0x00c4, B:29:0x00d0, B:32:0x00eb, B:68:0x0217, B:51:0x0178, B:53:0x02ca, B:55:0x02dc, B:57:0x02e2, B:59:0x02f0, B:50:0x01c6, B:74:0x0245, B:75:0x0278, B:70:0x014c, B:90:0x00de, B:91:0x0279, B:93:0x0283, B:95:0x0289, B:97:0x02bc), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x02e2 A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TryCatch #11 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000c, B:5:0x0019, B:6:0x0026, B:8:0x0036, B:11:0x003d, B:13:0x0049, B:15:0x0065, B:17:0x0081, B:19:0x0098, B:20:0x009b, B:21:0x00a2, B:24:0x00bc, B:27:0x00c4, B:29:0x00d0, B:32:0x00eb, B:68:0x0217, B:51:0x0178, B:53:0x02ca, B:55:0x02dc, B:57:0x02e2, B:59:0x02f0, B:50:0x01c6, B:74:0x0245, B:75:0x0278, B:70:0x014c, B:90:0x00de, B:91:0x0279, B:93:0x0283, B:95:0x0289, B:97:0x02bc), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x020a A[Catch: all -> 0x01f3, TryCatch #10 {all -> 0x01f3, blocks: (B:64:0x01f8, B:66:0x020a, B:67:0x0211, B:46:0x01a0, B:48:0x01b2, B:49:0x01b9), top: B:31:0x00eb }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0279 A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TryCatch #11 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000c, B:5:0x0019, B:6:0x0026, B:8:0x0036, B:11:0x003d, B:13:0x0049, B:15:0x0065, B:17:0x0081, B:19:0x0098, B:20:0x009b, B:21:0x00a2, B:24:0x00bc, B:27:0x00c4, B:29:0x00d0, B:32:0x00eb, B:68:0x0217, B:51:0x0178, B:53:0x02ca, B:55:0x02dc, B:57:0x02e2, B:59:0x02f0, B:50:0x01c6, B:74:0x0245, B:75:0x0278, B:70:0x014c, B:90:0x00de, B:91:0x0279, B:93:0x0283, B:95:0x0289, B:97:0x02bc), top: B:2:0x000c }] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r16v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v2, types: [android.os.ParcelFileDescriptor$AutoCloseInputStream, java.io.InputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.webkit.WebResourceResponse i(java.lang.String r20, java.util.Map r21) {
        /*
            Method dump skipped, instructions count: 772
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcjc.i(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    public final boolean i0() {
        boolean z;
        synchronized (this.h) {
            z = this.u;
        }
        return z;
    }

    public final boolean m0() {
        boolean z;
        synchronized (this.h) {
            z = this.v;
        }
        return z;
    }

    public final void n(Uri uri) {
        final String str;
        com.google.android.gms.ads.internal.util.zze.zza("Received GMSG: ".concat(String.valueOf(uri)));
        String path = uri.getPath();
        List list = (List) this.g.get(path);
        if (path != null && list != null) {
            String encodedQuery = uri.getEncodedQuery();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.A6)).booleanValue() && this.J.contains(path) && encodedQuery != null) {
                if (encodedQuery.length() >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.C6)).intValue()) {
                    com.google.android.gms.ads.internal.util.zze.zza("Parsing gmsg query params on BG thread: ".concat(path));
                    ListenableFuture zzf = com.google.android.gms.ads.internal.zzt.zzc().zzf(uri);
                    zzcit zzcitVar = new zzcit(this, list, path, uri);
                    zzf.k(new zzgyk(zzf, zzcitVar), zzcdo.f);
                    return;
                }
            }
            com.google.android.gms.ads.internal.zzt.zzc();
            N(com.google.android.gms.ads.internal.util.zzs.zzV(uri), list, path);
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza("No GMSG handler found for GMSG: ".concat(String.valueOf(uri)));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.A7)).booleanValue() && com.google.android.gms.ads.internal.zzt.zzh().a() != null) {
            if (path != null && path.length() >= 2) {
                str = path.substring(1);
            } else {
                str = "null";
            }
            ((zzcdn) zzcdo.f5068a).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzciz
                @Override // java.lang.Runnable
                public final void run() {
                    int i = zzcjc.M;
                    zzbgp a2 = com.google.android.gms.ads.internal.zzt.zzh().a();
                    HashSet hashSet = a2.g;
                    String str2 = str;
                    if (hashSet.contains(str2)) {
                        return;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("sdkVersion", a2.f);
                    linkedHashMap.put("ue", str2);
                    a2.b(a2.a(a2.b, linkedHashMap), null);
                }
            });
        }
    }

    public final void o(boolean z) {
        synchronized (this.h) {
            this.x = z;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        com.google.android.gms.ads.internal.client.zza zzaVar = this.i;
        if (zzaVar != null) {
            zzaVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        com.google.android.gms.ads.internal.util.zze.zza("Loading resource: ".concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            n(parse);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.h) {
            try {
                zzcir zzcirVar = this.f5194c;
                if (zzcirVar.u()) {
                    com.google.android.gms.ads.internal.util.zze.zza("Blank page loaded, 1...");
                    zzcirVar.h();
                    return;
                }
                this.F = true;
                zzcko zzckoVar = this.l;
                if (zzckoVar != null) {
                    zzckoVar.zza();
                    this.l = null;
                }
                x0();
                zzcir zzcirVar2 = this.f5194c;
                if (zzcirVar2.zzL() != null) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.md)).booleanValue()) {
                        zzcirVar2.zzL().zzz(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        this.q = true;
        this.r = i;
        this.s = str;
        this.t = str2;
    }

    public final void q(int i, int i2) {
        zzbwc zzbwcVar = this.z;
        if (zzbwcVar != null) {
            zzbwcVar.f(i, i2);
        }
        zzbvx zzbvxVar = this.B;
        if (zzbvxVar != null) {
            synchronized (zzbvxVar.k) {
                zzbvxVar.e = i;
                zzbvxVar.f = i2;
            }
        }
    }

    public final boolean s0() {
        boolean z;
        synchronized (this.h) {
            z = this.w;
        }
        return z;
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return i(str, Collections.EMPTY_MAP);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case 127:
                    case Uuid.SIZE_BITS /* 128 */:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        com.google.android.gms.ads.internal.util.zze.zza("AdWebView shouldOverrideUrlLoading: ".concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            n(parse);
            return true;
        }
        boolean z = this.p;
        zzcir zzcirVar = this.f5194c;
        if (z && webView == zzcirVar.zzD()) {
            String scheme = parse.getScheme();
            if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                com.google.android.gms.ads.internal.client.zza zzaVar = this.i;
                if (zzaVar != null) {
                    zzaVar.onAdClicked();
                    zzcbk zzcbkVar = this.C;
                    if (zzcbkVar != null) {
                        zzcbkVar.a(str);
                    }
                    this.i = null;
                }
                zzdir zzdirVar = this.o;
                if (zzdirVar != null) {
                    zzdirVar.P();
                    this.o = null;
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
        }
        if (!zzcirVar.zzD().willNotDraw()) {
            try {
                zzayq c2 = zzcirVar.c();
                zzfio Y = zzcirVar.Y();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.qd)).booleanValue() && Y != null) {
                    if (c2 != null && c2.a(parse)) {
                        parse = Y.a(parse, zzcirVar.getContext(), (View) zzcirVar, zzcirVar.zzj());
                    }
                } else if (c2 != null && c2.a(parse)) {
                    parse = c2.b(parse, zzcirVar.getContext(), (View) zzcirVar, zzcirVar.zzj());
                }
            } catch (zzayr unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Unable to append parameter to URL: ".concat(String.valueOf(str)));
            }
            com.google.android.gms.ads.internal.zzb zzbVar = this.A;
            if (zzbVar != null && !zzbVar.zzb()) {
                zzbVar.zzc(str);
            } else {
                y0(new com.google.android.gms.ads.internal.overlay.zzc("android.intent.action.VIEW", parse.toString(), null, null, null, null, null, null), true, false, zzcirVar.zzn());
            }
            return true;
        }
        com.google.android.gms.ads.internal.util.client.zzo.zzi("AdWebView unable to handle URL: ".concat(String.valueOf(str)));
        return true;
    }

    public final boolean t0() {
        boolean z;
        synchronized (this.h) {
            z = this.x;
        }
        return z;
    }

    public final void u0() {
        synchronized (this.h) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [com.google.android.gms.internal.ads.zzbnn, java.lang.Object] */
    public final void v(com.google.android.gms.ads.internal.client.zza zzaVar, zzbmd zzbmdVar, com.google.android.gms.ads.internal.overlay.zzr zzrVar, zzbmf zzbmfVar, com.google.android.gms.ads.internal.overlay.zzad zzadVar, boolean z, zzbnq zzbnqVar, com.google.android.gms.ads.internal.zzb zzbVar, zzbwe zzbweVar, zzcbk zzcbkVar, final zzehu zzehuVar, final zzfpi zzfpiVar, zzdxe zzdxeVar, zzboi zzboiVar, zzdir zzdirVar, zzboh zzbohVar, zzbob zzbobVar, zzbno zzbnoVar, zzcra zzcraVar, zzdyh zzdyhVar, zzczj zzczjVar, zzcze zzczeVar) {
        zzcir zzcirVar = this.f5194c;
        com.google.android.gms.ads.internal.zzb zzbVar2 = zzbVar == null ? new com.google.android.gms.ads.internal.zzb(zzcirVar.getContext(), zzcbkVar, null) : zzbVar;
        this.B = new zzbvx(zzcirVar, zzbweVar);
        this.C = zzcbkVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.x1)).booleanValue()) {
            b("/adMetadata", new zzbmc(zzbmdVar));
        }
        if (zzbmfVar != null) {
            b("/appEvent", new zzbme(zzbmfVar));
        }
        b("/backButton", zzbnm.j);
        b("/refresh", zzbnm.k);
        b("/canOpenApp", zzbnc.f4771a);
        b("/canOpenURLs", zzbnl.f4780a);
        b("/canOpenIntents", zzbnd.f4772a);
        b("/close", zzbnm.d);
        b("/customClose", zzbnm.e);
        b("/instrument", zzbnm.n);
        b("/delayPageLoaded", zzbnm.p);
        b("/delayPageClosed", zzbnm.q);
        b("/getLocationInfo", zzbnm.r);
        b("/log", zzbnm.g);
        b("/mraid", new zzbnu(zzbVar2, this.B, zzbweVar));
        zzbwc zzbwcVar = this.z;
        if (zzbwcVar != null) {
            b("/mraidLoaded", zzbwcVar);
        }
        com.google.android.gms.ads.internal.zzb zzbVar3 = zzbVar2;
        b("/open", new zzboa(zzbVar3, this.B, zzehuVar, zzdxeVar, zzcraVar, zzczjVar));
        b("/precache", new Object());
        b("/touch", zzbnj.f4778a);
        b("/video", zzbnm.l);
        b("/videoMeta", zzbnm.m);
        if (zzehuVar != null && zzfpiVar != null) {
            b("/click", new zzfiu(zzdirVar, zzcraVar, zzfpiVar, zzehuVar));
            b("/httpTrack", new zzbnn() { // from class: com.google.android.gms.internal.ads.zzfit
                @Override // com.google.android.gms.internal.ads.zzbnn
                public final void a(Map map, Object obj) {
                    zzcii zzciiVar = (zzcii) obj;
                    String str = (String) map.get("u");
                    if (str == null) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("URL missing from httpTrack GMSG.");
                        return;
                    }
                    zzfhr zzC = zzciiVar.zzC();
                    if (zzC != null && !zzC.i0) {
                        zzfpi.this.b(str, zzC.x0, null, null);
                        return;
                    }
                    zzfhu d = ((zzcjy) zzciiVar).d();
                    if (d == null) {
                        com.google.android.gms.ads.internal.zzt.zzh().f("BufferingGmsgHandlers.getBufferingHttpTrackGmsgHandler", new IllegalArgumentException("Common configuration cannot be null"));
                        return;
                    }
                    zzehw zzehwVar = new zzehw(2, d.b, str, com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
                    zzehu zzehuVar2 = zzehuVar;
                    zzehuVar2.getClass();
                    zzehuVar2.a(new zzehr(zzehuVar2, zzehwVar));
                }
            });
        } else {
            b("/click", new zzbnh(zzdirVar, zzcraVar));
            b("/httpTrack", zzbni.f4777a);
        }
        if (com.google.android.gms.ads.internal.zzt.zzD().a(zzcirVar.getContext())) {
            Map hashMap = new HashMap();
            if (zzcirVar.zzC() != null) {
                hashMap = zzcirVar.zzC().w0;
            }
            b("/logScionEvent", new zzbnt(zzcirVar.getContext(), hashMap));
        }
        if (zzbnqVar != null) {
            b("/setInterstitialProperties", new zzbnp(zzbnqVar));
        }
        if (zzboiVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.la)).booleanValue()) {
                b("/inspectorNetworkExtras", zzboiVar);
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ea)).booleanValue() && zzbohVar != null) {
            b("/shareSheet", zzbohVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.K8)).booleanValue() && zzdyhVar != null) {
            b("/onDeviceStorageEvent", new zzbnv(zzdyhVar));
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ja)).booleanValue() && zzbobVar != null) {
            b("/inspectorOutOfContextTest", zzbobVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Oa)).booleanValue() && zzbnoVar != null) {
            b("/inspectorStorage", zzbnoVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Rc)).booleanValue()) {
            b("/bindPlayStoreOverlay", zzbnm.u);
            b("/presentPlayStoreOverlay", zzbnm.v);
            b("/expandPlayStoreOverlay", zzbnm.w);
            b("/collapsePlayStoreOverlay", zzbnm.x);
            b("/closePlayStoreOverlay", zzbnm.y);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.c4)).booleanValue()) {
            b("/setPAIDPersonalizationEnabled", zzbnm.A);
            b("/resetPAID", zzbnm.z);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ld)).booleanValue() && zzcirVar.zzC() != null && zzcirVar.zzC().r0) {
            b("/writeToLocalStorage", zzbnm.B);
            b("/clearLocalStorageKeys", zzbnm.C);
        }
        this.i = zzaVar;
        this.j = zzrVar;
        this.m = zzbmdVar;
        this.n = zzbmfVar;
        this.y = zzadVar;
        this.A = zzbVar3;
        this.o = zzdirVar;
        this.D = zzdxeVar;
        this.E = zzczeVar;
        this.p = z;
    }

    public final void v0() {
        synchronized (this.h) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void w0() {
        zzcbk zzcbkVar = this.C;
        if (zzcbkVar != null) {
            zzcir zzcirVar = this.f5194c;
            WebView zzD = zzcirVar.zzD();
            WeakHashMap weakHashMap = ViewCompat.f792a;
            if (zzD.isAttachedToWindow()) {
                B(zzD, zzcbkVar, 10);
                return;
            }
            View.OnAttachStateChangeListener onAttachStateChangeListener = this.L;
            if (onAttachStateChangeListener != null) {
                ((View) zzcirVar).removeOnAttachStateChangeListener(onAttachStateChangeListener);
            }
            zzcis zzcisVar = new zzcis(this, zzcbkVar);
            this.L = zzcisVar;
            ((View) zzcirVar).addOnAttachStateChangeListener(zzcisVar);
        }
    }

    public final void x0() {
        zzckn zzcknVar = this.k;
        zzcir zzcirVar = this.f5194c;
        if (zzcknVar != null && ((this.F && this.H <= 0) || this.G || this.q)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u2)).booleanValue() && zzcirVar.zzq() != null) {
                zzbgr.a(zzcirVar.zzq().b, zzcirVar.zzi(), "awfllc");
            }
            zzckn zzcknVar2 = this.k;
            boolean z = false;
            if (!this.G && !this.q) {
                z = true;
            }
            zzcknVar2.a(this.s, this.r, this.t, z);
            this.k = null;
        }
        zzcirVar.p();
    }

    public final void y0(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z, boolean z2, String str) {
        boolean z3;
        boolean z4;
        com.google.android.gms.ads.internal.client.zza zzaVar;
        com.google.android.gms.ads.internal.overlay.zzr zzrVar;
        zzcir zzcirVar = this.f5194c;
        boolean e = zzcirVar.e();
        boolean z5 = false;
        if (S(e, zzcirVar) || z2) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3 || !z) {
            z4 = e;
            z5 = true;
        } else {
            z4 = e;
        }
        zzdir zzdirVar = null;
        if (z3) {
            zzaVar = null;
        } else {
            zzaVar = this.i;
        }
        if (z4) {
            zzrVar = null;
        } else {
            zzrVar = this.j;
        }
        com.google.android.gms.ads.internal.overlay.zzad zzadVar = this.y;
        VersionInfoParcel zzs = zzcirVar.zzs();
        if (!z5) {
            zzdirVar = this.o;
        }
        a(new AdOverlayInfoParcel(zzcVar, zzaVar, zzrVar, zzadVar, zzs, zzcirVar, zzdirVar, str));
    }
}
