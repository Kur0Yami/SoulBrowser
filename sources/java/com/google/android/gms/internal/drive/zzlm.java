package com.google.android.gms.internal.drive;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzlm implements zzll {
    @Override // com.google.android.gms.internal.drive.zzll
    public final void a(Object obj) {
        zzlk zzlkVar = (zzlk) obj;
        if (!zzlkVar.isEmpty()) {
            Iterator it = zzlkVar.entrySet().iterator();
            if (!it.hasNext()) {
                return;
            }
            Map.Entry entry = (Map.Entry) it.next();
            entry.getKey();
            entry.getValue();
            throw new NoSuchMethodError();
        }
    }

    @Override // com.google.android.gms.internal.drive.zzll
    public final Object b(Object obj) {
        ((zzlk) obj).f10233c = false;
        return obj;
    }

    @Override // com.google.android.gms.internal.drive.zzll
    public final zzlk c(Object obj) {
        return (zzlk) obj;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.LinkedHashMap, com.google.android.gms.internal.drive.zzlk] */
    @Override // com.google.android.gms.internal.drive.zzll
    public final zzlk d(Object obj, Object obj2) {
        zzlk zzlkVar = (zzlk) obj;
        zzlk zzlkVar2 = (zzlk) obj2;
        if (!zzlkVar2.isEmpty()) {
            if (!zzlkVar.f10233c) {
                if (zzlkVar.isEmpty()) {
                    zzlkVar = new zzlk();
                } else {
                    ?? linkedHashMap = new LinkedHashMap(zzlkVar);
                    linkedHashMap.f10233c = true;
                    zzlkVar = linkedHashMap;
                }
            }
            zzlkVar.a();
            if (!zzlkVar2.isEmpty()) {
                zzlkVar.putAll(zzlkVar2);
            }
        }
        return zzlkVar;
    }

    @Override // com.google.android.gms.internal.drive.zzll
    public final zzlj zzm() {
        throw new NoSuchMethodError();
    }
}
