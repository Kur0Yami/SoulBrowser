package com.google.android.gms.internal.ads;

import kotlin.uuid.Uuid;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzakj {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    public static void a(int i, zzap zzapVar, zzt zztVar, zzap zzapVar2, zzap... zzapVarArr) {
        if (zzapVar2 == null) {
            zzapVar2 = new zzap(new zzao[0]);
        }
        if (zzapVar != null) {
            zzgvs zzgvsVar = zzgtd.f;
            ?? zzgsxVar = new zzgsx(4);
            for (zzao zzaoVar : zzapVar.f4304a) {
                if (zzfs.class.isAssignableFrom(zzaoVar.getClass())) {
                    zzgsxVar.c((zzao) zzfs.class.cast(zzaoVar));
                }
            }
            zzguy zzguyVar = (zzguy) zzgsxVar.f();
            int i2 = zzguyVar.h;
            for (int i3 = 0; i3 < i2; i3++) {
                zzfs zzfsVar = (zzfs) zzguyVar.get(i3);
                if (!zzfsVar.f7610a.equals("com.android.capture.fps") || i == 2) {
                    zzapVar2 = zzapVar2.c(zzfsVar);
                }
            }
        }
        for (zzap zzapVar3 : zzapVarArr) {
            zzapVar2 = zzapVar2.b(zzapVar3);
        }
        if (zzapVar2.f4304a.length > 0) {
            zztVar.j = zzapVar2;
        }
    }

    public static zzail b(int i, String str, zzer zzerVar) {
        int b = zzerVar.b();
        if (zzerVar.b() == 1684108385) {
            zzerVar.G(8);
            return new zzail(str, null, zzgtd.r(zzerVar.l(b - 16)));
        }
        zzee.c("MetadataUtil", "Failed to parse text attribute: ".concat(zzfw.a(i)));
        return null;
    }

    public static zzaig c(int i, String str, zzer zzerVar, boolean z, boolean z2) {
        int d = d(zzerVar);
        if (z2) {
            d = Math.min(1, d);
        }
        if (d >= 0) {
            if (z) {
                return new zzail(str, null, zzgtd.r(Integer.toString(d)));
            }
            return new zzaia("und", str, Integer.toString(d));
        }
        zzee.c("MetadataUtil", "Failed to parse uint8 attribute: ".concat(zzfw.a(i)));
        return null;
    }

    public static int d(zzer zzerVar) {
        int b = zzerVar.b();
        if (zzerVar.b() == 1684108385) {
            zzerVar.G(8);
            int i = b - 16;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4 && (zzerVar.I() & Uuid.SIZE_BITS) == 0) {
                            return zzerVar.h();
                        }
                    } else {
                        return zzerVar.O();
                    }
                } else {
                    return zzerVar.L();
                }
            } else {
                return zzerVar.K();
            }
        }
        zzee.c("MetadataUtil", "Failed to parse data atom to int");
        return -1;
    }

    public static zzail e(int i, String str, zzer zzerVar) {
        int b = zzerVar.b();
        if (zzerVar.b() == 1684108385 && b >= 22) {
            zzerVar.G(10);
            int L = zzerVar.L();
            if (L > 0) {
                StringBuilder sb = new StringBuilder(String.valueOf(L).length());
                sb.append(L);
                String sb2 = sb.toString();
                int L2 = zzerVar.L();
                if (L2 > 0) {
                    StringBuilder sb3 = new StringBuilder(sb2.length() + 1 + String.valueOf(L2).length());
                    sb3.append(sb2);
                    sb3.append("/");
                    sb3.append(L2);
                    sb2 = sb3.toString();
                }
                return new zzail(str, null, zzgtd.r(sb2));
            }
        }
        zzee.c("MetadataUtil", "Failed to parse index/count attribute: ".concat(zzfw.a(i)));
        return null;
    }
}
