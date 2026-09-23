package com.google.android.gms.tasks;

import java.util.ArrayDeque;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzr {

    /* renamed from: a, reason: collision with root package name */
    public final Object f11624a = new Object();
    public ArrayDeque b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11625c;

    public final void a(zzq zzqVar) {
        synchronized (this.f11624a) {
            try {
                if (this.b == null) {
                    this.b = new ArrayDeque();
                }
                this.b.add(zzqVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(Task task) {
        zzq zzqVar;
        synchronized (this.f11624a) {
            if (this.b != null && !this.f11625c) {
                this.f11625c = true;
                while (true) {
                    synchronized (this.f11624a) {
                        try {
                            zzqVar = (zzq) this.b.poll();
                            if (zzqVar == null) {
                                this.f11625c = false;
                                return;
                            }
                        } finally {
                        }
                    }
                    zzqVar.b(task);
                }
            }
        }
    }
}
