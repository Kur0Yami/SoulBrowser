package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzail extends zzaig {
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgtd f4065c;

    /* JADX WARN: Multi-variable type inference failed */
    public zzail(String str, String str2, List list) {
        super(str);
        zzgqa.a(!((AbstractCollection) list).isEmpty());
        this.b = str2;
        zzgtd v = zzgtd.v(list);
        this.f4065c = v;
    }

    public static ArrayList b(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
                return arrayList;
            }
            if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                return arrayList;
            }
            if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0168 A[Catch: NumberFormatException | StringIndexOutOfBoundsException -> 0x01fd, TryCatch #0 {NumberFormatException | StringIndexOutOfBoundsException -> 0x01fd, blocks: (B:6:0x0115, B:13:0x015f, B:15:0x0168, B:16:0x0174, B:71:0x01b8), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0173  */
    @Override // com.google.android.gms.internal.ads.zzaig, com.google.android.gms.internal.ads.zzao
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.google.android.gms.internal.ads.zzam r8) {
        /*
            Method dump skipped, instructions count: 604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzail.a(com.google.android.gms.internal.ads.zzam):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzail.class == obj.getClass()) {
            zzail zzailVar = (zzail) obj;
            if (Objects.equals(this.f4060a, zzailVar.f4060a) && Objects.equals(this.b, zzailVar.b) && this.f4065c.equals(zzailVar.f4065c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.f4060a.hashCode() + 527;
        String str = this.b;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return this.f4065c.hashCode() + (((hashCode * 31) + i) * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzaig
    public final String toString() {
        String valueOf = String.valueOf(this.f4065c);
        String str = this.f4060a;
        int length = String.valueOf(str).length();
        String str2 = this.b;
        StringBuilder sb = new StringBuilder(length + 14 + String.valueOf(str2).length() + 9 + valueOf.length());
        android.support.v4.media.a.z(sb, str, ": description=", str2, ": values=");
        sb.append(valueOf);
        return sb.toString();
    }
}
