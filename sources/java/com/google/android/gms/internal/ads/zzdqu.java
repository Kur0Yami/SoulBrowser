package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdqu {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6042a;
    public final zzdqa b;

    /* renamed from: c, reason: collision with root package name */
    public final zzayq f6043c;
    public final VersionInfoParcel d;
    public final com.google.android.gms.ads.internal.zza e;
    public final zzbfj f;
    public final Executor g;
    public final zzbjn h;
    public final zzdrm i;
    public final zzdua j;
    public final ScheduledExecutorService k;
    public final zzdsv l;
    public final zzdxe m;
    public final zzfpi n;
    public final zzehu o;
    public final zzeif p;
    public final zzfio q;
    public final zzdwy r;
    public final zzdyh s;

    public zzdqu(Context context, zzdqa zzdqaVar, zzayq zzayqVar, VersionInfoParcel versionInfoParcel, com.google.android.gms.ads.internal.zza zzaVar, zzbfj zzbfjVar, Executor executor, zzfik zzfikVar, zzdrm zzdrmVar, zzdua zzduaVar, ScheduledExecutorService scheduledExecutorService, zzdxe zzdxeVar, zzfpi zzfpiVar, zzehu zzehuVar, zzdsv zzdsvVar, zzeif zzeifVar, zzfio zzfioVar, zzdwy zzdwyVar, zzdyh zzdyhVar) {
        this.f6042a = context;
        this.b = zzdqaVar;
        this.f6043c = zzayqVar;
        this.d = versionInfoParcel;
        this.e = zzaVar;
        this.f = zzbfjVar;
        this.g = executor;
        this.h = zzfikVar.j;
        this.i = zzdrmVar;
        this.j = zzduaVar;
        this.k = scheduledExecutorService;
        this.m = zzdxeVar;
        this.n = zzfpiVar;
        this.o = zzehuVar;
        this.l = zzdsvVar;
        this.p = zzeifVar;
        this.q = zzfioVar;
        this.r = zzdwyVar;
        this.s = zzdyhVar;
    }

    public static Integer c(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static final com.google.android.gms.ads.internal.client.zzez e(JSONObject jSONObject) {
        if (jSONObject != null) {
            String optString = jSONObject.optString("reason");
            String optString2 = jSONObject.optString("ping_url");
            if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                return new com.google.android.gms.ads.internal.client.zzez(optString, optString2);
            }
            return null;
        }
        return null;
    }

    public final ListenableFuture a(JSONArray jSONArray, boolean z, boolean z2, zzdwm zzdwmVar) {
        int i;
        if (jSONArray != null && jSONArray.length() > 0) {
            ArrayList arrayList = new ArrayList();
            if (z2) {
                i = jSONArray.length();
            } else {
                i = 1;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.P2)).booleanValue()) {
                androidx.work.impl.workers.a.z(zzdwmVar.f6209c, this.r.e);
            }
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(b(jSONArray.optJSONObject(i2), z, null));
            }
            return zzgym.i(zzgym.j(arrayList), zzdqt.f6041a, this.g);
        }
        return zzgym.a(Collections.EMPTY_LIST);
    }

    /* JADX WARN: Type inference failed for: r13v4, types: [com.google.android.gms.internal.ads.zzgxu, java.lang.Object] */
    public final ListenableFuture b(JSONObject jSONObject, boolean z, zzdwm zzdwmVar) {
        if (jSONObject == null) {
            return zzgyq.f;
        }
        HashMap hashMap = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.M4)).booleanValue()) {
            if (jSONObject.has((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.N4))) {
                hashMap = new HashMap();
                for (String str : ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.O4)).split(",")) {
                    try {
                        hashMap.put(str, jSONObject.getString(str));
                    } catch (JSONException unused) {
                    }
                }
            }
        }
        HashMap hashMap2 = hashMap;
        final String optString = jSONObject.optString(ImagesContract.URL);
        if (TextUtils.isEmpty(optString) && hashMap2 == null) {
            return zzgyq.f;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.P2)).booleanValue() && zzdwmVar != null) {
            androidx.work.impl.workers.a.z(zzdwmVar.f6209c, this.r.e);
        }
        final double optDouble = jSONObject.optDouble("scale", 1.0d);
        final boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        final int optInt = jSONObject.optInt("width", -1);
        final int optInt2 = jSONObject.optInt("height", -1);
        if (!z && hashMap2 == null) {
            final zzdqa zzdqaVar = this.b;
            ListenableFuture i = zzgym.i(zzgym.i(zzdqaVar.f6015a.zza(optString), new zzgpr() { // from class: com.google.android.gms.internal.ads.zzdpz
                @Override // com.google.android.gms.internal.ads.zzgpr
                public final /* synthetic */ Object apply(Object obj) {
                    zzdqa zzdqaVar2 = zzdqa.this;
                    zzdqaVar2.getClass();
                    byte[] bArr = ((zzarg) obj).b;
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inDensity = (int) (optDouble * 160.0d);
                    if (!optBoolean) {
                        options.inPreferredConfig = Bitmap.Config.RGB_565;
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.X6)).booleanValue()) {
                        options.inJustDecodeBounds = true;
                        zzdqaVar2.a(bArr, options);
                        options.inJustDecodeBounds = false;
                        int i2 = options.outWidth * options.outHeight;
                        if (i2 > 0) {
                            options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i2 - 1) / ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y6)).intValue())) / 2);
                        }
                    }
                    return zzdqaVar2.a(bArr, options);
                }
            }, zzdqaVar.f6016c), new zzgpr() { // from class: com.google.android.gms.internal.ads.zzdqj
                @Override // com.google.android.gms.internal.ads.zzgpr
                public final /* synthetic */ Object apply(Object obj) {
                    return new zzbjj(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(optString), optDouble, optInt, optInt2, null);
                }
            }, this.g);
            if (jSONObject.optBoolean("require")) {
                return zzgym.h(i, new zzdqq(i), zzcdo.g);
            }
            return zzgym.f(i, Exception.class, new Object(), zzcdo.g);
        }
        return zzgym.a(new zzbjj(null, Uri.parse(optString), optDouble, optInt, optInt2, hashMap2));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.common.util.concurrent.ListenableFuture d(org.json.JSONObject r11, final com.google.android.gms.internal.ads.zzfhr r12, final com.google.android.gms.internal.ads.zzfhu r13, final com.google.android.gms.ads.internal.zzb r14, final com.google.android.gms.internal.ads.zzcbf r15) {
        /*
            r10 = this;
            java.lang.String r0 = "base_url"
            java.lang.String r8 = r11.optString(r0)
            java.lang.String r0 = "html"
            java.lang.String r9 = r11.optString(r0)
            java.lang.String r0 = "width"
            r1 = 0
            int r0 = r11.optInt(r0, r1)
            java.lang.String r2 = "height"
            int r11 = r11.optInt(r2, r1)
            if (r0 != 0) goto L24
            if (r11 == 0) goto L1e
            goto L25
        L1e:
            com.google.android.gms.ads.internal.client.zzr r11 = com.google.android.gms.ads.internal.client.zzr.zzb()
            r3 = r11
            goto L32
        L24:
            r1 = r0
        L25:
            com.google.android.gms.ads.internal.client.zzr r0 = new com.google.android.gms.ads.internal.client.zzr
            com.google.android.gms.ads.AdSize r2 = new com.google.android.gms.ads.AdSize
            r2.<init>(r1, r11)
            android.content.Context r11 = r10.f6042a
            r0.<init>(r11, r2)
            r3 = r0
        L32:
            com.google.android.gms.internal.ads.zzdrm r2 = r10.i
            r2.getClass()
            com.google.android.gms.internal.ads.zzbgb r11 = com.google.android.gms.internal.ads.zzbgk.P2
            com.google.android.gms.internal.ads.zzbgi r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r11 = r0.a(r11)
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 == 0) goto L52
            com.google.android.gms.internal.ads.zzdwy r11 = r2.i
            android.os.Bundle r11 = r11.e
            java.lang.String r0 = "native-assets-loading-video-composition-start"
            androidx.work.impl.workers.a.z(r0, r11)
        L52:
            com.google.common.util.concurrent.ListenableFuture r11 = com.google.android.gms.internal.ads.zzgyq.f
            com.google.android.gms.internal.ads.zzdrg r1 = new com.google.android.gms.internal.ads.zzdrg
            r4 = r12
            r5 = r13
            r6 = r14
            r7 = r15
            r1.<init>()
            java.util.concurrent.Executor r12 = r2.b
            com.google.common.util.concurrent.ListenableFuture r11 = com.google.android.gms.internal.ads.zzgym.h(r11, r1, r12)
            com.google.android.gms.internal.ads.zzdqo r12 = new com.google.android.gms.internal.ads.zzdqo
            r12.<init>()
            com.google.android.gms.internal.ads.zzgyw r13 = com.google.android.gms.internal.ads.zzcdo.g
            com.google.common.util.concurrent.ListenableFuture r11 = com.google.android.gms.internal.ads.zzgym.h(r11, r12, r13)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdqu.d(org.json.JSONObject, com.google.android.gms.internal.ads.zzfhr, com.google.android.gms.internal.ads.zzfhu, com.google.android.gms.ads.internal.zzb, com.google.android.gms.internal.ads.zzcbf):com.google.common.util.concurrent.ListenableFuture");
    }
}
