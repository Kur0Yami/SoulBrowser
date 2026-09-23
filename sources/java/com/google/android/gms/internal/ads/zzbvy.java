package com.google.android.gms.internal.ads;

import android.app.DownloadManager;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;

/* loaded from: classes.dex */
final class zzbvy implements DialogInterface.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f4936c;
    public final /* synthetic */ String f;
    public final /* synthetic */ zzbwa g;

    public zzbvy(zzbwa zzbwaVar, String str, String str2) {
        this.f4936c = str;
        this.f = str2;
        this.g = zzbwaVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        zzbwa zzbwaVar = this.g;
        DownloadManager downloadManager = (DownloadManager) zzbwaVar.d.getSystemService("download");
        try {
            String str = this.f4936c;
            String str2 = this.f;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            com.google.android.gms.ads.internal.zzt.zzc();
            request.allowScanningByMediaScanner();
            request.setNotificationVisibility(1);
            downloadManager.enqueue(request);
        } catch (IllegalStateException unused) {
            zzbwaVar.b("Could not store picture.");
        }
    }
}
