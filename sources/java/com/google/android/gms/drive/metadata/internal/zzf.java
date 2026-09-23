package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.internal.drive.zzhs;
import com.google.android.gms.internal.drive.zzid;
import com.google.android.gms.internal.drive.zzif;
import com.google.android.gms.internal.drive.zzin;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzf {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f3704a = new HashMap();
    public static final HashMap b = new HashMap();

    static {
        b(zzhs.f10192a);
        b(zzhs.G);
        b(zzhs.x);
        b(zzhs.E);
        b(zzhs.H);
        b(zzhs.n);
        b(zzhs.m);
        b(zzhs.o);
        b(zzhs.p);
        b(zzhs.q);
        b(zzhs.k);
        b(zzhs.s);
        b(zzhs.t);
        b(zzhs.u);
        b(zzhs.C);
        b(zzhs.b);
        b(zzhs.z);
        b(zzhs.d);
        b(zzhs.l);
        b(zzhs.e);
        b(zzhs.f);
        b(zzhs.g);
        b(zzhs.h);
        b(zzhs.w);
        b(zzhs.r);
        b(zzhs.y);
        b(zzhs.A);
        b(zzhs.B);
        b(zzhs.D);
        b(zzhs.I);
        b(zzhs.J);
        b(zzhs.j);
        b(zzhs.i);
        b(zzhs.F);
        b(zzhs.v);
        b(zzhs.f10193c);
        b(zzhs.K);
        b(zzhs.L);
        b(zzhs.M);
        b(zzhs.N);
        b(zzhs.O);
        b(zzhs.P);
        b(zzhs.Q);
        b(zzif.f10195a);
        b(zzif.f10196c);
        b(zzif.d);
        b(zzif.e);
        b(zzif.b);
        b(zzif.f);
        b(zzin.f10198a);
        b(zzin.b);
        a(zzo.f3705c);
        a(zzid.f10194c);
    }

    public static void a(zzg zzgVar) {
        if (b.put(zzgVar.a(), zzgVar) == null) {
            return;
        }
        String a2 = zzgVar.a();
        StringBuilder sb = new StringBuilder(a2.length() + 46);
        sb.append("A cleaner for key ");
        sb.append(a2);
        sb.append(" has already been registered");
        throw new IllegalStateException(sb.toString());
    }

    public static void b(MetadataField metadataField) {
        String str;
        String name = metadataField.getName();
        HashMap hashMap = f3704a;
        if (hashMap.containsKey(name)) {
            String valueOf = String.valueOf(metadataField.getName());
            if (valueOf.length() != 0) {
                str = "Duplicate field name registered: ".concat(valueOf);
            } else {
                str = new String("Duplicate field name registered: ");
            }
            throw new IllegalArgumentException(str);
        }
        hashMap.put(metadataField.getName(), metadataField);
    }
}
