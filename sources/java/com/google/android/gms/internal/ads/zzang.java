package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzang implements zzaly {

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4233a = new zzer();

    @Override // com.google.android.gms.internal.ads.zzaly
    public final void a(byte[] bArr, int i, int i2, zzdr zzdrVar) {
        boolean z;
        zzcx b;
        boolean z2;
        zzer zzerVar = this.f4233a;
        zzerVar.z(bArr, i + i2);
        zzerVar.E(i);
        ArrayList arrayList = new ArrayList();
        while (zzerVar.B() > 0) {
            if (zzerVar.B() >= 8) {
                z = true;
            } else {
                z = false;
            }
            zzgqa.b("Incomplete Mp4Webvtt Top Level box header found.", z);
            int b2 = zzerVar.b() - 8;
            if (zzerVar.b() == 1987343459) {
                CharSequence charSequence = null;
                zzcw zzcwVar = null;
                while (b2 > 0) {
                    if (b2 >= 8) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    zzgqa.b("Incomplete vtt cue box header found.", z2);
                    int b3 = zzerVar.b();
                    int b4 = zzerVar.b();
                    int i3 = b2 - 8;
                    int i4 = b3 - 8;
                    byte[] bArr2 = zzerVar.f6834a;
                    int i5 = zzerVar.b;
                    String str = zzfj.f7405a;
                    String str2 = new String(bArr2, i5, i4, StandardCharsets.UTF_8);
                    zzerVar.G(i4);
                    if (b4 == 1937011815) {
                        zzano zzanoVar = new zzano();
                        zzanp.c(str2, zzanoVar);
                        zzcwVar = zzanoVar.a();
                    } else if (b4 == 1885436268) {
                        charSequence = zzanp.a(null, str2.trim(), Collections.EMPTY_LIST);
                    }
                    b2 = i3 - i4;
                }
                if (charSequence == null) {
                    charSequence = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                if (zzcwVar != null) {
                    zzcwVar.a(charSequence);
                    b = zzcwVar.b();
                } else {
                    Pattern pattern = zzanp.f4247a;
                    zzano zzanoVar2 = new zzano();
                    zzanoVar2.f4246c = charSequence;
                    b = zzanoVar2.a().b();
                }
                arrayList.add(b);
            } else {
                zzerVar.G(b2);
            }
        }
        ((zzama) zzdrVar).zza(new zzalq(arrayList, -9223372036854775807L, -9223372036854775807L));
    }
}
