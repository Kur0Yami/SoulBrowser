package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzgjq implements zzgje {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8030a;
    public final ExecutorService b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgbc f8031c;
    public final String d;
    public final String e;
    public final zzgnc f;
    public final zzgjs g;

    public zzgjq(Context context, ExecutorService executorService, zzgad zzgadVar, zzgbc zzgbcVar, zzgnc zzgncVar, zzgjs zzgjsVar) {
        this.f8030a = context;
        this.b = executorService;
        this.f8031c = zzgbcVar;
        this.f = zzgncVar;
        this.g = zzgjsVar;
        this.d = zzgadVar.J();
        this.e = zzgadVar.P().F();
    }

    public static zzgcq a(int i) {
        zzgcp G = zzgcq.G();
        G.k();
        ((zzgcq) G.f).L(i);
        return (zzgcq) G.m();
    }

    @Override // com.google.android.gms.internal.ads.zzgje
    public final zzgye zza() {
        int i;
        zzbbl D = zzbbm.D();
        byte[] a2 = zzatg.a();
        zzhzl zzhzlVar = zzhzl.f;
        zzhzl B = zzhzl.B(a2, 0, a2.length);
        D.k();
        ((zzbbm) D.f).E(B);
        long j = Build.VERSION.SDK_INT;
        D.k();
        ((zzbbm) D.f).F(j);
        String str = Build.MODEL;
        D.k();
        ((zzbbm) D.f).G(str);
        Context context = this.f8030a;
        String packageName = context.getPackageName();
        D.k();
        ((zzbbm) D.f).H(packageName);
        try {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            i = -1;
        }
        D.k();
        ((zzbbm) D.f).I(i);
        D.k();
        ((zzbbm) D.f).J(this.d);
        byte[] h = ((zzbbm) D.m()).h();
        zzgvx zzgvxVar = (zzgvx) zzgvy.b;
        Character ch = zzgvxVar.e;
        zzgvy zzgvyVar = zzgvxVar;
        if (ch != null) {
            zzgvyVar = zzgvxVar.i(zzgvxVar.d, null);
        }
        zzgye zzgyeVar = (zzgye) zzgym.i(zzgye.r(this.f8031c.zza(Uri.parse(this.e).buildUpon().appendQueryParameter("aspq", zzgvyVar.g(h, h.length)).build().toString())), new zzgpr() { // from class: com.google.android.gms.internal.ads.zzgjp
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final Object apply(Object obj) {
                zzgbb zzgbbVar = (zzgbb) obj;
                zzgjq zzgjqVar = zzgjq.this;
                zzgnc zzgncVar = zzgjqVar.f;
                if (zzgbbVar.zza() != 200) {
                    zzgncVar.c(20003, new String(zzatg.a(), StandardCharsets.UTF_8));
                    return zzgjq.a(7);
                }
                try {
                    String zzb = zzgbbVar.zzb();
                    if (TextUtils.isEmpty(zzb)) {
                        zzgncVar.b(20004);
                        return zzgjq.a(8);
                    }
                    zzbbo E = zzbbo.E(zzgay.a(zzb, true), zziab.a());
                    if (E.D().F() && E.D().D()) {
                        if (!zzgjqVar.g.a(E)) {
                            zzgncVar.b(20006);
                            return zzgjq.a(12);
                        }
                        zzgcp G = zzgcq.G();
                        zzgcr H = zzgcs.H();
                        zzbbw E2 = E.D().E();
                        H.k();
                        ((zzgcs) H.f).K(E2);
                        G.k();
                        ((zzgcq) G.f).H((zzgcs) H.m());
                        zzhzl G2 = E.D().G();
                        G.k();
                        ((zzgcq) G.f).I(G2);
                        G.k();
                        ((zzgcq) G.f).L(2);
                        return (zzgcq) G.m();
                    }
                    zzgncVar.b(20004);
                    return zzgjq.a(8);
                } catch (Throwable th) {
                    zzgncVar.d(20005, th);
                    return zzgjq.a(6);
                }
            }
        }, this.b);
        zzgpr zzgprVar = new zzgpr() { // from class: com.google.android.gms.internal.ads.zzgjn
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final /* synthetic */ Object apply(Object obj) {
                zzgjq.this.f.b(20007);
                return zzgjq.a(13);
            }
        };
        zzgyb zzgybVar = zzgyb.f8301c;
        zzgye zzgyeVar2 = (zzgye) zzgym.e((zzgye) zzgym.e(zzgyeVar, UnknownHostException.class, zzgprVar, zzgybVar), SocketException.class, new zzgpr() { // from class: com.google.android.gms.internal.ads.zzgjo
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final /* synthetic */ Object apply(Object obj) {
                zzgjq.this.f.b(20008);
                return zzgjq.a(13);
            }
        }, zzgybVar);
        this.f.e(20002, zzgyeVar2);
        return zzgyeVar2;
    }
}
