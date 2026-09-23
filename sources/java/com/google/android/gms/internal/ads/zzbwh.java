package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.nativead.NativeAd;

/* loaded from: classes.dex */
public final class zzbwh extends NativeAd.Image {
    public final zzbjy b;

    /* renamed from: c, reason: collision with root package name */
    public final Drawable f4945c;
    public final Uri d;
    public final double e;
    public final int f;
    public final int g;

    /* JADX WARN: Can't wrap try/catch for region: R(20:1|(2:2|3)|(17:5|6|7|8|9|10|11|12|13|14|15|16|17|18|(2:23|24)|20|21)|40|6|7|8|9|10|11|12|13|14|15|16|17|18|(0)|20|21) */
    /* JADX WARN: Can't wrap try/catch for region: R(21:1|2|3|(17:5|6|7|8|9|10|11|12|13|14|15|16|17|18|(2:23|24)|20|21)|40|6|7|8|9|10|11|12|13|14|15|16|17|18|(0)|20|21) */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0052, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0053, code lost:
    
        com.google.android.gms.ads.internal.util.client.zzo.zzg(com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0044, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0045, code lost:
    
        com.google.android.gms.ads.internal.util.client.zzo.zzg(com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, r2);
        r2 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0034, code lost:
    
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0035, code lost:
    
        com.google.android.gms.ads.internal.util.client.zzo.zzg(com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, r5);
        r2 = 1.0d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0026, code lost:
    
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0027, code lost:
    
        com.google.android.gms.ads.internal.util.client.zzo.zzg(com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbwh(com.google.android.gms.internal.ads.zzbjy r5) {
        /*
            r4 = this;
            java.lang.String r0 = ""
            r4.<init>()
            r4.b = r5
            r1 = 0
            com.google.android.gms.dynamic.IObjectWrapper r5 = r5.zzb()     // Catch: android.os.RemoteException -> L15
            if (r5 == 0) goto L17
            java.lang.Object r5 = com.google.android.gms.dynamic.ObjectWrapper.f2(r5)     // Catch: android.os.RemoteException -> L15
            android.graphics.drawable.Drawable r5 = (android.graphics.drawable.Drawable) r5     // Catch: android.os.RemoteException -> L15
            goto L1d
        L15:
            r5 = move-exception
            goto L19
        L17:
            r5 = r1
            goto L1d
        L19:
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r0, r5)
            goto L17
        L1d:
            r4.f4945c = r5
            com.google.android.gms.internal.ads.zzbjy r5 = r4.b     // Catch: android.os.RemoteException -> L26
            android.net.Uri r5 = r5.zzc()     // Catch: android.os.RemoteException -> L26
            goto L2b
        L26:
            r5 = move-exception
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r0, r5)
            r5 = r1
        L2b:
            r4.d = r5
            com.google.android.gms.internal.ads.zzbjy r5 = r4.b     // Catch: android.os.RemoteException -> L34
            double r2 = r5.zzd()     // Catch: android.os.RemoteException -> L34
            goto L3a
        L34:
            r5 = move-exception
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r0, r5)
            r2 = 4607182418800017408(0x3ff0000000000000, double:1.0)
        L3a:
            r4.e = r2
            r5 = -1
            com.google.android.gms.internal.ads.zzbjy r2 = r4.b     // Catch: android.os.RemoteException -> L44
            int r2 = r2.zze()     // Catch: android.os.RemoteException -> L44
            goto L49
        L44:
            r2 = move-exception
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r0, r2)
            r2 = r5
        L49:
            r4.f = r2
            com.google.android.gms.internal.ads.zzbjy r2 = r4.b     // Catch: android.os.RemoteException -> L52
            int r5 = r2.zzf()     // Catch: android.os.RemoteException -> L52
            goto L56
        L52:
            r2 = move-exception
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r0, r2)
        L56:
            r4.g = r5
            com.google.android.gms.internal.ads.zzbgb r5 = com.google.android.gms.internal.ads.zzbgk.M4
            com.google.android.gms.internal.ads.zzbgi r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r5 = r0.a(r5)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 == 0) goto L70
            com.google.android.gms.internal.ads.zzbjy r5 = r4.b     // Catch: android.os.RemoteException -> L70
            java.util.Map r1 = r5.zzg()     // Catch: android.os.RemoteException -> L70
        L70:
            r4.f3201a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbwh.<init>(com.google.android.gms.internal.ads.zzbjy):void");
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final Drawable getDrawable() {
        return this.f4945c;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final double getScale() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final Uri getUri() {
        return this.d;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final int zza() {
        return this.f;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final int zzb() {
        return this.g;
    }
}
