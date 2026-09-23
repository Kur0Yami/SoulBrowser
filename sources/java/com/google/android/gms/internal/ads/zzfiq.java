package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdSize;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class zzfiq {
    public static com.google.android.gms.ads.internal.client.zzr a(Context context, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzfhs zzfhsVar = (zzfhs) it.next();
            if (zzfhsVar.f7370c) {
                arrayList.add(AdSize.FLUID);
            } else {
                arrayList.add(new AdSize(zzfhsVar.f7369a, zzfhsVar.b));
            }
        }
        return new com.google.android.gms.ads.internal.client.zzr(context, (AdSize[]) arrayList.toArray(new AdSize[arrayList.size()]));
    }
}
