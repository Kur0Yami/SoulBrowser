package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import com.google.android.gms.internal.ads.zzbfp;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbfj {

    /* renamed from: a, reason: collision with root package name */
    public final zzbfo f4612a;
    public final zzbfp.zzt.zza b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4613c;

    public zzbfj() {
        this.b = zzbfp.zzt.O();
        this.f4613c = false;
        this.f4612a = new zzbfo();
    }

    public final synchronized void a(zzbfi zzbfiVar) {
        if (this.f4613c) {
            try {
                zzbfiVar.a(this.b);
            } catch (NullPointerException e) {
                com.google.android.gms.ads.internal.zzt.zzh().f("AdMobClearcutLogger.modify", e);
            }
        }
    }

    public final synchronized void b(int i) {
        if (!this.f4613c) {
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Z5)).booleanValue()) {
            d(i);
        } else {
            c(i);
        }
    }

    public final synchronized void c(int i) {
        zzbfp.zzt.zza zzaVar = this.b;
        zzaVar.k();
        ((zzbfp.zzt) zzaVar.f).I();
        List zzk = com.google.android.gms.ads.internal.util.zzs.zzk();
        zzaVar.k();
        ((zzbfp.zzt) zzaVar.f).H(zzk);
        zzbfn zzbfnVar = new zzbfn(this.f4612a, ((zzbfp.zzt) zzaVar.m()).h());
        int i2 = i - 1;
        zzbfnVar.b = i2;
        zzbfnVar.a();
        com.google.android.gms.ads.internal.util.zze.zza("Logging Event with event code : ".concat(String.valueOf(Integer.toString(i2, 10))));
    }

    public final synchronized void d(int i) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(((zzfwl) zzfwj.f7704a).a(externalStorageDirectory, "clearcut_events.txt")), true);
            try {
                try {
                    fileOutputStream.write(e(i).getBytes());
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused) {
                        com.google.android.gms.ads.internal.util.zze.zza("Could not close Clearcut output stream.");
                    }
                } catch (IOException unused2) {
                    com.google.android.gms.ads.internal.util.zze.zza("Could not write Clearcut to file.");
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused3) {
                        com.google.android.gms.ads.internal.util.zze.zza("Could not close Clearcut output stream.");
                    }
                }
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (IOException unused4) {
                    com.google.android.gms.ads.internal.util.zze.zza("Could not close Clearcut output stream.");
                }
                throw th;
            }
        } catch (FileNotFoundException unused5) {
            com.google.android.gms.ads.internal.util.zze.zza("Could not find file for Clearcut");
        }
    }

    public final synchronized String e(int i) {
        StringBuilder sb;
        zzbfp.zzt.zza zzaVar = this.b;
        String N = ((zzbfp.zzt) zzaVar.f).N();
        long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
        String encodeToString = Base64.encodeToString(((zzbfp.zzt) zzaVar.m()).h(), 3);
        sb = new StringBuilder("id=");
        sb.append(N);
        sb.append(",timestamp=");
        sb.append(elapsedRealtime);
        sb.append(",event=");
        sb.append(i - 1);
        sb.append(",data=");
        sb.append(encodeToString);
        sb.append("\n");
        return sb.toString();
    }

    public zzbfj(zzbfo zzbfoVar) {
        this.b = zzbfp.zzt.O();
        this.f4612a = zzbfoVar;
        this.f4613c = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y5)).booleanValue();
    }
}
