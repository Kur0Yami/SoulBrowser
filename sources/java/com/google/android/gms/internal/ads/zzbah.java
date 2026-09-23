package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class zzbah extends zzbbh {
    public static final zzbbi k = new zzbbi();
    public final zzavl h;
    public final Context i;
    public final zzaxn j;

    public zzbah(zzazt zzaztVar, zzavs zzavsVar, int i, Context context, zzavl zzavlVar, zzaxn zzaxnVar) {
        super(zzaztVar, "yYlfo3JOLIfvdgBq3U3deu0pC6YiXdEdqGnVULE/KCllAkaO/XSsVQU+sKDN/uG0", "5ZNtOO3srzHnbl5PLlxEIuHlg0l+6HDun864hT7P5ko=", zzavsVar, i, 27);
        this.i = context;
        this.h = zzavlVar;
        this.j = zzaxnVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0029 A[Catch: all -> 0x003e, TryCatch #2 {all -> 0x003e, blocks: (B:4:0x000d, B:6:0x0017, B:8:0x001d, B:13:0x0029, B:15:0x0033, B:18:0x00ef, B:19:0x00f5, B:35:0x0041, B:37:0x0047, B:38:0x00ec, B:39:0x004d, B:41:0x0077, B:42:0x007d, B:44:0x0083, B:47:0x008b, B:52:0x0097, B:54:0x009d, B:57:0x00a6, B:58:0x00ab, B:59:0x00a9, B:60:0x00ae, B:62:0x00b4, B:64:0x00ba, B:68:0x00a0, B:71:0x00c1, B:73:0x00dc, B:76:0x00e5), top: B:3:0x000d }] */
    @Override // com.google.android.gms.internal.ads.zzbbh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbah.a():void");
    }

    public final String b() {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            byte[] a2 = zzazw.a((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.g3));
            ArrayList arrayList = new ArrayList();
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(a2)));
            if (!Build.TYPE.equals("user")) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzazw.a((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h3)))));
            }
            Context context = this.i;
            String packageName = context.getPackageName();
            ExecutorService executorService = this.f4531a.b;
            return zzbbk.a(context, packageName, arrayList);
        } catch (PackageManager.NameNotFoundException | InterruptedException | NoClassDefFoundError | CertificateEncodingException | CertificateException | ExecutionException unused) {
            return null;
        }
    }

    public final zzaxk c() {
        int E;
        String str;
        ListenableFuture listenableFuture;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.r3)).booleanValue()) {
            E = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.x3)).intValue();
        } else {
            E = this.h.E();
        }
        zzaxk zzaxkVar = new zzaxk((String) this.e.invoke(null, this.i, Boolean.FALSE, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
        zzaxn zzaxnVar = this.j;
        if (zzaxnVar != null && (listenableFuture = zzaxnVar.f4453a) != null) {
            try {
                str = (String) ((zzgxf) listenableFuture).get(E, TimeUnit.MILLISECONDS);
            } catch (InterruptedException | ExecutionException | TimeoutException unused) {
            }
            zzaxkVar.f4449a = str;
            return zzaxkVar;
        }
        str = "E";
        zzaxkVar.f4449a = str;
        return zzaxkVar;
    }
}
