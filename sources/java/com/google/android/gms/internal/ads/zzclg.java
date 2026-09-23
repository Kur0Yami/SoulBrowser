package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbfp;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public abstract class zzclg implements zzcpn {

    /* renamed from: a, reason: collision with root package name */
    public static zzclg f5241a;

    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zzcng] */
    /* JADX WARN: Type inference failed for: r12v7, types: [com.google.android.gms.internal.ads.zzclh, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v8, types: [java.lang.Object, com.google.android.gms.internal.ads.zzcod] */
    public static zzclg e(Context context, zzbsz zzbszVar, int i) {
        Context context2;
        zzgyw zzgywVar;
        SharedPreferences sharedPreferences;
        synchronized (zzclg.class) {
            try {
                zzclg zzclgVar = f5241a;
                if (zzclgVar != null) {
                    return zzclgVar;
                }
                long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
                zzbgk.a(context);
                if (((Boolean) zzbic.e.c()).booleanValue() && (sharedPreferences = context.getSharedPreferences("admob", 0)) != null) {
                    sharedPreferences.edit().putInt("init_without_write", zzbfv.b(context, "init_without_write") + 1).commit();
                }
                zzfjg a2 = zzfjg.a(context);
                com.google.android.gms.ads.internal.zzt.zzc();
                boolean zzJ = com.google.android.gms.ads.internal.util.zzs.zzJ(a2.f7410a);
                VersionInfoParcel versionInfoParcel = new VersionInfoParcel(ModuleDescriptor.MODULE_VERSION, i, true, zzJ);
                if (((Boolean) zzbil.f4718c.c()).booleanValue()) {
                    com.google.android.gms.ads.internal.client.zzcy zzcyVar = a2.b;
                    com.google.android.gms.ads.internal.client.zzfc zzfcVar = null;
                    if (zzcyVar != null) {
                        try {
                            zzfcVar = zzcyVar.getLiteSdkVersion();
                        } catch (RemoteException unused) {
                        }
                    }
                    if (zzfcVar != null) {
                        versionInfoParcel = new VersionInfoParcel(ModuleDescriptor.MODULE_VERSION, zzfcVar.zza(), true, zzJ);
                    }
                }
                a2.b(zzbszVar);
                ?? obj = new Object();
                ?? obj2 = new Object();
                obj2.f5242a = versionInfoParcel;
                obj2.d = new WeakReference(context);
                if (context.getApplicationContext() != null) {
                    context2 = context.getApplicationContext();
                } else {
                    context2 = context;
                }
                obj2.b = context2;
                obj2.f5243c = currentTimeMillis;
                obj.f5297a = new zzcli(obj2);
                obj.b = new Object();
                zzclg a3 = obj.a();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ff)).booleanValue()) {
                    zzcdj zze = com.google.android.gms.ads.internal.zzt.zze();
                    zzgyw zzgywVar2 = zzcdo.f5068a;
                    zzijo.a(zzgywVar2);
                    zze.a(zzgywVar2, a3.d(), context);
                    final zzcdj zze2 = com.google.android.gms.ads.internal.zzt.zze();
                    if (zze2.d.get() && zze2.f >= 0 && zze2.g >= 0 && zze2.e.compareAndSet(false, true) && (zzgywVar = zze2.f5063a) != null) {
                        zzgywVar.E0(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcdh
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzdxe zzdxeVar;
                                ActivityManager.MemoryInfo zze3;
                                String str;
                                while (true) {
                                    zzcdj zzcdjVar = zzcdj.this;
                                    if (zzcdjVar.e.get()) {
                                        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                                        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcdg
                                            @Override // java.lang.Runnable
                                            public final /* synthetic */ void run() {
                                                atomicBoolean.getAndSet(true);
                                            }
                                        });
                                        try {
                                            Thread.sleep(zzcdjVar.f);
                                            if (!atomicBoolean.get()) {
                                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.jf)).booleanValue() && (zzdxeVar = zzcdjVar.b) != null) {
                                                    zzdxd a4 = zzdxeVar.a();
                                                    a4.b("action", "panr");
                                                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Lf)).booleanValue() && (zze3 = com.google.android.gms.ads.internal.util.client.zzf.zze(zzcdjVar.f5064c)) != null) {
                                                        a4.b("mem_avl", String.valueOf(zze3.availMem));
                                                        a4.b("mem_tt", String.valueOf(zze3.totalMem));
                                                        if (true != zze3.lowMemory) {
                                                            str = "0";
                                                        } else {
                                                            str = "1";
                                                        }
                                                        a4.b("low_m", str);
                                                    }
                                                    a4.e();
                                                }
                                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.kf)).booleanValue()) {
                                                    StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
                                                    Exception exc = new Exception("Potential ANR detected");
                                                    exc.setStackTrace(stackTrace);
                                                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.lf)).booleanValue()) {
                                                        zzbxv.e(zzcdjVar.f5064c).b(exc, "AnrWatchdog", ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.mf)).intValue() / 100.0f);
                                                    } else {
                                                        com.google.android.gms.ads.internal.zzt.zzh().f("AnrWatchdog", exc);
                                                    }
                                                }
                                            }
                                            do {
                                                try {
                                                    Thread.sleep(zzcdjVar.g);
                                                } catch (InterruptedException unused2) {
                                                    Thread.currentThread().interrupt();
                                                }
                                            } while (!atomicBoolean.get());
                                        } catch (InterruptedException unused3) {
                                            Thread.currentThread().interrupt();
                                            return;
                                        }
                                    } else {
                                        return;
                                    }
                                }
                            }
                        });
                    }
                }
                ((zzebp) ((zzcmv) a3).o.zzb()).a();
                ((zzckz) ((zzcmv) a3).n.zzb()).a(context, versionInfoParcel);
                com.google.android.gms.ads.internal.zzt.zzh().d(context, versionInfoParcel, a3.d());
                com.google.android.gms.ads.internal.zzt.zzj().a(context);
                com.google.android.gms.ads.internal.zzt.zzc().zzc(context);
                com.google.android.gms.ads.internal.zzt.zzc().zzd(context);
                com.google.android.gms.ads.internal.util.zzd.zza(context);
                com.google.android.gms.ads.internal.zzt.zzg().a(context);
                com.google.android.gms.ads.internal.zzt.zzA().zza(context);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Cf)).booleanValue()) {
                    String str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Df);
                    if (!str.isEmpty()) {
                        if (Arrays.asList(str.split(",")).contains(context.getPackageName())) {
                            ((zzdum) ((zzcmv) a3).S.zzb()).a(com.google.android.gms.ads.internal.zzt.zzg());
                        }
                    }
                } else if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Bf)).booleanValue()) {
                    ((zzdum) ((zzcmv) a3).S.zzb()).a(com.google.android.gms.ads.internal.zzt.zzg());
                }
                ((com.google.android.gms.ads.internal.util.zzbz) ((zzcmv) a3).R.zzb()).zza();
                zzcbx.b(context);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.a7)).booleanValue()) {
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.c1)).booleanValue()) {
                        zzbfj zzbfjVar = new zzbfj(new zzbfo(context));
                        zzegn zzegnVar = new zzegn(new zzegj(context), (zzgyw) ((zzcmv) a3).f.zzb());
                        final zzehi zzehiVar = new zzehi(context, versionInfoParcel, zzbfjVar, zzegnVar);
                        final boolean zzx = com.google.android.gms.ads.internal.zzt.zzh().i().zzx();
                        try {
                            zzegnVar.a(new zzflu() { // from class: com.google.android.gms.internal.ads.zzehh
                                @Override // com.google.android.gms.internal.ads.zzflu
                                public final Object zza(Object obj3) {
                                    Cursor cursor;
                                    long j;
                                    SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj3;
                                    zzehi zzehiVar2 = zzehi.this;
                                    Context context3 = zzehiVar2.b;
                                    if (zzx) {
                                        context3.deleteDatabase("OfflineUpload.db");
                                        return null;
                                    }
                                    ArrayList arrayList = new ArrayList();
                                    Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
                                    while (query.moveToNext()) {
                                        try {
                                            arrayList.add(zzbfp.zzaf.zza.S(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
                                        } catch (zzibg e) {
                                            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                                            com.google.android.gms.ads.internal.util.client.zzo.zzf("Unable to deserialize proto from offline signals database:");
                                            com.google.android.gms.ads.internal.util.client.zzo.zzf(e.getMessage());
                                        }
                                    }
                                    query.close();
                                    zzbfp.zzaf.zzc D = zzbfp.zzaf.D();
                                    String packageName = context3.getPackageName();
                                    D.k();
                                    ((zzbfp.zzaf) D.f).I(packageName);
                                    String str2 = Build.MODEL;
                                    D.k();
                                    ((zzbfp.zzaf) D.f).J();
                                    int i3 = 0;
                                    int a4 = zzehc.a(sQLiteDatabase, 0);
                                    D.k();
                                    ((zzbfp.zzaf) D.f).F(a4);
                                    D.k();
                                    ((zzbfp.zzaf) D.f).E(arrayList);
                                    int a5 = zzehc.a(sQLiteDatabase, 1);
                                    D.k();
                                    ((zzbfp.zzaf) D.f).G(a5);
                                    int a6 = zzehc.a(sQLiteDatabase, 3);
                                    D.k();
                                    ((zzbfp.zzaf) D.f).L(a6);
                                    long currentTimeMillis2 = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
                                    D.k();
                                    ((zzbfp.zzaf) D.f).H(currentTimeMillis2);
                                    Cursor c2 = zzehc.c(sQLiteDatabase, 2);
                                    if (c2.getCount() > 0) {
                                        c2.moveToNext();
                                        cursor = c2;
                                        j = c2.getLong(c2.getColumnIndexOrThrow("value"));
                                    } else {
                                        cursor = c2;
                                        j = 0;
                                    }
                                    cursor.close();
                                    D.k();
                                    ((zzbfp.zzaf) D.f).K(j);
                                    final zzbfp.zzaf zzafVar = (zzbfp.zzaf) D.m();
                                    int size = arrayList.size();
                                    long j2 = 0;
                                    for (int i4 = 0; i4 < size; i4++) {
                                        zzbfp.zzaf.zza zzaVar = (zzbfp.zzaf.zza) arrayList.get(i4);
                                        if (zzaVar.R() == zzbfp.zzq.ENUM_TRUE && zzaVar.Q() > j2) {
                                            j2 = zzaVar.Q();
                                        }
                                    }
                                    if (j2 != 0) {
                                        ContentValues contentValues = new ContentValues();
                                        contentValues.put("value", Long.valueOf(j2));
                                        sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
                                    }
                                    zzbfj zzbfjVar2 = zzehiVar2.f6503a;
                                    zzbfjVar2.a(new zzbfi() { // from class: com.google.android.gms.internal.ads.zzehf
                                        @Override // com.google.android.gms.internal.ads.zzbfi
                                        public final void a(zzbfp.zzt.zza zzaVar2) {
                                            zzaVar2.k();
                                            ((zzbfp.zzt) zzaVar2.f).L(zzbfp.zzaf.this);
                                        }
                                    });
                                    VersionInfoParcel versionInfoParcel2 = zzehiVar2.f6504c;
                                    zzbfp.zzar.zza E = zzbfp.zzar.E();
                                    int i5 = versionInfoParcel2.buddyApkVersion;
                                    E.k();
                                    ((zzbfp.zzar) E.f).F(i5);
                                    int i6 = versionInfoParcel2.clientJarVersion;
                                    E.k();
                                    ((zzbfp.zzar) E.f).G(i6);
                                    if (true != versionInfoParcel2.isClientJar) {
                                        i3 = 2;
                                    }
                                    E.k();
                                    ((zzbfp.zzar) E.f).D(i3);
                                    final zzbfp.zzar zzarVar = (zzbfp.zzar) E.m();
                                    zzbfjVar2.a(new zzbfi() { // from class: com.google.android.gms.internal.ads.zzehg
                                        @Override // com.google.android.gms.internal.ads.zzbfi
                                        public final void a(zzbfp.zzt.zza zzaVar2) {
                                            zzbfp.zzm.zza zzaVar3 = (zzbfp.zzm.zza) ((zzbfp.zzt) zzaVar2.f).D().v();
                                            zzaVar3.k();
                                            ((zzbfp.zzm) zzaVar3.f).F(zzbfp.zzar.this);
                                            zzaVar2.k();
                                            ((zzbfp.zzt) zzaVar2.f).J((zzbfp.zzm) zzaVar3.m());
                                        }
                                    });
                                    zzbfjVar2.b(10004);
                                    sQLiteDatabase.delete("offline_signal_contents", null, null);
                                    zzehc.d(sQLiteDatabase, "failed_requests");
                                    zzehc.d(sQLiteDatabase, "total_requests");
                                    zzehc.d(sQLiteDatabase, "completed_requests");
                                    return null;
                                }
                            });
                        } catch (Exception e) {
                            String valueOf = String.valueOf(e.getMessage());
                            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzf("Error in offline signals database startup: ".concat(valueOf));
                        }
                    }
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.vf)).booleanValue()) {
                    zzcmv zzcmvVar = (zzcmv) a3;
                    Context context3 = zzcmvVar.b.b;
                    zzijo.a(context3);
                    zzgyw zzgywVar3 = zzcdo.f5068a;
                    zzijo.a(zzgywVar3);
                    final zzeeu zzeeuVar = new zzeeu(zzcmvVar, context3, zzgywVar3);
                    ((zzcdn) zzgywVar3).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeet
                        /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.ads.zzcnt, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzeeu zzeeuVar2 = zzeeu.this;
                            zzcmv zzcmvVar2 = ((zzcmv) zzeeuVar2.f6433a).f5277c;
                            zzijo.b(Context.class, zzeeuVar2.b);
                            zzcns zzcnsVar = new zzcns(zzcmvVar2);
                            zzijf zzijfVar = zzcmvVar2.l;
                            zzcli zzcliVar = zzcmvVar2.b;
                            Context context4 = zzcliVar.b;
                            zzijo.a(context4);
                            zzgyw zzgywVar4 = zzcdo.b;
                            zzijo.a(zzgywVar4);
                            zzgyw zzgywVar5 = zzcdo.f5068a;
                            zzijo.a(zzgywVar5);
                            zzija b = zzijf.b(zzcnsVar.f5319c);
                            VersionInfoParcel versionInfoParcel2 = zzcliVar.f5244a;
                            zzijo.a(versionInfoParcel2);
                            final zzefb zzefbVar = new zzefb(context4, zzgywVar4, zzgywVar5, b, versionInfoParcel2, zzcnsVar, (zzdxe) zzijfVar.zzb());
                            com.google.android.gms.ads.internal.zzt.zzc();
                            if (com.google.android.gms.ads.internal.util.zzs.zzH(context4.getPackageName())) {
                                zzgywVar5.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeez
                                    @Override // java.lang.Runnable
                                    public final /* synthetic */ void run() {
                                        zzefb.this.a();
                                    }
                                });
                                return;
                            }
                            zzeey zzeeyVar = new zzeey(zzefbVar);
                            ?? obj3 = new Object();
                            obj3.f5320a = zzeeyVar;
                            zzedk zzedkVar = obj3.f5320a;
                            zzcli zzcliVar2 = zzcnsVar.f5318a.b;
                            Context context5 = zzcliVar2.b;
                            zzijo.a(context5);
                            VersionInfoParcel versionInfoParcel3 = zzcliVar2.f5244a;
                            zzijo.a(versionInfoParcel3);
                            final zzedl zzedlVar = new zzedl(context5, versionInfoParcel3, zzedkVar);
                            zzgywVar4.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzefa
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzedl zzedlVar2 = zzedl.this;
                                    synchronized (zzedlVar2.b) {
                                        try {
                                            if (zzedlVar2.f6404c) {
                                                return;
                                            }
                                            zzedlVar2.f6404c = true;
                                            zzbyc zzbycVar = new zzbyc(zzedlVar2.g, com.google.android.gms.ads.internal.zzt.zzs().zza(), zzedlVar2, zzedlVar2);
                                            zzedlVar2.f = zzbycVar;
                                            zzbycVar.checkAvailabilityAndConnect();
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                }
                            });
                        }
                    });
                }
                f5241a = a3;
                return a3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzfaz A(zzbza zzbzaVar, int i) {
        return B(new zzfcc(zzbzaVar, i));
    }

    public abstract zzfaz B(zzfcc zzfccVar);

    public abstract zzdyv a();

    public abstract zzfja b();

    public abstract zzebh c();

    public abstract zzdxe d();

    public abstract Executor f();

    public abstract ScheduledExecutorService g();

    public abstract zzddl h();

    public abstract zzcoo i();

    public abstract zzfqb j();

    public abstract zzcug k();

    public abstract zzfeh l();

    public abstract zzcsp m();

    public abstract zzfcu n();

    public abstract zzdky o();

    public abstract zzffx p();

    public abstract zzdlu q();

    public abstract zzdti r();

    public abstract zzfhk s();

    public abstract com.google.android.gms.ads.nonagon.signalgeneration.zzab t();

    public abstract com.google.android.gms.ads.nonagon.signalgeneration.zzau u();

    public abstract com.google.android.gms.ads.nonagon.signalgeneration.zzv v();

    public abstract zzeif w();

    public abstract zzfjj x();

    public abstract zzeak y();

    public abstract zzfnr z();
}
