package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.Bundle;
import java.util.ArrayList;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzfag implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7154a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7155c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final String g;
    public final String h;
    public final String i;
    public final ArrayList j;
    public final String k;
    public final String l;
    public final boolean m;
    public final long n;
    public final boolean o;
    public final String p;
    public final int q;
    public final String r;

    public zzfag(boolean z, boolean z2, String str, boolean z3, boolean z4, boolean z5, String str2, ArrayList arrayList, String str3, String str4, boolean z6, long j, boolean z7, String str5, int i, String str6, String str7, String str8) {
        String str9 = Build.FINGERPRINT;
        String str10 = Build.MODEL;
        this.f7154a = z;
        this.b = z2;
        this.f7155c = str;
        this.d = z3;
        this.e = z4;
        this.f = z5;
        this.g = str2;
        this.h = str6;
        this.j = arrayList;
        this.k = str3;
        this.l = str4;
        this.m = z6;
        this.n = j;
        this.o = z7;
        this.p = str5;
        this.q = i;
        this.r = str8;
        this.i = str7;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = ((zzczm) obj).b;
        bundle.putBoolean("simulator", this.d);
        bundle.putInt("build_api_level", this.q);
        ArrayList<String> arrayList = this.j;
        if (!arrayList.isEmpty()) {
            bundle.putStringArrayList("hl_list", arrayList);
        }
        bundle.putString("submodel", Build.MODEL);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0070, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.Pe)).booleanValue() != false) goto L9;
     */
    @Override // com.google.android.gms.internal.ads.zzezv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ void zza(java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfag.zza(java.lang.Object):void");
    }
}
