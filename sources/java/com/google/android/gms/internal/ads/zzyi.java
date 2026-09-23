package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
public final class zzyi extends zzat {
    public final zzgtd g;

    public zzyi(String str, List list) {
        super(str, null, false, 1);
        this.g = zzgtd.v(list);
    }

    @Override // com.google.android.gms.internal.ads.zzat, java.lang.Throwable
    public final String getMessage() {
        String message = super.getMessage();
        zzgtd zzgtdVar = this.g;
        if (zzgtdVar.isEmpty()) {
            return message;
        }
        int length = message.length();
        String valueOf = String.valueOf(zzgtdVar);
        return android.support.v4.media.a.q(new StringBuilder(length + 17 + valueOf.length()), message, "\nsniff failures: ", valueOf);
    }
}
