package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.core.app.NotificationManagerCompat;
import com.google.android.gms.ads.AdService;
import com.google.android.gms.ads.NotificationHandlerActivity;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzeif extends zzbwq {
    public static final /* synthetic */ int m = 0;
    public final HashMap f;
    public final Context g;
    public final zzdxe h;
    public final com.google.android.gms.ads.internal.util.client.zzu i;
    public final zzehu j;
    public String k;
    public String l;

    public zzeif(Context context, zzehu zzehuVar, com.google.android.gms.ads.internal.util.client.zzu zzuVar, zzdxe zzdxeVar) {
        super("com.google.android.gms.ads.internal.offline.IOfflineUtils");
        this.f = new HashMap();
        this.g = context;
        this.h = zzdxeVar;
        this.i = zzuVar;
        this.j = zzehuVar;
    }

    public static void d5(Context context, zzdxe zzdxeVar, zzehu zzehuVar, String str, String str2, Map map) {
        String str3;
        String str4;
        if (true != com.google.android.gms.ads.internal.zzt.zzh().k(context)) {
            str3 = "offline";
        } else {
            str3 = "online";
        }
        if (zzdxeVar != null) {
            zzdxd a2 = zzdxeVar.a();
            a2.b("gqi", str);
            a2.b("action", str2);
            a2.b("device_connectivity", str3);
            a2.b("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis()));
            for (Map.Entry entry : map.entrySet()) {
                a2.b((String) entry.getKey(), (String) entry.getValue());
            }
            zzdxj zzdxjVar = a2.b.f6227a;
            str4 = zzdxjVar.f.generateUrl(a2.f6226a);
        } else {
            str4 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        zzehw zzehwVar = new zzehw(2, str, str4, com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        zzehuVar.getClass();
        zzehuVar.a(new zzehr(zzehuVar, zzehwVar));
    }

    public static final PendingIntent e5(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setAction(str);
        intent.putExtra("offline_notification_action", str);
        intent.putExtra("gws_query_id", str2);
        intent.putExtra("uri", str3);
        if (Build.VERSION.SDK_INT >= 29 && str.equals("offline_notification_clicked")) {
            intent.setClassName(context, NotificationHandlerActivity.CLASS_NAME);
            return PendingIntent.getActivity(context, 0, zzgne.a(intent, 201326592), 201326592);
        }
        intent.setClassName(context, AdService.CLASS_NAME);
        return PendingIntent.getService(context, 0, zzgne.a(intent, 1140850688), 1140850688);
    }

    public static String j5(int i, String str) {
        Resources e = com.google.android.gms.ads.internal.zzt.zzh().e();
        if (e == null) {
            return str;
        }
        try {
            return e.getString(i);
        } catch (Resources.NotFoundException unused) {
            return str;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwr
    public final void F(Intent intent) {
        zzehu zzehuVar = this.j;
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra != null) {
            if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
                String stringExtra2 = intent.getStringExtra("gws_query_id");
                String stringExtra3 = intent.getStringExtra("uri");
                zzcda zzh = com.google.android.gms.ads.internal.zzt.zzh();
                Context context = this.g;
                boolean k = zzh.k(context);
                HashMap hashMap = new HashMap();
                char c2 = 2;
                if (stringExtra.equals("offline_notification_clicked")) {
                    hashMap.put("offline_notification_action", "offline_notification_clicked");
                    if (true == k) {
                        c2 = 1;
                    }
                    hashMap.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                    hashMap.put("olaih", String.valueOf(stringExtra3.startsWith("http")));
                    try {
                        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(stringExtra3);
                        if (launchIntentForPackage == null) {
                            launchIntentForPackage = new Intent("android.intent.action.VIEW");
                            launchIntentForPackage.setData(Uri.parse(stringExtra3));
                        }
                        launchIntentForPackage.addFlags(268435456);
                        context.startActivity(launchIntentForPackage);
                        hashMap.put("olaa", "olas");
                    } catch (ActivityNotFoundException unused) {
                        hashMap.put("olaa", "olaf");
                    }
                } else {
                    hashMap.put("offline_notification_action", "offline_notification_dismissed");
                }
                i5(stringExtra2, "offline_notification_action", hashMap);
                try {
                    SQLiteDatabase writableDatabase = zzehuVar.getWritableDatabase();
                    if (c2 == 1) {
                        zzehuVar.f.execute(new zzeho(writableDatabase, stringExtra2, this.i));
                    } else {
                        writableDatabase.delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{stringExtra2, Integer.toString(0)});
                    }
                } catch (SQLiteException e) {
                    String concat = "Failed to get writable offline buffering database: ".concat(e.toString());
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzf(concat);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwr
    public final void H4(String[] strArr, int[] iArr, IObjectWrapper iObjectWrapper) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i].equals("android.permission.POST_NOTIFICATIONS")) {
                zzeih zzeihVar = (zzeih) ObjectWrapper.f2(iObjectWrapper);
                Activity a2 = zzeihVar.a();
                com.google.android.gms.ads.internal.overlay.zzm b = zzeihVar.b();
                HashMap hashMap = new HashMap();
                if (iArr[i] == 0) {
                    hashMap.put("dialog_action", "confirm");
                    g5();
                    h5(a2, b);
                } else {
                    hashMap.put("dialog_action", "dismiss");
                    if (b != null) {
                        b.zzb();
                    }
                }
                i5(this.k, "asnpdc", hashMap);
                return;
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:1|(1:3)(1:32)|4|(1:6)(1:31)|7|(9:11|12|(2:24|25)|14|15|16|17|18|19)|30|(0)|14|15|16|17|18|19) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ed, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ee, code lost:
    
        r11.put("notification_not_shown_reason", r10.getMessage());
        r10 = "offline_notification_failed";
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v12, types: [androidx.core.app.NotificationCompat$BigPictureStyle, java.lang.Object, androidx.core.app.NotificationCompat$Style] */
    @Override // com.google.android.gms.internal.ads.zzbwr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void M4(com.google.android.gms.dynamic.IObjectWrapper r10, com.google.android.gms.ads.internal.offline.buffering.zza r11) {
        /*
            r9 = this;
            java.lang.Object r10 = com.google.android.gms.dynamic.ObjectWrapper.f2(r10)
            android.content.Context r10 = (android.content.Context) r10
            java.lang.String r0 = r11.zza
            java.lang.String r1 = r11.zzb
            java.lang.String r11 = r11.zzc
            java.util.HashMap r2 = r9.f
            java.lang.String r3 = r9.k
            java.lang.Object r2 = r2.get(r3)
            com.google.android.gms.internal.ads.zzehm r2 = (com.google.android.gms.internal.ads.zzehm) r2
            if (r2 != 0) goto L1b
            java.lang.String r2 = ""
            goto L1f
        L1b:
            java.lang.String r2 = r2.a()
        L1f:
            com.google.android.gms.ads.internal.util.zzz r3 = com.google.android.gms.ads.internal.zzt.zzf()
            java.lang.String r4 = "offline_notification_channel"
            java.lang.String r5 = "AdMob Offline Notifications"
            r3.zzg(r10, r4, r5)
            java.lang.String r3 = "offline_notification_clicked"
            android.app.PendingIntent r3 = e5(r10, r3, r1, r0)
            java.lang.String r5 = "offline_notification_dismissed"
            android.app.PendingIntent r0 = e5(r10, r5, r1, r0)
            androidx.core.app.NotificationCompat$Builder r5 = new androidx.core.app.NotificationCompat$Builder
            r5.<init>(r10, r4)
            boolean r4 = android.text.TextUtils.isEmpty(r2)
            r6 = 1
            if (r4 != 0) goto L5a
            int r4 = com.google.android.gms.ads.impl.R.string.offline_notification_title_with_advertiser
            java.lang.String r7 = "You are back online! Continue learning about %s"
            java.lang.String r4 = j5(r4, r7)
            java.lang.Object[] r7 = new java.lang.Object[r6]
            r8 = 0
            r7[r8] = r2
            java.lang.String r2 = java.lang.String.format(r4, r7)
            java.lang.CharSequence r2 = androidx.core.app.NotificationCompat.Builder.c(r2)
            r5.e = r2
            goto L68
        L5a:
            int r2 = com.google.android.gms.ads.impl.R.string.offline_notification_title
            java.lang.String r4 = "You are back online! Let's pick up where we left off"
            java.lang.String r2 = j5(r2, r4)
            java.lang.CharSequence r2 = androidx.core.app.NotificationCompat.Builder.c(r2)
            r5.e = r2
        L68:
            r2 = 16
            r5.d(r2)
            android.app.Notification r2 = r5.u
            r2.deleteIntent = r0
            r5.g = r3
            android.content.pm.ApplicationInfo r0 = r10.getApplicationInfo()
            int r0 = r0.icon
            r2.icon = r0
            com.google.android.gms.internal.ads.zzbgb r0 = com.google.android.gms.internal.ads.zzbgk.I9
            com.google.android.gms.internal.ads.zzbgi r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r2.a(r0)
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            r5.i = r0
            com.google.android.gms.internal.ads.zzbgb r0 = com.google.android.gms.internal.ads.zzbgk.K9
            com.google.android.gms.internal.ads.zzbgi r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r2.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r2 = 0
            if (r0 == 0) goto Lb8
            boolean r0 = r11.isEmpty()
            if (r0 != 0) goto Lb8
            java.net.URL r0 = new java.net.URL     // Catch: java.io.IOException -> Lb8
            r0.<init>(r11)     // Catch: java.io.IOException -> Lb8
            java.net.URLConnection r11 = r0.openConnection()     // Catch: java.io.IOException -> Lb8
            java.io.InputStream r11 = r11.getInputStream()     // Catch: java.io.IOException -> Lb8
            android.graphics.Bitmap r11 = android.graphics.BitmapFactory.decodeStream(r11)     // Catch: java.io.IOException -> Lb8
            goto Lb9
        Lb8:
            r11 = r2
        Lb9:
            if (r11 == 0) goto Ld3
            r5.e(r11)     // Catch: android.content.res.Resources.NotFoundException -> Ld3
            androidx.core.app.NotificationCompat$BigPictureStyle r0 = new androidx.core.app.NotificationCompat$BigPictureStyle     // Catch: android.content.res.Resources.NotFoundException -> Ld3
            r0.<init>()     // Catch: android.content.res.Resources.NotFoundException -> Ld3
            androidx.core.graphics.drawable.IconCompat r3 = new androidx.core.graphics.drawable.IconCompat     // Catch: android.content.res.Resources.NotFoundException -> Ld3
            r3.<init>(r6)     // Catch: android.content.res.Resources.NotFoundException -> Ld3
            r3.b = r11     // Catch: android.content.res.Resources.NotFoundException -> Ld3
            r0.b = r3     // Catch: android.content.res.Resources.NotFoundException -> Ld3
            r0.f634c = r2     // Catch: android.content.res.Resources.NotFoundException -> Ld3
            r0.d = r6     // Catch: android.content.res.Resources.NotFoundException -> Ld3
            r5.g(r0)     // Catch: android.content.res.Resources.NotFoundException -> Ld3
        Ld3:
            java.lang.String r11 = "notification"
            java.lang.Object r10 = r10.getSystemService(r11)
            android.app.NotificationManager r10 = (android.app.NotificationManager) r10
            java.util.HashMap r11 = new java.util.HashMap
            r11.<init>()
            android.app.Notification r0 = r5.b()     // Catch: java.lang.IllegalArgumentException -> Led
            r2 = 54321(0xd431, float:7.612E-41)
            r10.notify(r1, r2, r0)     // Catch: java.lang.IllegalArgumentException -> Led
            java.lang.String r10 = "offline_notification_impression"
            goto Lf9
        Led:
            r10 = move-exception
            java.lang.String r0 = "notification_not_shown_reason"
            java.lang.String r10 = r10.getMessage()
            r11.put(r0, r10)
            java.lang.String r10 = "offline_notification_failed"
        Lf9:
            r9.i5(r1, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeif.M4(com.google.android.gms.dynamic.IObjectWrapper, com.google.android.gms.ads.internal.offline.buffering.zza):void");
    }

    public final void c5(String str, zzdnm zzdnmVar) {
        zzbjy zzbjyVar;
        String str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        String n = zzdnmVar.n();
        String b = zzdnmVar.b();
        if (TextUtils.isEmpty(n)) {
            if (b != null) {
                n = b;
            } else {
                n = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
        }
        zzbjy d = zzdnmVar.d();
        if (d != null) {
            try {
                str2 = d.zzc().toString();
            } catch (RemoteException unused) {
            }
        }
        synchronized (zzdnmVar) {
            zzbjyVar = zzdnmVar.s;
        }
        Drawable drawable = null;
        if (zzbjyVar != null) {
            try {
                IObjectWrapper zzb = zzbjyVar.zzb();
                if (zzb != null) {
                    drawable = (Drawable) ObjectWrapper.f2(zzb);
                }
            } catch (RemoteException unused2) {
            }
        }
        this.f.put(str, new zzehj(n, str2, drawable));
    }

    public final void f5(final Activity activity, final com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        com.google.android.gms.ads.internal.zzt.zzc();
        if (!new NotificationManagerCompat(activity).a()) {
            int i = Build.VERSION.SDK_INT;
            zzgtg zzgtgVar = zzgvd.k;
            if (i < 33) {
                com.google.android.gms.ads.internal.zzt.zzc();
                AlertDialog.Builder zzP = com.google.android.gms.ads.internal.util.zzs.zzP(activity);
                zzP.setTitle(j5(R.string.notifications_permission_title, "Allow app to send you notifications?")).setPositiveButton(j5(R.string.notifications_permission_confirm, "Allow"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzeia
                    @Override // android.content.DialogInterface.OnClickListener
                    public final /* synthetic */ void onClick(DialogInterface dialogInterface, int i2) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("dialog_action", "confirm");
                        zzeif zzeifVar = zzeif.this;
                        zzeifVar.i5(zzeifVar.k, "rtsdc", hashMap);
                        com.google.android.gms.ads.internal.util.zzz zzf = com.google.android.gms.ads.internal.zzt.zzf();
                        Activity activity2 = activity;
                        activity2.startActivity(zzf.zzi(activity2));
                        zzeifVar.g5();
                        com.google.android.gms.ads.internal.overlay.zzm zzmVar2 = zzmVar;
                        if (zzmVar2 != null) {
                            zzmVar2.zzb();
                        }
                    }
                }).setNegativeButton(j5(R.string.notifications_permission_decline, "Don't allow"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzeib
                    @Override // android.content.DialogInterface.OnClickListener
                    public final /* synthetic */ void onClick(DialogInterface dialogInterface, int i2) {
                        zzeif zzeifVar = zzeif.this;
                        zzeifVar.j.b(zzeifVar.k);
                        HashMap hashMap = new HashMap();
                        hashMap.put("dialog_action", "dismiss");
                        zzeifVar.i5(zzeifVar.k, "rtsdc", hashMap);
                        com.google.android.gms.ads.internal.overlay.zzm zzmVar2 = zzmVar;
                        if (zzmVar2 != null) {
                            zzmVar2.zzb();
                        }
                    }
                }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzeic
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final /* synthetic */ void onCancel(DialogInterface dialogInterface) {
                        zzeif zzeifVar = zzeif.this;
                        zzeifVar.j.b(zzeifVar.k);
                        HashMap hashMap = new HashMap();
                        hashMap.put("dialog_action", "dismiss");
                        zzeifVar.i5(zzeifVar.k, "rtsdc", hashMap);
                        com.google.android.gms.ads.internal.overlay.zzm zzmVar2 = zzmVar;
                        if (zzmVar2 != null) {
                            zzmVar2.zzb();
                        }
                    }
                });
                zzP.create().show();
                i5(this.k, "rtsdi", zzgtgVar);
                return;
            }
            activity.requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 12345);
            i5(this.k, "asnpdi", zzgtgVar);
            return;
        }
        g5();
        h5(activity, zzmVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g5() {
        /*
            r7 = this;
            com.google.android.gms.ads.internal.zzt.zzc()     // Catch: android.os.RemoteException -> L21
            android.content.Context r0 = r7.g     // Catch: android.os.RemoteException -> L21
            com.google.android.gms.ads.internal.util.zzbo r1 = com.google.android.gms.ads.internal.util.zzs.zzE(r0)     // Catch: android.os.RemoteException -> L21
            com.google.android.gms.dynamic.ObjectWrapper r2 = new com.google.android.gms.dynamic.ObjectWrapper     // Catch: android.os.RemoteException -> L21
            r2.<init>(r0)     // Catch: android.os.RemoteException -> L21
            com.google.android.gms.ads.internal.offline.buffering.zza r3 = new com.google.android.gms.ads.internal.offline.buffering.zza     // Catch: android.os.RemoteException -> L21
            java.lang.String r4 = r7.l     // Catch: android.os.RemoteException -> L21
            java.lang.String r5 = r7.k     // Catch: android.os.RemoteException -> L21
            java.util.HashMap r6 = r7.f     // Catch: android.os.RemoteException -> L21
            java.lang.Object r6 = r6.get(r5)     // Catch: android.os.RemoteException -> L21
            com.google.android.gms.internal.ads.zzehm r6 = (com.google.android.gms.internal.ads.zzehm) r6     // Catch: android.os.RemoteException -> L21
            if (r6 != 0) goto L23
            java.lang.String r6 = ""
            goto L27
        L21:
            r0 = move-exception
            goto L42
        L23:
            java.lang.String r6 = r6.b()     // Catch: android.os.RemoteException -> L21
        L27:
            r3.<init>(r4, r5, r6)     // Catch: android.os.RemoteException -> L21
            boolean r2 = r1.zzg(r2, r3)     // Catch: android.os.RemoteException -> L21
            if (r2 != 0) goto L40
            com.google.android.gms.dynamic.ObjectWrapper r3 = new com.google.android.gms.dynamic.ObjectWrapper     // Catch: android.os.RemoteException -> L3e
            r3.<init>(r0)     // Catch: android.os.RemoteException -> L3e
            java.lang.String r0 = r7.l     // Catch: android.os.RemoteException -> L3e
            java.lang.String r4 = r7.k     // Catch: android.os.RemoteException -> L3e
            boolean r0 = r1.zze(r3, r0, r4)     // Catch: android.os.RemoteException -> L3e
            goto L4b
        L3e:
            r0 = move-exception
            goto L43
        L40:
            r0 = 1
            goto L4b
        L42:
            r2 = 0
        L43:
            int r1 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r1 = "Failed to schedule offline notification poster."
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r1, r0)
            r0 = r2
        L4b:
            if (r0 != 0) goto L5d
            com.google.android.gms.internal.ads.zzehu r0 = r7.j
            java.lang.String r1 = r7.k
            r0.b(r1)
            java.lang.String r0 = r7.k
            java.lang.String r1 = "offline_notification_worker_not_scheduled"
            com.google.android.gms.internal.ads.zzgtg r2 = com.google.android.gms.internal.ads.zzgvd.k
            r7.i5(r0, r1, r2)
        L5d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeif.g5():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0035 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h5(android.app.Activity r7, final com.google.android.gms.ads.internal.overlay.zzm r8) {
        /*
            r6 = this;
            com.google.android.gms.ads.internal.zzt.zzc()
            android.app.AlertDialog$Builder r0 = com.google.android.gms.ads.internal.util.zzs.zzP(r7)
            com.google.android.gms.internal.ads.zzeid r1 = new com.google.android.gms.internal.ads.zzeid
            r1.<init>()
            android.app.AlertDialog$Builder r0 = r0.setOnCancelListener(r1)
            int r1 = com.google.android.gms.ads.impl.R.layout.offline_ads_dialog
            com.google.android.gms.internal.ads.zzcda r2 = com.google.android.gms.ads.internal.zzt.zzh()
            android.content.res.Resources r2 = r2.e()
            r3 = 0
            if (r2 != 0) goto L1f
        L1d:
            r1 = r3
            goto L23
        L1f:
            android.content.res.XmlResourceParser r1 = r2.getLayout(r1)     // Catch: android.content.res.Resources.NotFoundException -> L1d
        L23:
            java.lang.String r2 = "Thanks for your interest.\nWe will share more once you're back online."
            if (r1 != 0) goto L35
            int r7 = com.google.android.gms.ads.impl.R.string.offline_dialog_text
            java.lang.String r7 = j5(r7, r2)
            r0.setMessage(r7)
            android.app.AlertDialog r7 = r0.create()
            goto La2
        L35:
            android.view.LayoutInflater r7 = r7.getLayoutInflater()     // Catch: android.content.res.Resources.NotFoundException -> L95
            android.view.View r7 = r7.inflate(r1, r3)     // Catch: android.content.res.Resources.NotFoundException -> L95
            r0.setView(r7)
            java.lang.String r1 = r6.k
            java.util.HashMap r2 = r6.f
            java.lang.Object r1 = r2.get(r1)
            com.google.android.gms.internal.ads.zzehm r1 = (com.google.android.gms.internal.ads.zzehm) r1
            if (r1 != 0) goto L4f
            java.lang.String r1 = ""
            goto L53
        L4f:
            java.lang.String r1 = r1.a()
        L53:
            boolean r4 = android.text.TextUtils.isEmpty(r1)
            r5 = 0
            if (r4 != 0) goto L68
            int r4 = com.google.android.gms.ads.impl.R.id.offline_dialog_advertiser_name
            android.view.View r4 = r7.findViewById(r4)
            android.widget.TextView r4 = (android.widget.TextView) r4
            r4.setVisibility(r5)
            r4.setText(r1)
        L68:
            java.lang.String r1 = r6.k
            java.lang.Object r1 = r2.get(r1)
            com.google.android.gms.internal.ads.zzehm r1 = (com.google.android.gms.internal.ads.zzehm) r1
            if (r1 != 0) goto L73
            goto L77
        L73:
            android.graphics.drawable.Drawable r3 = r1.c()
        L77:
            if (r3 == 0) goto L84
            int r1 = com.google.android.gms.ads.impl.R.id.offline_dialog_image
            android.view.View r7 = r7.findViewById(r1)
            android.widget.ImageView r7 = (android.widget.ImageView) r7
            r7.setImageDrawable(r3)
        L84:
            android.app.AlertDialog r7 = r0.create()
            android.view.Window r0 = r7.getWindow()
            android.graphics.drawable.ColorDrawable r1 = new android.graphics.drawable.ColorDrawable
            r1.<init>(r5)
            r0.setBackgroundDrawable(r1)
            goto La2
        L95:
            int r7 = com.google.android.gms.ads.impl.R.string.offline_dialog_text
            java.lang.String r7 = j5(r7, r2)
            r0.setMessage(r7)
            android.app.AlertDialog r7 = r0.create()
        La2:
            r7.show()
            java.util.Timer r0 = new java.util.Timer
            r0.<init>()
            com.google.android.gms.internal.ads.zzehx r1 = new com.google.android.gms.internal.ads.zzehx
            r1.<init>(r6, r7, r0, r8)
            r7 = 3000(0xbb8, double:1.482E-320)
            r0.schedule(r1, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeif.h5(android.app.Activity, com.google.android.gms.ads.internal.overlay.zzm):void");
    }

    public final void i5(String str, String str2, Map map) {
        d5(this.g, this.h, this.j, str, str2, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbwr
    public final void y(IObjectWrapper iObjectWrapper) {
        zzeih zzeihVar = (zzeih) ObjectWrapper.f2(iObjectWrapper);
        final Activity a2 = zzeihVar.a();
        final com.google.android.gms.ads.internal.overlay.zzm b = zzeihVar.b();
        this.k = zzeihVar.c();
        this.l = zzeihVar.d();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.H9)).booleanValue()) {
            i5(this.k, "dialog_impression", zzgvd.k);
            com.google.android.gms.ads.internal.zzt.zzc();
            AlertDialog.Builder zzP = com.google.android.gms.ads.internal.util.zzs.zzP(a2);
            zzP.setTitle(j5(R.string.offline_opt_in_title, "Open ad when you're back online.")).setMessage(j5(R.string.offline_opt_in_message, "We'll send you a notification with a link to the advertiser site.")).setPositiveButton(j5(R.string.offline_opt_in_confirm, "OK"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzeie
                @Override // android.content.DialogInterface.OnClickListener
                public final /* synthetic */ void onClick(DialogInterface dialogInterface, int i) {
                    zzeif zzeifVar = zzeif.this;
                    zzeifVar.getClass();
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "confirm");
                    zzeifVar.i5(zzeifVar.k, "dialog_click", hashMap);
                    zzeifVar.f5(a2, b);
                }
            }).setNegativeButton(j5(R.string.offline_opt_in_decline, "No thanks"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzehy
                @Override // android.content.DialogInterface.OnClickListener
                public final /* synthetic */ void onClick(DialogInterface dialogInterface, int i) {
                    zzeif zzeifVar = zzeif.this;
                    zzeifVar.j.b(zzeifVar.k);
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    zzeifVar.i5(zzeifVar.k, "dialog_click", hashMap);
                    com.google.android.gms.ads.internal.overlay.zzm zzmVar = b;
                    if (zzmVar != null) {
                        zzmVar.zzb();
                    }
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzehz
                @Override // android.content.DialogInterface.OnCancelListener
                public final /* synthetic */ void onCancel(DialogInterface dialogInterface) {
                    zzeif zzeifVar = zzeif.this;
                    zzeifVar.j.b(zzeifVar.k);
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    zzeifVar.i5(zzeifVar.k, "dialog_click", hashMap);
                    com.google.android.gms.ads.internal.overlay.zzm zzmVar = b;
                    if (zzmVar != null) {
                        zzmVar.zzb();
                    }
                }
            });
            zzP.create().show();
            return;
        }
        f5(a2, b);
    }

    @Override // com.google.android.gms.internal.ads.zzbwr
    public final void zzg() {
        final com.google.android.gms.ads.internal.util.client.zzu zzuVar = this.i;
        this.j.a(new zzflu() { // from class: com.google.android.gms.internal.ads.zzehs
            @Override // com.google.android.gms.internal.ads.zzflu
            public final /* synthetic */ Object zza(Object obj) {
                zzehu.d((SQLiteDatabase) obj, com.google.android.gms.ads.internal.util.client.zzu.this);
                return null;
            }
        });
    }
}
