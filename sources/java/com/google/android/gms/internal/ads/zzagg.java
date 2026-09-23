package com.google.android.gms.internal.ads;

import android.util.Base64;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzagg {
    public static zzagd a(zzer zzerVar, boolean z, boolean z2) {
        if (z) {
            c(3, zzerVar, false);
        }
        zzerVar.k((int) zzerVar.a(), StandardCharsets.UTF_8);
        long a2 = zzerVar.a();
        String[] strArr = new String[(int) a2];
        for (int i = 0; i < a2; i++) {
            strArr[i] = zzerVar.k((int) zzerVar.a(), StandardCharsets.UTF_8);
        }
        if (z2 && (zzerVar.K() & 1) == 0) {
            throw zzat.a("framing bit expected to be set", null);
        }
        return new zzagd(strArr);
    }

    public static zzap b(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = (String) list.get(i);
            String str2 = zzfj.f7405a;
            String[] split2 = str.split("=", 2);
            if (split2.length != 2) {
                zzee.c("VorbisUtil", "Failed to parse Vorbis comment: ".concat(str));
            } else if (split2[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(zzaht.b(new zzer(Base64.decode(split2[1], 0))));
                } catch (RuntimeException e) {
                    zzee.d("VorbisUtil", "Failed to parse vorbis picture", e);
                }
            } else {
                arrayList.add(new zzahu(split2[0], split2[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzap(arrayList);
    }

    public static boolean c(int i, zzer zzerVar, boolean z) {
        if (zzerVar.B() < 7) {
            if (!z) {
                int B = zzerVar.B();
                StringBuilder sb = new StringBuilder(String.valueOf(B).length() + 18);
                sb.append("too short header: ");
                sb.append(B);
                throw zzat.a(sb.toString(), null);
            }
            return false;
        }
        if (zzerVar.K() != i) {
            if (!z) {
                throw zzat.a("expected header type ".concat(String.valueOf(Integer.toHexString(i))), null);
            }
            return false;
        }
        if (zzerVar.K() == 118 && zzerVar.K() == 111 && zzerVar.K() == 114 && zzerVar.K() == 98 && zzerVar.K() == 105 && zzerVar.K() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        throw zzat.a("expected characters 'vorbis'", null);
    }
}
