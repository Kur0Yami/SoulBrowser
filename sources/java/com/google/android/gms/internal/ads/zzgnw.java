package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgnw implements zzgnu {

    /* renamed from: a, reason: collision with root package name */
    public final zzgom f8168a;

    public zzgnw(zzgom zzgomVar) {
        this.f8168a = zzgomVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgnu
    public final void a(zzgot zzgotVar, zzgor zzgorVar) {
        this.f8168a.a(zzgotVar, zzgorVar, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzgnu
    public final void b(final zzgoo zzgooVar, final zzgor zzgorVar) {
        final zzgom zzgomVar = this.f8168a;
        zzgpd zzgpdVar = zzgomVar.f8184a;
        if (zzgpdVar == null) {
            zzgom.f8183c.c("error: %s", "Play Store not found.");
        } else {
            if (!zzgom.c(zzgorVar, "Failed to apply OverlayDisplayShowRequest: missing appId and sessionToken.", Arrays.asList(null, zzgooVar.b()))) {
                return;
            }
            zzgpdVar.a(new zzgoz(zzgpdVar, new Runnable() { // from class: com.google.android.gms.internal.ads.zzgoj
                @Override // java.lang.Runnable
                public final void run() {
                    zzgoo zzgooVar2 = zzgooVar;
                    zzgor zzgorVar2 = zzgorVar;
                    zzgom zzgomVar2 = zzgom.this;
                    String str = zzgomVar2.b;
                    try {
                        zzgpd zzgpdVar2 = zzgomVar2.f8184a;
                        if (zzgpdVar2 != null) {
                            zzgnh zzgnhVar = zzgpdVar2.j;
                            if (zzgnhVar == null) {
                                return;
                            }
                            final Bundle bundle = new Bundle();
                            bundle.putString("callerPackage", str);
                            bundle.putBinder("windowToken", zzgooVar2.a());
                            zzgom.b(zzgooVar2.f(), new zzgol() { // from class: com.google.android.gms.internal.ads.zzgob
                                @Override // com.google.android.gms.internal.ads.zzgol
                                public final /* synthetic */ void zza(String str2) {
                                    zzgpe zzgpeVar = zzgom.f8183c;
                                    bundle.putString("adFieldEnifd", str2);
                                }
                            });
                            bundle.putInt("layoutGravity", zzgooVar2.c());
                            bundle.putFloat("layoutVerticalMargin", zzgooVar2.d());
                            bundle.putInt("displayMode", 0);
                            bundle.putInt("triggerMode", 0);
                            bundle.putInt("windowWidthPx", zzgooVar2.e());
                            zzgom.b(null, new zzgol() { // from class: com.google.android.gms.internal.ads.zzgoc
                                @Override // com.google.android.gms.internal.ads.zzgol
                                public final /* synthetic */ void zza(String str2) {
                                    zzgpe zzgpeVar = zzgom.f8183c;
                                    bundle.putString("deeplinkUrl", str2);
                                }
                            });
                            zzgom.b(null, new zzgol() { // from class: com.google.android.gms.internal.ads.zzgod
                                @Override // com.google.android.gms.internal.ads.zzgol
                                public final /* synthetic */ void zza(String str2) {
                                    zzgpe zzgpeVar = zzgom.f8183c;
                                    bundle.putString("sessionToken", str2);
                                }
                            });
                            zzgom.b(zzgooVar2.b(), new zzgol() { // from class: com.google.android.gms.internal.ads.zzgoe
                                @Override // com.google.android.gms.internal.ads.zzgol
                                public final /* synthetic */ void zza(String str2) {
                                    zzgpe zzgpeVar = zzgom.f8183c;
                                    bundle.putString("appId", str2);
                                }
                            });
                            zzgom.b(null, new zzgol() { // from class: com.google.android.gms.internal.ads.zzgof
                                @Override // com.google.android.gms.internal.ads.zzgol
                                public final /* synthetic */ void zza(String str2) {
                                    zzgpe zzgpeVar = zzgom.f8183c;
                                    bundle.putString("thirdPartyAuthCallerId", str2);
                                }
                            });
                            bundle.putBoolean("stableSessionToken", true);
                            zzgnhVar.m3(str, bundle, new zzgok(zzgomVar2, zzgorVar2));
                            return;
                        }
                        throw null;
                    } catch (RemoteException e) {
                        zzgom.f8183c.d(e, "show overlay display from: %s", str);
                    }
                }
            }));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgnu
    public final void c(zzgot zzgotVar, zzgor zzgorVar) {
        this.f8168a.a(zzgotVar, zzgorVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzgnu
    public final void d(final zzgnt zzgntVar, final zzgor zzgorVar) {
        final zzgom zzgomVar = this.f8168a;
        zzgpd zzgpdVar = zzgomVar.f8184a;
        if (zzgpdVar == null) {
            zzgom.f8183c.c("error: %s", "Play Store not found.");
        } else {
            if (!zzgom.c(zzgorVar, "Failed to apply OverlayDisplayDismissRequest: missing appId and sessionToken.", Arrays.asList(zzgntVar.a(), zzgntVar.b()))) {
                return;
            }
            zzgpdVar.a(new zzgoz(zzgpdVar, new Runnable() { // from class: com.google.android.gms.internal.ads.zzgny
                @Override // java.lang.Runnable
                public final void run() {
                    zzgnt zzgntVar2 = zzgntVar;
                    zzgor zzgorVar2 = zzgorVar;
                    zzgom zzgomVar2 = zzgom.this;
                    String str = zzgomVar2.b;
                    try {
                        zzgpd zzgpdVar2 = zzgomVar2.f8184a;
                        if (zzgpdVar2 != null) {
                            zzgnh zzgnhVar = zzgpdVar2.j;
                            if (zzgnhVar == null) {
                                return;
                            }
                            final Bundle bundle = new Bundle();
                            bundle.putString("callerPackage", str);
                            zzgom.b(zzgntVar2.a(), new zzgol() { // from class: com.google.android.gms.internal.ads.zzgog
                                @Override // com.google.android.gms.internal.ads.zzgol
                                public final /* synthetic */ void zza(String str2) {
                                    zzgpe zzgpeVar = zzgom.f8183c;
                                    bundle.putString("sessionToken", str2);
                                }
                            });
                            zzgom.b(zzgntVar2.b(), new zzgol() { // from class: com.google.android.gms.internal.ads.zzgoh
                                @Override // com.google.android.gms.internal.ads.zzgol
                                public final /* synthetic */ void zza(String str2) {
                                    zzgpe zzgpeVar = zzgom.f8183c;
                                    bundle.putString("appId", str2);
                                }
                            });
                            zzgnhVar.w0(bundle, new zzgok(zzgomVar2, zzgorVar2));
                            return;
                        }
                        throw null;
                    } catch (RemoteException e) {
                        zzgom.f8183c.d(e, "dismiss overlay display from: %s", str);
                    }
                }
            }));
        }
    }
}
