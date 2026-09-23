package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzak {

    /* renamed from: a, reason: collision with root package name */
    public final String f4114a;
    public final zzag b;

    /* renamed from: c, reason: collision with root package name */
    public final zzaf f4115c;
    public final zzan d;
    public final zzac e;
    public final zzai f;

    static {
        new zzz().a();
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
    }

    public /* synthetic */ zzak(String str, zzac zzacVar, zzag zzagVar, zzaf zzafVar, zzan zzanVar, zzai zzaiVar) {
        this.f4114a = str;
        this.b = zzagVar;
        this.f4115c = zzafVar;
        this.d = zzanVar;
        this.e = zzacVar;
        this.f = zzaiVar;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof zzak) {
                zzak zzakVar = (zzak) obj;
                if (this.f4114a.equals(zzakVar.f4114a) && this.e.equals(zzakVar.e) && Objects.equals(this.b, zzakVar.b) && this.f4115c.equals(zzakVar.f4115c) && Objects.equals(this.d, zzakVar.d) && Objects.equals(this.f, zzakVar.f)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.f4114a.hashCode() * 31;
        zzag zzagVar = this.b;
        if (zzagVar != null) {
            i = zzagVar.hashCode();
        } else {
            i = 0;
        }
        return (this.d.hashCode() + ((this.e.hashCode() + ((this.f4115c.hashCode() + ((hashCode + i) * 31)) * 31)) * 31)) * 31;
    }
}
