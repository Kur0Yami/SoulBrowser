package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;

/* loaded from: classes.dex */
final class zzgqh extends zzgqn {
    public final /* synthetic */ zzgpp j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgqh(CharSequence charSequence, zzgpp zzgppVar) {
        super(charSequence);
        this.j = zzgppVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqn
    public final int b(int i) {
        Matcher matcher = ((zzgps) this.j).f8199a;
        if (matcher.find(i)) {
            return matcher.start();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzgqn
    public final int c(int i) {
        return ((zzgps) this.j).f8199a.end();
    }
}
