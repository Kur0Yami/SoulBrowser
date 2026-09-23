package com.google.android.gms.cast.framework.media.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.RemoteException;
import com.google.android.gms.cast.framework.ModuleUnavailableException;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.cast.zzay;
import com.google.android.gms.internal.cast.zzbc;

/* loaded from: classes.dex */
public final class zzd extends AsyncTask {

    /* renamed from: c, reason: collision with root package name */
    public static final Logger f3512c = new Logger("FetchBitmapTask", null);

    /* renamed from: a, reason: collision with root package name */
    public final zzg f3513a;
    public final zzb b;

    public zzd(Context context, int i, int i2, zzb zzbVar) {
        zzg zzgVar;
        this.b = zzbVar;
        Context applicationContext = context.getApplicationContext();
        zzc zzcVar = new zzc(this);
        Logger logger = zzay.f9625a;
        try {
            zzbc a2 = zzay.a(applicationContext.getApplicationContext());
            ObjectWrapper objectWrapper = new ObjectWrapper(applicationContext.getApplicationContext());
            if (a2.zze() >= 233700000) {
                zzgVar = a2.I0(objectWrapper, new ObjectWrapper(this), zzcVar, i, i2);
            } else {
                zzgVar = a2.X1(new ObjectWrapper(this), zzcVar, i, i2);
            }
        } catch (RemoteException e) {
            e = e;
            zzay.f9625a.a(e, "Unable to call %s on %s.", "newFetchBitmapTaskImpl", "zzbc");
            zzgVar = null;
            this.f3513a = zzgVar;
        } catch (ModuleUnavailableException e2) {
            e = e2;
            zzay.f9625a.a(e, "Unable to call %s on %s.", "newFetchBitmapTaskImpl", "zzbc");
            zzgVar = null;
            this.f3513a = zzgVar;
        }
        this.f3513a = zzgVar;
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        Uri uri;
        zzg zzgVar;
        Uri[] uriArr = (Uri[]) objArr;
        if (uriArr.length == 1 && (uri = uriArr[0]) != null && (zzgVar = this.f3513a) != null) {
            try {
                return zzgVar.q0(uri);
            } catch (RemoteException e) {
                f3512c.a(e, "Unable to call %s on %s.", "doFetch", "zzg");
            }
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        Bitmap bitmap = (Bitmap) obj;
        zzb zzbVar = this.b;
        if (zzbVar != null) {
            zza zzaVar = zzbVar.e;
            if (zzaVar != null) {
                zzaVar.a(bitmap);
            }
            zzbVar.d = null;
        }
    }
}
