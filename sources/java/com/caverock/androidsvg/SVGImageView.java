package com.caverock.androidsvg;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.drawable.PictureDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class SVGImageView extends ImageView {
    public static final Method f;

    /* renamed from: c, reason: collision with root package name */
    public SVG f2581c;

    /* loaded from: classes.dex */
    public class LoadResourceTask extends AsyncTask<Integer, Integer, SVG> {

        /* renamed from: a, reason: collision with root package name */
        public final Context f2582a;
        public final int b;

        public LoadResourceTask(Context context, int i) {
            this.f2582a = context;
            this.b = i;
        }

        @Override // android.os.AsyncTask
        public final SVG doInBackground(Integer[] numArr) {
            int i = this.b;
            try {
                Resources resources = this.f2582a.getResources();
                SVGParser sVGParser = new SVGParser();
                InputStream openRawResource = resources.openRawResource(i);
                try {
                    SVG f = sVGParser.f(openRawResource);
                    try {
                        return f;
                    } catch (IOException unused) {
                        return f;
                    }
                } finally {
                    try {
                        openRawResource.close();
                    } catch (IOException unused2) {
                    }
                }
            } catch (SVGParseException e) {
                Log.e("SVGImageView", String.format("Error loading resource 0x%x: %s", Integer.valueOf(i), e.getMessage()));
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(SVG svg) {
            SVGImageView sVGImageView = SVGImageView.this;
            sVGImageView.f2581c = svg;
            sVGImageView.a();
        }
    }

    /* loaded from: classes.dex */
    public class LoadURITask extends AsyncTask<InputStream, Integer, SVG> {
        public LoadURITask() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v1, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r6v1, types: [java.io.InputStream[]] */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v6, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r6v7, types: [java.io.InputStream] */
        @Override // android.os.AsyncTask
        public final SVG doInBackground(InputStream[] inputStreamArr) {
            SVG svg;
            InputStream[] inputStreamArr2 = inputStreamArr;
            try {
                try {
                    svg = SVG.b(inputStreamArr2[0]);
                    try {
                        inputStreamArr2[0].close();
                        return svg;
                    } catch (IOException unused) {
                        return svg;
                    }
                } catch (Throwable th) {
                    try {
                        inputStreamArr2[0].close();
                    } catch (IOException unused2) {
                    }
                    throw th;
                }
            } catch (SVGParseException e) {
                Log.e("SVGImageView", "Parse error loading URI: " + e.getMessage());
                try {
                    inputStreamArr2 = inputStreamArr2[0];
                    inputStreamArr2.close();
                } catch (IOException unused3) {
                }
                svg = null;
                return svg;
            }
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(SVG svg) {
            SVGImageView sVGImageView = SVGImageView.this;
            sVGImageView.f2581c = svg;
            sVGImageView.a();
        }
    }

    static {
        try {
            f = View.class.getMethod("setLayerType", Integer.TYPE, Paint.class);
        } catch (NoSuchMethodException unused) {
        }
    }

    private void setFromString(String str) {
        try {
            this.f2581c = new SVGParser().f(new ByteArrayInputStream(str.getBytes()));
            a();
        } catch (SVGParseException unused) {
            Log.e("SVGImageView", "Could not find SVG at: " + str);
        }
    }

    public final void a() {
        SVG svg = this.f2581c;
        if (svg == null) {
            return;
        }
        Picture d = svg.d();
        Method method = f;
        if (method != null) {
            try {
                method.invoke(this, Integer.valueOf(View.class.getField("LAYER_TYPE_SOFTWARE").getInt(new View(getContext()))), null);
            } catch (Exception e) {
                Log.w("SVGImageView", "Unexpected failure calling setLayerType", e);
            }
        }
        setImageDrawable(new PictureDrawable(d));
    }

    public void setCSS(String str) {
        throw null;
    }

    public void setImageAsset(String str) {
        try {
            new LoadURITask().execute(getContext().getAssets().open(str));
        } catch (IOException unused) {
            Log.e("SVGImageView", "File not found: " + str);
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        new LoadResourceTask(getContext(), i).execute(new Integer[0]);
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        try {
            new LoadURITask().execute(getContext().getContentResolver().openInputStream(uri));
        } catch (FileNotFoundException unused) {
            Log.e("SVGImageView", "File not found: " + uri);
        }
    }

    public void setSVG(SVG svg) {
        if (svg != null) {
            this.f2581c = svg;
            a();
            return;
        }
        throw new IllegalArgumentException("Null value passed to setSVG()");
    }
}
