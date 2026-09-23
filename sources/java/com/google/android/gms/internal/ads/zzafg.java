package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzafg {

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f3972c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a, reason: collision with root package name */
    public int f3973a = -1;
    public int b = -1;

    public final void a(zzap zzapVar) {
        zzguy zzguyVar = (zzguy) zzapVar.a(zzaia.class, zzaff.f3971c);
        int i = zzguyVar.h;
        int i2 = 0;
        int i3 = 0;
        while (i3 < i) {
            boolean b = b(((zzaia) zzguyVar.get(i3)).d);
            i3++;
            if (b) {
                return;
            }
        }
        zzguy zzguyVar2 = (zzguy) zzapVar.a(zzaii.class, zzafe.f3970c);
        int i4 = zzguyVar2.h;
        while (i2 < i4) {
            boolean b2 = b(((zzaii) zzguyVar2.get(i2)).d);
            i2++;
            if (b2) {
                return;
            }
        }
    }

    public final boolean b(String str) {
        Matcher matcher = f3972c.matcher(str);
        if (matcher.find()) {
            try {
                String group = matcher.group(1);
                String str2 = zzfj.f7405a;
                int parseInt = Integer.parseInt(group, 16);
                int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                if (parseInt > 0 || parseInt2 > 0) {
                    this.f3973a = parseInt;
                    this.b = parseInt2;
                    return true;
                }
                return false;
            } catch (NumberFormatException unused) {
                return false;
            }
        }
        return false;
    }
}
