package com.google.android.gms.internal.drive;

import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzlf implements zzmg {
    public static final zzlg b = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final zzlh f10231a;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.drive.zzlh, java.lang.Object] */
    public zzlf() {
        zzlp zzlpVar;
        try {
            zzlpVar = (zzlp) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            zzlpVar = b;
        }
        zzlp[] zzlpVarArr = {zzkj.f10219a, zzlpVar};
        ?? obj = new Object();
        obj.f10232a = zzlpVarArr;
        Charset charset = zzkm.f10222a;
        this.f10231a = obj;
    }
}
