package com.google.android.gms.internal.p000authapi;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zbbg extends zbbe {
    public final zbbi g;

    public zbbg(zbbi zbbiVar, int i) {
        super(zbbiVar.size(), i);
        this.g = zbbiVar;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbbe
    public final Object a(int i) {
        return this.g.get(i);
    }
}
