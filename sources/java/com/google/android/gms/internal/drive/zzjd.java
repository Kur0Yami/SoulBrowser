package com.google.android.gms.internal.drive;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
final class zzjd extends zzjf {

    /* renamed from: c, reason: collision with root package name */
    public int f10203c = 0;
    public final int f;
    public final /* synthetic */ zzjc g;

    public zzjd(zzjc zzjcVar) {
        this.g = zzjcVar;
        this.f = zzjcVar.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f10203c < this.f) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.drive.zzjj
    public final byte nextByte() {
        int i = this.f10203c;
        if (i < this.f) {
            this.f10203c = i + 1;
            return this.g.m(i);
        }
        throw new NoSuchElementException();
    }
}
