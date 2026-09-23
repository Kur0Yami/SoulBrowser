package com.google.android.gms.internal.common;

/* loaded from: classes.dex */
final class zzs extends zzv {
    public final /* synthetic */ zzp k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzs(zzw zzwVar, CharSequence charSequence, zzp zzpVar) {
        super(zzwVar, charSequence);
        this.k = zzpVar;
    }

    @Override // com.google.android.gms.internal.common.zzv
    public final int b(int i) {
        CharSequence charSequence = this.g;
        int length = charSequence.length();
        zzr.b(i, length);
        while (i < length) {
            if (charSequence.charAt(i) == ((zzm) this.k).f9915a) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.common.zzv
    public final int c(int i) {
        return i + 1;
    }
}
