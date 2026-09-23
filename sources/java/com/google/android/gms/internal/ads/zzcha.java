package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.io.File;
import java.text.DecimalFormat;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzcha extends zzcgx {
    public static final Set j = DesugarCollections.synchronizedSet(new HashSet());
    public static final DecimalFormat k = new DecimalFormat("#,###");
    public File h;
    public boolean i;

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:96)
        */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.ads.zzcgx
    public final boolean g(java.lang.String r33) {
        /*
            Method dump skipped, instructions count: 1390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcha.g(java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzcgx
    public final void o() {
        this.i = true;
    }
}
