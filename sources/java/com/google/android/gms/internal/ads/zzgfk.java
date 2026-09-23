package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
final class zzgfk extends zzgfz {
    public final Context f;

    public zzgfk(zzavs zzavsVar, zzgev zzgevVar, Context context, zzgnc zzgncVar) {
        super("ElEd4VcZAEfP2Wn07dNn4m5KzOJYeOBfSNpGODwEVMM987QtZ6G7lEZTIkvpOYy8", "f+lS1NLa9mNIIiIqU+oCtIwtOpjS/HcJD4HNhQ2VxXc=", zzavsVar, zzgevVar, zzgncVar.a(115));
        this.f = context;
    }

    @Override // com.google.android.gms.internal.ads.zzgfz
    public final void a(Method method, zzavs zzavsVar) {
        int i;
        int i2 = 1;
        Object[] objArr = (Object[]) method.invoke(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, this.f);
        objArr.getClass();
        synchronized (zzavsVar) {
            try {
                long intValue = ((Integer) objArr[0]).intValue();
                zzavsVar.k();
                ((zzawp) zzavsVar.f).b0(intValue);
                long intValue2 = ((Integer) objArr[1]).intValue();
                zzavsVar.k();
                ((zzawp) zzavsVar.f).K0(intValue2);
                long intValue3 = ((Integer) objArr[2]).intValue();
                zzavsVar.k();
                ((zzawp) zzavsVar.f).L0(intValue3);
                long intValue4 = ((Integer) objArr[3]).intValue();
                zzavsVar.k();
                ((zzawp) zzavsVar.f).p0(intValue4);
                Boolean bool = (Boolean) objArr[4];
                if (bool == null) {
                    zzavsVar.k();
                    ((zzawp) zzavsVar.f).t0(3);
                } else {
                    if (true != bool.booleanValue()) {
                        i = 1;
                    } else {
                        i = 2;
                    }
                    zzavsVar.k();
                    ((zzawp) zzavsVar.f).t0(i);
                }
                Boolean bool2 = (Boolean) objArr[5];
                if (bool2 == null) {
                    zzavsVar.o(3);
                } else {
                    if (true == bool2.booleanValue()) {
                        i2 = 2;
                    }
                    zzavsVar.o(i2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
