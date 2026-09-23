package androidx.print;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentInfo;
import androidx.annotation.RequiresApi;
import java.io.FileNotFoundException;

/* loaded from: classes.dex */
public final class PrintHelper {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f1437a;

    /* renamed from: androidx.print.PrintHelper$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends AsyncTask<Void, Void, Throwable> {
        @Override // android.os.AsyncTask
        public final Throwable doInBackground(Void[] voidArr) {
            throw null;
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Throwable th) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public interface OnPrintFinishCallback {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public class PrintBitmapAdapter extends PrintDocumentAdapter {
        @Override // android.print.PrintDocumentAdapter
        public final void onFinish() {
        }

        @Override // android.print.PrintDocumentAdapter
        public final void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
            layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(null).setContentType(1).setPageCount(1).build(), !printAttributes2.equals(printAttributes));
        }

        @Override // android.print.PrintDocumentAdapter
        public final void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
            throw null;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public class PrintUriAdapter extends PrintDocumentAdapter {

        /* renamed from: a, reason: collision with root package name */
        public PrintAttributes f1438a;
        public Bitmap b;

        @Override // android.print.PrintDocumentAdapter
        public final void onFinish() {
            super.onFinish();
            throw null;
        }

        @Override // android.print.PrintDocumentAdapter
        public final void onLayout(final PrintAttributes printAttributes, final PrintAttributes printAttributes2, final CancellationSignal cancellationSignal, final PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
            synchronized (this) {
                try {
                    this.f1438a = printAttributes2;
                } catch (Throwable th) {
                    th = th;
                    while (true) {
                        try {
                            break;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                    throw th;
                }
            }
            if (cancellationSignal.isCanceled()) {
                layoutResultCallback.onLayoutCancelled();
            } else if (this.b != null) {
                layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(null).setContentType(1).setPageCount(1).build(), !printAttributes2.equals(printAttributes));
            } else {
                new AsyncTask<Uri, Boolean, Bitmap>() { // from class: androidx.print.PrintHelper.PrintUriAdapter.1
                    @Override // android.os.AsyncTask
                    public final Bitmap doInBackground(Uri[] uriArr) {
                        try {
                            PrintUriAdapter.this.getClass();
                            throw null;
                        } catch (FileNotFoundException unused) {
                            return null;
                        }
                    }

                    @Override // android.os.AsyncTask
                    public final void onCancelled(Bitmap bitmap) {
                        layoutResultCallback.onLayoutCancelled();
                    }

                    @Override // android.os.AsyncTask
                    public final void onPostExecute(Bitmap bitmap) {
                        PrintAttributes.MediaSize mediaSize;
                        boolean z;
                        Bitmap bitmap2 = bitmap;
                        super.onPostExecute(bitmap2);
                        if (bitmap2 != null) {
                            if (!PrintHelper.f1437a) {
                                synchronized (this) {
                                    mediaSize = PrintUriAdapter.this.f1438a.getMediaSize();
                                }
                                if (mediaSize != null) {
                                    boolean isPortrait = mediaSize.isPortrait();
                                    if (bitmap2.getWidth() <= bitmap2.getHeight()) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    if (isPortrait != z) {
                                        Matrix matrix = new Matrix();
                                        matrix.postRotate(90.0f);
                                        bitmap2 = Bitmap.createBitmap(bitmap2, 0, 0, bitmap2.getWidth(), bitmap2.getHeight(), matrix, true);
                                    }
                                }
                            } else {
                                throw null;
                            }
                        }
                        PrintUriAdapter.this.b = bitmap2;
                        if (bitmap2 != null) {
                            layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(null).setContentType(1).setPageCount(1).build(), true ^ printAttributes2.equals(printAttributes));
                            return;
                        }
                        layoutResultCallback.onLayoutFailed(null);
                    }

                    @Override // android.os.AsyncTask
                    public final void onPreExecute() {
                        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.print.PrintHelper.PrintUriAdapter.1.1
                            @Override // android.os.CancellationSignal.OnCancelListener
                            public final void onCancel() {
                                PrintUriAdapter.this.getClass();
                                throw null;
                            }
                        });
                    }
                }.execute(new Uri[0]);
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public final void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
            throw null;
        }
    }

    static {
        boolean z;
        if (Build.VERSION.SDK_INT > 23) {
            z = true;
        } else {
            z = false;
        }
        f1437a = z;
    }
}
