package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;

/* loaded from: classes.dex */
final class zzxb implements zzaav, zzvv {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f9355a;
    public final zzhy b;

    /* renamed from: c, reason: collision with root package name */
    public final zzwz f9356c;
    public final zzaer d;
    public final zzdq e;
    public volatile boolean g;
    public long i;
    public zzhf j;
    public zzaga k;
    public boolean l;
    public final /* synthetic */ zzxk m;
    public final zzafo f = new Object();
    public boolean h = true;

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.ads.zzafo, java.lang.Object] */
    public zzxb(zzxk zzxkVar, Uri uri, zzhb zzhbVar, zzwz zzwzVar, zzaer zzaerVar, zzdq zzdqVar) {
        this.m = zzxkVar;
        this.f9355a = uri;
        this.b = new zzhy(zzhbVar);
        this.f9356c = zzwzVar;
        this.d = zzaerVar;
        this.e = zzdqVar;
        zzvx.f9332a.getAndIncrement();
        this.j = b(0L, null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(35:9|(1:140)(1:13)|14|(1:16)|17|18|(6:124|125|126|127|128|(28:130|21|(1:23)(1:123)|24|(1:26)(1:122)|27|(1:29)(1:121)|30|(1:32)(1:120)|33|(4:35|36|37|(16:39|(1:41)(1:111)|42|(1:110)(1:46)|47|(1:49)|50|(1:52)|53|(1:(3:55|56|(6:58|59|1d6|67|(3:69|70|71)(1:73)|72)(2:82|83))(1:109))|84|(1:86)(3:93|(1:95)|96)|87|88|90|91)(2:112|113))|119|(0)(0)|42|(1:44)|110|47|(0)|50|(0)|53|(2:(0)(0)|72)|84|(0)(0)|87|88|90|91)(2:131|132))|20|21|(0)(0)|24|(0)(0)|27|(0)(0)|30|(0)(0)|33|(0)|119|(0)(0)|42|(0)|110|47|(0)|50|(0)|53|(2:(0)(0)|72)|84|(0)(0)|87|88|90|91) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0211 A[EDGE_INSN: B:109:0x0211->B:84:0x0211 BREAK  A[LOOP:1: B:54:0x01ce->B:72:0x0202], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00dc A[Catch: all -> 0x00c0, TryCatch #2 {all -> 0x00c0, blocks: (B:125:0x008e, B:127:0x0094, B:21:0x00d2, B:23:0x00dc, B:24:0x00e8, B:26:0x00f2, B:27:0x00fe, B:29:0x0108, B:30:0x0114, B:32:0x011e, B:33:0x0130, B:35:0x013a, B:37:0x0140, B:41:0x0179, B:42:0x0182, B:44:0x018c, B:46:0x0191, B:47:0x01aa, B:49:0x01bf, B:50:0x01c2, B:52:0x01c6, B:113:0x014a, B:116:0x016a, B:132:0x00a0, B:135:0x00c4), top: B:124:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f2 A[Catch: all -> 0x00c0, TryCatch #2 {all -> 0x00c0, blocks: (B:125:0x008e, B:127:0x0094, B:21:0x00d2, B:23:0x00dc, B:24:0x00e8, B:26:0x00f2, B:27:0x00fe, B:29:0x0108, B:30:0x0114, B:32:0x011e, B:33:0x0130, B:35:0x013a, B:37:0x0140, B:41:0x0179, B:42:0x0182, B:44:0x018c, B:46:0x0191, B:47:0x01aa, B:49:0x01bf, B:50:0x01c2, B:52:0x01c6, B:113:0x014a, B:116:0x016a, B:132:0x00a0, B:135:0x00c4), top: B:124:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0108 A[Catch: all -> 0x00c0, TryCatch #2 {all -> 0x00c0, blocks: (B:125:0x008e, B:127:0x0094, B:21:0x00d2, B:23:0x00dc, B:24:0x00e8, B:26:0x00f2, B:27:0x00fe, B:29:0x0108, B:30:0x0114, B:32:0x011e, B:33:0x0130, B:35:0x013a, B:37:0x0140, B:41:0x0179, B:42:0x0182, B:44:0x018c, B:46:0x0191, B:47:0x01aa, B:49:0x01bf, B:50:0x01c2, B:52:0x01c6, B:113:0x014a, B:116:0x016a, B:132:0x00a0, B:135:0x00c4), top: B:124:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x011e A[Catch: all -> 0x00c0, TryCatch #2 {all -> 0x00c0, blocks: (B:125:0x008e, B:127:0x0094, B:21:0x00d2, B:23:0x00dc, B:24:0x00e8, B:26:0x00f2, B:27:0x00fe, B:29:0x0108, B:30:0x0114, B:32:0x011e, B:33:0x0130, B:35:0x013a, B:37:0x0140, B:41:0x0179, B:42:0x0182, B:44:0x018c, B:46:0x0191, B:47:0x01aa, B:49:0x01bf, B:50:0x01c2, B:52:0x01c6, B:113:0x014a, B:116:0x016a, B:132:0x00a0, B:135:0x00c4), top: B:124:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x013a A[Catch: all -> 0x00c0, TRY_LEAVE, TryCatch #2 {all -> 0x00c0, blocks: (B:125:0x008e, B:127:0x0094, B:21:0x00d2, B:23:0x00dc, B:24:0x00e8, B:26:0x00f2, B:27:0x00fe, B:29:0x0108, B:30:0x0114, B:32:0x011e, B:33:0x0130, B:35:0x013a, B:37:0x0140, B:41:0x0179, B:42:0x0182, B:44:0x018c, B:46:0x0191, B:47:0x01aa, B:49:0x01bf, B:50:0x01c2, B:52:0x01c6, B:113:0x014a, B:116:0x016a, B:132:0x00a0, B:135:0x00c4), top: B:124:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0179 A[Catch: all -> 0x00c0, TryCatch #2 {all -> 0x00c0, blocks: (B:125:0x008e, B:127:0x0094, B:21:0x00d2, B:23:0x00dc, B:24:0x00e8, B:26:0x00f2, B:27:0x00fe, B:29:0x0108, B:30:0x0114, B:32:0x011e, B:33:0x0130, B:35:0x013a, B:37:0x0140, B:41:0x0179, B:42:0x0182, B:44:0x018c, B:46:0x0191, B:47:0x01aa, B:49:0x01bf, B:50:0x01c2, B:52:0x01c6, B:113:0x014a, B:116:0x016a, B:132:0x00a0, B:135:0x00c4), top: B:124:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x018c A[Catch: all -> 0x00c0, TryCatch #2 {all -> 0x00c0, blocks: (B:125:0x008e, B:127:0x0094, B:21:0x00d2, B:23:0x00dc, B:24:0x00e8, B:26:0x00f2, B:27:0x00fe, B:29:0x0108, B:30:0x0114, B:32:0x011e, B:33:0x0130, B:35:0x013a, B:37:0x0140, B:41:0x0179, B:42:0x0182, B:44:0x018c, B:46:0x0191, B:47:0x01aa, B:49:0x01bf, B:50:0x01c2, B:52:0x01c6, B:113:0x014a, B:116:0x016a, B:132:0x00a0, B:135:0x00c4), top: B:124:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01bf A[Catch: all -> 0x00c0, TryCatch #2 {all -> 0x00c0, blocks: (B:125:0x008e, B:127:0x0094, B:21:0x00d2, B:23:0x00dc, B:24:0x00e8, B:26:0x00f2, B:27:0x00fe, B:29:0x0108, B:30:0x0114, B:32:0x011e, B:33:0x0130, B:35:0x013a, B:37:0x0140, B:41:0x0179, B:42:0x0182, B:44:0x018c, B:46:0x0191, B:47:0x01aa, B:49:0x01bf, B:50:0x01c2, B:52:0x01c6, B:113:0x014a, B:116:0x016a, B:132:0x00a0, B:135:0x00c4), top: B:124:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01c6 A[Catch: all -> 0x00c0, TRY_LEAVE, TryCatch #2 {all -> 0x00c0, blocks: (B:125:0x008e, B:127:0x0094, B:21:0x00d2, B:23:0x00dc, B:24:0x00e8, B:26:0x00f2, B:27:0x00fe, B:29:0x0108, B:30:0x0114, B:32:0x011e, B:33:0x0130, B:35:0x013a, B:37:0x0140, B:41:0x0179, B:42:0x0182, B:44:0x018c, B:46:0x0191, B:47:0x01aa, B:49:0x01bf, B:50:0x01c2, B:52:0x01c6, B:113:0x014a, B:116:0x016a, B:132:0x00a0, B:135:0x00c4), top: B:124:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0217  */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            Method dump skipped, instructions count: 587
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxb.a():void");
    }

    public final zzhf b(long j, String str) {
        Map map = zzxk.R;
        if (str != null && !str.startsWith("W/")) {
            zzgtf zzgtfVar = new zzgtf(4);
            zzgtfVar.b(map.entrySet());
            zzgtfVar.a("If-Range", str);
            map = zzgtfVar.d(false);
        }
        zzhe zzheVar = new zzhe();
        zzheVar.f8449a = this.f9355a;
        zzheVar.f8450c = j;
        zzheVar.e = 6;
        zzheVar.b = map;
        return zzheVar.a();
    }
}
