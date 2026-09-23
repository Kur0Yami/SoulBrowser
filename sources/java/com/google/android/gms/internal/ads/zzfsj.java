package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.ArrayList;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzfsj {
    public static final Pattern b = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f7622a = new ArrayList();

    public final void a(View view, zzfro zzfroVar) {
        zzfsi zzfsiVar;
        if (view != null) {
            if (b.matcher("Ad overlay").matches()) {
                ArrayList arrayList = this.f7622a;
                int size = arrayList.size();
                int i = 0;
                while (true) {
                    if (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        zzfsiVar = (zzfsi) obj;
                        if (zzfsiVar.f7620a.get() == view) {
                            break;
                        }
                    } else {
                        zzfsiVar = null;
                        break;
                    }
                }
                if (zzfsiVar == null) {
                    arrayList.add(new zzfsi(view, zzfroVar));
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
        }
        throw new IllegalArgumentException("FriendlyObstruction is null");
    }
}
