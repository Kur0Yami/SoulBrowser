package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbfp;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.LinkedList;
import java.util.Map;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfka implements zzfjz {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f7426a;
    public final zzfkg b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfkc f7427c = new zzfkc();

    public zzfka(zzfkg zzfkgVar) {
        this.f7426a = new ConcurrentHashMap(zzfkgVar.i);
        this.b = zzfkgVar;
    }

    public final synchronized boolean a(zzfkj zzfkjVar, zzfki zzfkiVar) {
        boolean z;
        try {
            ConcurrentHashMap concurrentHashMap = this.f7426a;
            zzfjy zzfjyVar = (zzfjy) concurrentHashMap.get(zzfkjVar);
            zzfkiVar.d = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
            if (zzfjyVar == null) {
                zzfkg zzfkgVar = this.b;
                zzfjy zzfjyVar2 = new zzfjy(zzfkgVar.i, zzfkgVar.j * 1000);
                if (concurrentHashMap.size() == zzfkgVar.h) {
                    int i = zzfkgVar.n;
                    int i2 = i - 1;
                    zzfkj zzfkjVar2 = null;
                    if (i != 0) {
                        long j = LongCompanionObject.MAX_VALUE;
                        if (i2 != 0) {
                            if (i2 != 1) {
                                if (i2 == 2) {
                                    int i3 = Integer.MAX_VALUE;
                                    for (Map.Entry entry : concurrentHashMap.entrySet()) {
                                        if (((zzfjy) entry.getValue()).d.d < i3) {
                                            i3 = ((zzfjy) entry.getValue()).d.d;
                                            zzfkjVar2 = (zzfkj) entry.getKey();
                                        }
                                    }
                                    if (zzfkjVar2 != null) {
                                        concurrentHashMap.remove(zzfkjVar2);
                                    }
                                }
                            } else {
                                for (Map.Entry entry2 : concurrentHashMap.entrySet()) {
                                    if (((zzfjy) entry2.getValue()).d.f7447c < j) {
                                        j = ((zzfjy) entry2.getValue()).d.f7447c;
                                        zzfkjVar2 = (zzfkj) entry2.getKey();
                                    }
                                }
                                if (zzfkjVar2 != null) {
                                    concurrentHashMap.remove(zzfkjVar2);
                                }
                            }
                        } else {
                            for (Map.Entry entry3 : concurrentHashMap.entrySet()) {
                                if (((zzfjy) entry3.getValue()).d.f7446a < j) {
                                    j = ((zzfjy) entry3.getValue()).d.f7446a;
                                    zzfkjVar2 = (zzfkj) entry3.getKey();
                                }
                            }
                            if (zzfkjVar2 != null) {
                                concurrentHashMap.remove(zzfkjVar2);
                            }
                        }
                        zzfkc zzfkcVar = this.f7427c;
                        zzfkcVar.f7430c++;
                        zzfkcVar.f7429a.f = true;
                    } else {
                        throw null;
                    }
                }
                concurrentHashMap.put(zzfkjVar, zzfjyVar2);
                zzfkc zzfkcVar2 = this.f7427c;
                zzfkcVar2.b++;
                zzfkcVar2.f7429a.f7428c = true;
                zzfjyVar = zzfjyVar2;
            }
            zzfkx zzfkxVar = zzfjyVar.d;
            zzfkxVar.getClass();
            zzfkxVar.f7447c = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
            zzfkxVar.d++;
            zzfjyVar.a();
            LinkedList linkedList = zzfjyVar.f7423a;
            if (linkedList.size() == zzfjyVar.b) {
                z = false;
            } else {
                linkedList.add(zzfkiVar);
                z = true;
            }
            zzfkc zzfkcVar3 = this.f7427c;
            zzfkcVar3.f++;
            zzfkb zzfkbVar = zzfkcVar3.f7429a;
            zzfkb clone = zzfkbVar.clone();
            zzfkbVar.f7428c = false;
            zzfkbVar.f = false;
            zzfkw zzfkwVar = zzfjyVar.d.b;
            zzfkw clone2 = zzfkwVar.clone();
            zzfkwVar.f7445c = false;
            zzfkwVar.f = 0;
            zzbfp.zzb.zzc D = zzbfp.zzb.D();
            zzbfp.zzb.zza.C0013zza E = zzbfp.zzb.zza.E();
            E.k();
            ((zzbfp.zzb.zza) E.f).F();
            zzbfp.zzb.zzg.zza E2 = zzbfp.zzb.zzg.E();
            boolean z2 = clone.f7428c;
            E2.k();
            ((zzbfp.zzb.zzg) E2.f).F(z2);
            boolean z3 = clone.f;
            E2.k();
            ((zzbfp.zzb.zzg) E2.f).G(z3);
            int i4 = clone2.f;
            E2.k();
            ((zzbfp.zzb.zzg) E2.f).D(i4);
            E.k();
            ((zzbfp.zzb.zza) E.f).D((zzbfp.zzb.zzg) E2.m());
            D.k();
            ((zzbfp.zzb) D.f).E((zzbfp.zzb.zza) E.m());
            zzfkiVar.f7433a.zza().f.B((zzbfp.zzb) D.m());
            c();
        } catch (Throwable th) {
            throw th;
        }
        return z;
    }

    public final synchronized boolean b(zzfkj zzfkjVar) {
        zzfjy zzfjyVar = (zzfjy) this.f7426a.get(zzfkjVar);
        if (zzfjyVar == null) {
            return true;
        }
        zzfkg zzfkgVar = this.b;
        zzfjyVar.a();
        if (zzfjyVar.f7423a.size() < zzfkgVar.i) {
            return true;
        }
        return false;
    }

    public final void c() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.g7)).booleanValue()) {
            StringBuilder sb = new StringBuilder();
            zzfkg zzfkgVar = this.b;
            sb.append(zzfkgVar.g);
            sb.append(" PoolCollection");
            StringBuilder sb2 = new StringBuilder("\n\tPool does not exist: ");
            zzfkc zzfkcVar = this.f7427c;
            sb2.append(zzfkcVar.d);
            sb2.append("\n\tNew pools created: ");
            sb2.append(zzfkcVar.b);
            sb2.append("\n\tPools removed: ");
            sb2.append(zzfkcVar.f7430c);
            sb2.append("\n\tEntries added: ");
            sb2.append(zzfkcVar.f);
            sb2.append("\n\tNo entries retrieved: ");
            sb2.append(zzfkcVar.e);
            sb2.append("\n");
            sb.append(sb2.toString());
            int i = 0;
            for (Map.Entry entry : this.f7426a.entrySet()) {
                i++;
                sb.append(i);
                sb.append(". ");
                sb.append(entry.getValue());
                sb.append("#");
                sb.append(((zzfkj) entry.getKey()).hashCode());
                sb.append("    ");
                int i2 = 0;
                while (true) {
                    zzfjy zzfjyVar = (zzfjy) entry.getValue();
                    zzfjyVar.a();
                    if (i2 >= zzfjyVar.f7423a.size()) {
                        break;
                    }
                    sb.append("[O]");
                    i2++;
                }
                zzfjy zzfjyVar2 = (zzfjy) entry.getValue();
                zzfjyVar2.a();
                for (int size = zzfjyVar2.f7423a.size(); size < zzfkgVar.i; size++) {
                    sb.append("[ ]");
                }
                sb.append("\n");
                zzfkx zzfkxVar = ((zzfjy) entry.getValue()).d;
                sb.append("Created: " + zzfkxVar.f7446a + " Last accessed: " + zzfkxVar.f7447c + " Accesses: " + zzfkxVar.d + "\nEntries retrieved: Valid: " + zzfkxVar.e + " Stale: " + zzfkxVar.f);
                sb.append("\n");
            }
            while (i < zzfkgVar.h) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            String sb3 = sb.toString();
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd(sb3);
        }
    }
}
