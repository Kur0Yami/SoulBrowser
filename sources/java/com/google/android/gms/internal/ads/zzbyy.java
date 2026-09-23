package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.IOUtils;
import java.io.DataOutputStream;
import java.io.IOException;

@SafeParcelable.Class(creator = "LargeParcelTeleporterCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzbyy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbyy> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public ParcelFileDescriptor f4978c;
    public Parcelable f = null;
    public boolean g = true;

    public zzbyy(ParcelFileDescriptor parcelFileDescriptor) {
        this.f4978c = parcelFileDescriptor;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        final ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
        ParcelFileDescriptor[] createPipe;
        if (this.f4978c == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.f.writeToParcel(obtain, 0);
                final byte[] marshall = obtain.marshall();
                obtain.recycle();
                ParcelFileDescriptor parcelFileDescriptor = null;
                try {
                    createPipe = ParcelFileDescriptor.createPipe();
                    autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(createPipe[1]);
                } catch (IOException e) {
                    e = e;
                    autoCloseOutputStream = null;
                }
                try {
                    ((zzcdn) zzcdo.f5068a).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbyx
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            DataOutputStream dataOutputStream;
                            byte[] bArr = marshall;
                            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream2 = autoCloseOutputStream;
                            DataOutputStream dataOutputStream2 = null;
                            try {
                                try {
                                    dataOutputStream = new DataOutputStream(autoCloseOutputStream2);
                                } catch (IOException e2) {
                                    e = e2;
                                }
                            } catch (Throwable th) {
                                th = th;
                            }
                            try {
                                dataOutputStream.writeInt(bArr.length);
                                dataOutputStream.write(bArr);
                                IOUtils.closeQuietly(dataOutputStream);
                            } catch (IOException e3) {
                                e = e3;
                                dataOutputStream2 = dataOutputStream;
                                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzg("Error transporting the ad response", e);
                                com.google.android.gms.ads.internal.zzt.zzh().f("LargeParcelTeleporter.pipeData.1", e);
                                if (dataOutputStream2 == null) {
                                    IOUtils.closeQuietly(autoCloseOutputStream2);
                                } else {
                                    IOUtils.closeQuietly(dataOutputStream2);
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                dataOutputStream2 = dataOutputStream;
                                if (dataOutputStream2 == null) {
                                    IOUtils.closeQuietly(autoCloseOutputStream2);
                                } else {
                                    IOUtils.closeQuietly(dataOutputStream2);
                                }
                                throw th;
                            }
                        }
                    });
                    parcelFileDescriptor = createPipe[0];
                } catch (IOException e2) {
                    e = e2;
                    int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Error transporting the ad response", e);
                    com.google.android.gms.ads.internal.zzt.zzh().f("LargeParcelTeleporter.pipeData.2", e);
                    IOUtils.closeQuietly(autoCloseOutputStream);
                    this.f4978c = parcelFileDescriptor;
                    int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
                    SafeParcelWriter.writeParcelable(parcel, 2, this.f4978c, i, false);
                    SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
                }
                this.f4978c = parcelFileDescriptor;
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        }
        int beginObjectHeader2 = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f4978c, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader2);
    }
}
