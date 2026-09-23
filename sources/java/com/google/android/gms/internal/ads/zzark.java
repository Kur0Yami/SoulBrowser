package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class zzark implements Comparable {

    /* renamed from: c, reason: collision with root package name */
    public final zzarv f4367c;
    public final int f;
    public final String g;
    public final int h;
    public final Object i;
    public final zzaro j;
    public Integer k;
    public zzarn l;
    public boolean m;
    public zzaqt n;
    public zzarj o;
    public final zzaqy p;

    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.ads.zzaqy, java.lang.Object] */
    public zzark(int i, String str, zzaro zzaroVar) {
        zzarv zzarvVar;
        Uri parse;
        String host;
        if (zzarv.f4374c) {
            zzarvVar = new zzarv();
        } else {
            zzarvVar = null;
        }
        this.f4367c = zzarvVar;
        this.i = new Object();
        int i2 = 0;
        this.m = false;
        this.n = null;
        this.f = i;
        this.g = str;
        this.j = zzaroVar;
        ?? obj = new Object();
        obj.f4357a = 2500;
        this.p = obj;
        if (!TextUtils.isEmpty(str) && (parse = Uri.parse(str)) != null && (host = parse.getHost()) != null) {
            i2 = host.hashCode();
        }
        this.h = i2;
    }

    public final void a(String str) {
        zzarn zzarnVar = this.l;
        if (zzarnVar != null) {
            HashSet hashSet = zzarnVar.b;
            synchronized (hashSet) {
                hashSet.remove(this);
            }
            ArrayList arrayList = zzarnVar.i;
            synchronized (arrayList) {
                try {
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        ((zzarm) obj).zza();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            zzarnVar.c();
        }
        if (zzarv.f4374c) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new zzari(this, str, id));
                return;
            }
            zzarv zzarvVar = this.f4367c;
            zzarvVar.a(id, str);
            zzarvVar.b(toString());
        }
    }

    public final void b() {
        zzarn zzarnVar = this.l;
        if (zzarnVar != null) {
            zzarnVar.c();
        }
    }

    public abstract zzarq c(zzarg zzargVar);

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.k.intValue() - ((zzark) obj).k.intValue();
    }

    public abstract void d(Object obj);

    public final void e(zzarx zzarxVar) {
        synchronized (this.i) {
            this.o = zzarxVar;
        }
    }

    public final void f(zzarq zzarqVar) {
        zzarj zzarjVar;
        synchronized (this.i) {
            zzarjVar = this.o;
        }
        if (zzarjVar != null) {
            zzarjVar.a(this, zzarqVar);
        }
    }

    public final void g() {
        zzarj zzarjVar;
        synchronized (this.i) {
            zzarjVar = this.o;
        }
        if (zzarjVar != null) {
            zzarjVar.b(this);
        }
    }

    public final String toString() {
        String valueOf = String.valueOf(Integer.toHexString(this.h));
        zzl();
        Integer num = this.k;
        String str = this.g;
        int length = String.valueOf(str).length();
        int length2 = String.valueOf(num).length();
        String concat = "0x".concat(valueOf);
        StringBuilder sb = new StringBuilder(concat.length() + length + 5 + 8 + length2);
        android.support.v4.media.a.z(sb, "[ ] ", str, " ", concat);
        sb.append(" NORMAL ");
        sb.append(num);
        return sb.toString();
    }

    public final int zza() {
        return this.f;
    }

    public final int zzb() {
        return this.h;
    }

    public final void zzc(String str) {
        if (zzarv.f4374c) {
            this.f4367c.a(Thread.currentThread().getId(), str);
        }
    }

    public final zzark zzf(zzarn zzarnVar) {
        this.l = zzarnVar;
        return this;
    }

    public final zzark zzg(int i) {
        this.k = Integer.valueOf(i);
        return this;
    }

    public final String zzh() {
        return this.g;
    }

    public final String zzi() {
        int i = this.f;
        String str = this.g;
        if (i != 0) {
            String num = Integer.toString(1);
            return android.support.v4.media.a.q(new StringBuilder(String.valueOf(num).length() + 1 + String.valueOf(str).length()), num, "-", str);
        }
        return str;
    }

    public final zzark zzj(zzaqt zzaqtVar) {
        this.n = zzaqtVar;
        return this;
    }

    @Nullable
    public final zzaqt zzk() {
        return this.n;
    }

    public final boolean zzl() {
        synchronized (this.i) {
        }
        return false;
    }

    public Map zzm() {
        return Collections.EMPTY_MAP;
    }

    public byte[] zzn() {
        return null;
    }

    public final int zzo() {
        return this.p.f4357a;
    }

    public final void zzp() {
        synchronized (this.i) {
            this.m = true;
        }
    }

    public final boolean zzq() {
        boolean z;
        synchronized (this.i) {
            z = this.m;
        }
        return z;
    }

    public final void zzt(zzart zzartVar) {
        zzaro zzaroVar;
        synchronized (this.i) {
            zzaroVar = this.j;
        }
        zzaroVar.a(zzartVar);
    }

    public final zzaqy zzy() {
        return this.p;
    }
}
