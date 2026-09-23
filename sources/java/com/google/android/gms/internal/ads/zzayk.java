package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;

/* loaded from: classes.dex */
public final class zzayk {

    /* renamed from: c, reason: collision with root package name */
    public static final ConditionVariable f4475c = new ConditionVariable();
    public static volatile zzfwb d = null;
    public static volatile Random e = null;

    /* renamed from: a, reason: collision with root package name */
    public final zzazt f4476a;
    public volatile Boolean b;

    public zzayk(zzazt zzaztVar) {
        this.f4476a = zzaztVar;
        zzaztVar.b.execute(new zzayj(this));
    }

    public final void a(int i, int i2, long j, String str, Exception exc) {
        try {
            f4475c.block();
            if (this.b.booleanValue() && d != null) {
                zzauy D = zzavc.D();
                String packageName = this.f4476a.f4510a.getPackageName();
                D.k();
                ((zzavc) D.f).E(packageName);
                D.k();
                ((zzavc) D.f).F(j);
                if (str != null) {
                    D.k();
                    ((zzavc) D.f).I(str);
                }
                if (exc != null) {
                    StringWriter stringWriter = new StringWriter();
                    exc.printStackTrace(new PrintWriter(stringWriter));
                    String stringWriter2 = stringWriter.toString();
                    D.k();
                    ((zzavc) D.f).G(stringWriter2);
                    String name = exc.getClass().getName();
                    D.k();
                    ((zzavc) D.f).H(name);
                }
                zzfwb zzfwbVar = d;
                byte[] h = ((zzavc) D.m()).h();
                zzfwbVar.getClass();
                zzfwa zzfwaVar = new zzfwa(zzfwbVar, h);
                zzfwaVar.f7699c = i;
                if (i2 != -1) {
                    zzfwaVar.b = i2;
                }
                zzfwaVar.a();
            }
        } catch (Exception unused) {
        }
    }
}
