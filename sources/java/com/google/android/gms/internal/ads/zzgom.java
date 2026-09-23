package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
public final class zzgom {

    /* renamed from: c, reason: collision with root package name */
    public static final zzgpe f8183c = new zzgpe("OverlayDisplayService");
    public static final Intent d = new Intent("com.google.android.play.core.lmd.BIND_OVERLAY_DISPLAY_SERVICE").setPackage("com.android.vending");

    /* renamed from: a, reason: collision with root package name */
    public final zzgpd f8184a;
    public final String b;

    public zzgom(Context context) {
        if (zzgpg.a(context)) {
            this.f8184a = new zzgpd(context.getApplicationContext(), f8183c, d);
        } else {
            this.f8184a = null;
        }
        this.b = context.getPackageName();
    }

    public static void b(String str, zzgol zzgolVar) {
        String str2;
        if (str == null) {
            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } else {
            str2 = str;
        }
        if (!str2.trim().isEmpty()) {
            str.getClass();
            zzgolVar.zza(str.trim());
        }
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zzgno] */
    public static boolean c(zzgor zzgorVar, String str, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (str2 == null) {
                str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (!str2.trim().isEmpty()) {
                return true;
            }
        }
        f8183c.c(str, new Object[0]);
        ?? obj = new Object();
        byte b = (byte) (obj.d | 1);
        obj.f8163c = 0;
        obj.f8162a = 8160;
        obj.d = (byte) (((byte) (b | 2)) | 1);
        zzgorVar.a(obj.a());
        return false;
    }

    public final void a(final zzgot zzgotVar, final zzgor zzgorVar, final int i) {
        zzgpd zzgpdVar = this.f8184a;
        if (zzgpdVar == null) {
            f8183c.c("error: %s", "Play Store not found.");
        } else {
            if (!c(zzgorVar, "Failed to apply OverlayDisplayUpdateRequest: missing appId and sessionToken.", Arrays.asList(zzgotVar.a(), zzgotVar.b()))) {
                return;
            }
            zzgpdVar.a(new zzgoz(zzgpdVar, new Runnable() { // from class: com.google.android.gms.internal.ads.zzgoa
                @Override // java.lang.Runnable
                public final void run() {
                    zzgot zzgotVar2 = zzgotVar;
                    int i2 = i;
                    zzgor zzgorVar2 = zzgorVar;
                    zzgom zzgomVar = zzgom.this;
                    String str = zzgomVar.b;
                    try {
                        zzgpd zzgpdVar2 = zzgomVar.f8184a;
                        if (zzgpdVar2 != null) {
                            zzgnh zzgnhVar = zzgpdVar2.j;
                            if (zzgnhVar == null) {
                                return;
                            }
                            final Bundle bundle = new Bundle();
                            bundle.putString("callerPackage", str);
                            bundle.putInt("displayMode", i2);
                            zzgom.b(zzgotVar2.a(), new zzgol() { // from class: com.google.android.gms.internal.ads.zzgoi
                                @Override // com.google.android.gms.internal.ads.zzgol
                                public final /* synthetic */ void zza(String str2) {
                                    zzgpe zzgpeVar = zzgom.f8183c;
                                    bundle.putString("sessionToken", str2);
                                }
                            });
                            zzgom.b(zzgotVar2.b(), new zzgol() { // from class: com.google.android.gms.internal.ads.zzgnz
                                @Override // com.google.android.gms.internal.ads.zzgol
                                public final /* synthetic */ void zza(String str2) {
                                    zzgpe zzgpeVar = zzgom.f8183c;
                                    bundle.putString("appId", str2);
                                }
                            });
                            zzgnhVar.a4(bundle, new zzgok(zzgomVar, zzgorVar2));
                            return;
                        }
                        throw null;
                    } catch (RemoteException e) {
                        zzgom.f8183c.d(e, "switchDisplayMode overlay display to %d from: %s", Integer.valueOf(i2), str);
                    }
                }
            }));
        }
    }
}
