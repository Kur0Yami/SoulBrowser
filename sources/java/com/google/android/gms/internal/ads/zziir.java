package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class zziir implements Iterator, Closeable, zzasw {
    public static final zzasv k = new zziin("eof ");

    /* renamed from: c, reason: collision with root package name */
    public zzass f8993c;
    public zziis f;
    public zzasv g = null;
    public long h = 0;
    public long i = 0;
    public final ArrayList j = new ArrayList();

    static {
        zziiy.b(zziir.class);
    }

    @Override // java.util.Iterator
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final zzasv next() {
        zzasv a2;
        zzasv zzasvVar = this.g;
        if (zzasvVar != null && zzasvVar != k) {
            this.g = null;
            return zzasvVar;
        }
        zziis zziisVar = this.f;
        if (zziisVar != null && this.h < this.i) {
            try {
                synchronized (zziisVar) {
                    this.f.h(this.h);
                    a2 = this.f8993c.a(this.f, this);
                    this.h = this.f.zzc();
                }
                return a2;
            } catch (EOFException unused) {
                throw new NoSuchElementException();
            } catch (IOException unused2) {
                throw new NoSuchElementException();
            }
        }
        this.g = k;
        throw new NoSuchElementException();
    }

    public void close() {
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zzasv zzasvVar = this.g;
        zzasv zzasvVar2 = k;
        if (zzasvVar == zzasvVar2) {
            return false;
        }
        if (zzasvVar != null) {
            return true;
        }
        try {
            this.g = next();
            return true;
        } catch (NoSuchElementException unused) {
            this.g = zzasvVar2;
            return false;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        int i = 0;
        while (true) {
            ArrayList arrayList = this.j;
            if (i < arrayList.size()) {
                if (i > 0) {
                    sb.append(";");
                }
                sb.append(((zzasv) arrayList.get(i)).toString());
                i++;
            } else {
                sb.append("]");
                return sb.toString();
            }
        }
    }
}
