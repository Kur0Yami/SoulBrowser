package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzgqg extends zzgqn {
    public final /* synthetic */ zzgpo j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgqg(CharSequence charSequence, zzgpo zzgpoVar) {
        super(charSequence);
        this.j = zzgpoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqn
    public final int b(int i) {
        CharSequence charSequence = this.g;
        int length = charSequence.length();
        zzgqa.j(i, length);
        while (i < length) {
            if (this.j.a(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzgqn
    public final int c(int i) {
        return i + 1;
    }
}
