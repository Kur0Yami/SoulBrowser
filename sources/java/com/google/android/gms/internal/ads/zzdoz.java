package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzdoz {

    /* renamed from: a, reason: collision with root package name */
    public final zzdua f5979a;
    public final zzdsp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcsh f5980c;
    public final zzdmg d;

    public zzdoz(zzdua zzduaVar, zzdsp zzdspVar, zzcsh zzcshVar, zzdmg zzdmgVar) {
        this.f5979a = zzduaVar;
        this.b = zzdspVar;
        this.f5980c = zzcshVar;
        this.d = zzdmgVar;
    }

    public final View a() {
        zzcir a2 = this.f5979a.a(com.google.android.gms.ads.internal.client.zzr.zzb(), null, null);
        a2.zzE().setVisibility(8);
        a2.l("/sendMessageToSdk", new zzbnn() { // from class: com.google.android.gms.internal.ads.zzdoy
            @Override // com.google.android.gms.internal.ads.zzbnn
            public final /* synthetic */ void a(Map map, Object obj) {
                zzdoz.this.b.d(map);
            }
        });
        a2.l("/adMuted", new zzbnn() { // from class: com.google.android.gms.internal.ads.zzdot
            @Override // com.google.android.gms.internal.ads.zzbnn
            public final /* synthetic */ void a(Map map, Object obj) {
                zzdoz.this.d.y();
            }
        });
        WeakReference weakReference = new WeakReference(a2);
        zzbnn zzbnnVar = new zzbnn() { // from class: com.google.android.gms.internal.ads.zzdou
            @Override // com.google.android.gms.internal.ads.zzbnn
            public final void a(final Map map, Object obj) {
                zzcir zzcirVar = (zzcir) obj;
                zzcjc D = zzcirVar.D();
                final zzdoz zzdozVar = zzdoz.this;
                D.k = new zzckn() { // from class: com.google.android.gms.internal.ads.zzdox
                    @Override // com.google.android.gms.internal.ads.zzckn
                    public final /* synthetic */ void a(String str, int i, String str2, boolean z) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("messageType", "htmlLoaded");
                        hashMap.put("id", (String) map.get("id"));
                        zzdoz.this.b.d(hashMap);
                    }
                };
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    zzcirVar.loadData(str, "text/html", "UTF-8");
                } else {
                    zzcirVar.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                }
            }
        };
        zzdsp zzdspVar = this.b;
        zzdspVar.b("/loadHtml", new zzdso(zzdspVar, weakReference, "/loadHtml", zzbnnVar));
        zzdspVar.b("/showOverlay", new zzdso(zzdspVar, new WeakReference(a2), "/showOverlay", new zzbnn() { // from class: com.google.android.gms.internal.ads.zzdov
            @Override // com.google.android.gms.internal.ads.zzbnn
            public final void a(Map map, Object obj) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Showing native ads overlay.");
                ((zzcir) obj).zzE().setVisibility(0);
                zzdoz.this.f5980c.j = true;
            }
        }));
        zzdspVar.b("/hideOverlay", new zzdso(zzdspVar, new WeakReference(a2), "/hideOverlay", new zzbnn() { // from class: com.google.android.gms.internal.ads.zzdow
            @Override // com.google.android.gms.internal.ads.zzbnn
            public final void a(Map map, Object obj) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Hiding native ads overlay.");
                ((zzcir) obj).zzE().setVisibility(8);
                zzdoz.this.f5980c.j = false;
            }
        }));
        return a2.zzE();
    }
}
