package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class zzfuf {
    public static volatile int e = 1;

    /* renamed from: a, reason: collision with root package name */
    public final Context f7660a;
    public final Executor b;

    /* renamed from: c, reason: collision with root package name */
    public final Task f7661c;
    public final boolean d;

    public zzfuf(Context context, Executor executor, Task task, boolean z) {
        this.f7660a = context;
        this.b = executor;
        this.f7661c = task;
        this.d = z;
    }

    public static zzfuf a(final Context context, Executor executor, boolean z) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        if (z) {
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfub
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    taskCompletionSource.b(zzfwb.a(context, "GLAS"));
                }
            });
        } else {
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfud
                @Override // java.lang.Runnable
                public final void run() {
                    zzfwf zzfwfVar = new zzfwf();
                    Log.d("GASS", "Clearcut logging disabled");
                    TaskCompletionSource.this.b(new zzfwb(zzfwfVar));
                }
            });
        }
        return new zzfuf(context, executor, taskCompletionSource.f11605a, z);
    }

    public void b(int i, long j) {
        e(i, j, null, null, null);
    }

    public void c(int i, long j, Exception exc) {
        e(i, j, exc, null, null);
    }

    public void d(int i, String str) {
        e(i, 0L, null, null, str);
    }

    public final Task e(final int i, long j, Exception exc, String str, String str2) {
        if (!this.d) {
            return this.f7661c.j(this.b, zzfue.f7659a);
        }
        Context context = this.f7660a;
        final zzauy D = zzavc.D();
        String packageName = context.getPackageName();
        D.k();
        ((zzavc) D.f).E(packageName);
        D.k();
        ((zzavc) D.f).F(j);
        int i2 = e;
        D.k();
        ((zzavc) D.f).K(i2);
        if (exc != null) {
            Object obj = zzgqx.f8217a;
            StringWriter stringWriter = new StringWriter();
            exc.printStackTrace(new PrintWriter(stringWriter));
            String stringWriter2 = stringWriter.toString();
            D.k();
            ((zzavc) D.f).G(stringWriter2);
            String name = exc.getClass().getName();
            D.k();
            ((zzavc) D.f).H(name);
        }
        if (str2 != null) {
            D.k();
            ((zzavc) D.f).I(str2);
        }
        if (str != null) {
            D.k();
            ((zzavc) D.f).J(str);
        }
        return this.f7661c.j(this.b, new Continuation() { // from class: com.google.android.gms.internal.ads.zzfuc
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                if (task.p()) {
                    zzfwb zzfwbVar = (zzfwb) task.m();
                    byte[] h = ((zzavc) zzauy.this.m()).h();
                    zzfwbVar.getClass();
                    zzfwa zzfwaVar = new zzfwa(zzfwbVar, h);
                    zzfwaVar.f7699c = i;
                    zzfwaVar.a();
                    return Boolean.TRUE;
                }
                return Boolean.FALSE;
            }
        });
    }
}
