package com.mycompany.app.image;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.webkit.URLUtil;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.view.MyButtonImage;
import net.kaki87.soul2.testing.R;
import java.io.File;
import java.util.Locale;

/** PDF share/download buttons in the image viewer icon toolbar row. */
public final class PdfPreviewToolbar {
    private static final String TAG_SHARE = "pdf_preview_actions_share";
    private static final String TAG_DOWNLOAD = "pdf_preview_actions_download";

    private PdfPreviewToolbar() {
    }

    public static void attachForPdf(final ImageViewControl control, final Activity activity) {
        if (control == null || activity == null || activity.isFinishing()) {
            return;
        }
        Intent intent = activity.getIntent();
        if (intent == null) {
            return;
        }
        final String path = intent.getStringExtra("EXTRA_PATH");
        if (TextUtils.isEmpty(path)) {
            return;
        }
        final String title = intent.getStringExtra("EXTRA_NAME");
        if (!addIconRow(control)) {
            return;
        }
        control.post(new Runnable() {
            @Override
            public void run() {
                if (activity.isFinishing()) {
                    return;
                }
                applyHeaderTitle(control, title, path);
                LinearLayout bar = control.M;
                if (bar == null) {
                    return;
                }
                View shareView = bar.findViewWithTag(TAG_SHARE);
                View downloadView = bar.findViewWithTag(TAG_DOWNLOAD);
                if (!(shareView instanceof MyButtonImage) || !(downloadView instanceof MyButtonImage)) {
                    return;
                }
                final MyButtonImage share = (MyButtonImage) shareView;
                final MyButtonImage download = (MyButtonImage) downloadView;
                share.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        share(activity, path, title);
                    }
                });
                download.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        download(activity, path, title);
                    }
                });
            }
        });
    }

    private static boolean addIconRow(ImageViewControl control) {
        LinearLayout bar = control.M;
        if (bar == null || bar.findViewWithTag(TAG_SHARE) != null) {
            return false;
        }
        Context context = control.getContext();
        int size = MainApp.g1;
        int gap = MainApp.F1;
        MyButtonImage share = button(context, R.drawable.outline_share_white_24);
        share.setTag(TAG_SHARE);
        MyButtonImage download = button(context, R.drawable.outline_download_white_24);
        download.setTag(TAG_DOWNLOAD);
        LinearLayout.LayoutParams shareLp = new LinearLayout.LayoutParams(size, size);
        shareLp.setMarginStart(gap);
        int insertIndex = bar.indexOfChild(control.R);
        if (insertIndex < 0) {
            insertIndex = bar.getChildCount();
        }
        bar.addView(share, insertIndex, shareLp);
        bar.addView(download, insertIndex + 1, new LinearLayout.LayoutParams(size, size));
        return true;
    }

    private static MyButtonImage button(Context context, int icon) {
        MyButtonImage button = new MyButtonImage(context);
        button.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        button.setImageResource(icon);
        button.n(MainApp.j1, MainApp.k1);
        button.k(Color.TRANSPARENT, -1586137739);
        return button;
    }

    private static void share(Activity activity, String path, String title) {
        if (URLUtil.isNetworkUrl(path)) {
            MainUtil.a8(activity, path, title);
            return;
        }
        File src = new File(path);
        if (!src.isFile() || src.length() == 0L) {
            MainUtil.e8(activity, R.string.invalid_path);
            return;
        }
        String name = resolveName(title, src.getName());
        if (!name.toLowerCase(Locale.US).endsWith(".pdf")) {
            name = name + ".pdf";
        }
        String sharePath = path;
        if (!name.equals(src.getName())) {
            String dest = MainUtil.k0(activity, MainUtil.p3(name));
            if (TextUtils.isEmpty(dest) || !MainUtil.u(path, dest)) {
                MainUtil.e8(activity, R.string.invalid_path);
                return;
            }
            sharePath = dest;
        }
        MainUtil.Z7(0, activity, sharePath, name, "application/pdf");
    }

    private static void download(Context context, String path, String title) {
        if (URLUtil.isNetworkUrl(path)) {
            return;
        }
        File src = new File(path);
        if (!src.isFile() || src.length() == 0L) {
            MainUtil.e8(context, R.string.invalid_path);
            return;
        }
        String dir = MainUri.e();
        if (TextUtils.isEmpty(dir)) {
            MainUtil.e8(context, R.string.select_dir);
            return;
        }
        String name = resolveName(title, src.getName());
        if (!name.toLowerCase(Locale.US).endsWith(".pdf")) {
            name = name + ".pdf";
        }
        name = MainUtil.p3(name);
        MainUri.UriItem item = MainUri.c(context, dir, null, name);
        if (item == null || TextUtils.isEmpty(item.e)) {
            MainUtil.e8(context, R.string.down_fail);
            return;
        }
        if (!MainUtil.t(context, path, item.e)) {
            MainUtil.e8(context, R.string.down_fail);
            return;
        }
        MainUtil.e8(context, R.string.down_complete);
    }

    private static String resolveName(String title, String fallback) {
        if (!TextUtils.isEmpty(title) && !isPreviewCacheName(title)) {
            return title;
        }
        if (!TextUtils.isEmpty(fallback) && !isPreviewCacheName(fallback)) {
            return fallback;
        }
        return "document.pdf";
    }

    private static boolean isPreviewCacheName(String name) {
        return name != null
                && name.startsWith("preview_")
                && name.toLowerCase(Locale.US).endsWith(".pdf");
    }

    /** Title shown in the PDF viewer header, with local file size when available. */
    public static String formatHeaderTitle(ImageViewControl control, String name, String path) {
        String title = resolveName(name, fallbackName(path));
        long size = fileSize(path);
        if (size <= 0L) {
            return title;
        }
        String suffix = " (" + MainUtil.h1(size) + ")";
        return ellipsizeName(control, title, suffix) + suffix;
    }

    public static void applyHeaderTitle(final ImageViewControl control, final String name,
            final String path) {
        if (control == null) {
            return;
        }
        Runnable apply = new Runnable() {
            @Override
            public void run() {
                control.setTitle(formatHeaderTitle(control, name, path));
            }
        };
        TextView titleView = control.G;
        if (titleView != null && titleView.getWidth() > 0) {
            apply.run();
        } else {
            control.post(apply);
        }
    }

    private static String ellipsizeName(ImageViewControl control, String name, String suffix) {
        if (control == null || TextUtils.isEmpty(name)) {
            return name;
        }
        TextView titleView = control.G;
        if (titleView == null) {
            return name;
        }
        int width = titleView.getWidth() - titleView.getPaddingLeft() - titleView.getPaddingRight();
        if (width <= 0) {
            width = control.getWidth() - titleView.getPaddingLeft() - titleView.getPaddingRight();
        }
        if (width <= 0 && control.getContext() != null) {
            width = control.getContext().getResources().getDisplayMetrics().widthPixels
                    - (MainApp.b1 * 2) - (MainApp.g1 * 2) - MainApp.G1;
        }
        if (width <= 0) {
            return name;
        }
        TextPaint paint = titleView.getPaint();
        float suffixWidth = paint.measureText(suffix);
        float maxNameWidth = width - suffixWidth;
        if (maxNameWidth <= 0f || paint.measureText(name) <= maxNameWidth) {
            return name;
        }
        CharSequence shortened = TextUtils.ellipsize(name, paint, maxNameWidth,
                TextUtils.TruncateAt.END);
        return shortened == null ? name : shortened.toString();
    }

    private static String fallbackName(String path) {
        if (TextUtils.isEmpty(path) || URLUtil.isNetworkUrl(path)) {
            return null;
        }
        File file = new File(path);
        if (file.isFile()) {
            return file.getName();
        }
        return MainUtil.b1(null, path);
    }

    private static long fileSize(String path) {
        if (TextUtils.isEmpty(path) || URLUtil.isNetworkUrl(path)) {
            return 0L;
        }
        File file = new File(path);
        if (!file.isFile()) {
            return 0L;
        }
        return file.length();
    }

    public static void applyControlTimeout(ImageViewControl control) {
        if (control == null) {
            return;
        }
        int seconds = PrefImage.J;
        if (seconds <= 0) {
            control.setAutoHide(false);
            return;
        }
        control.setAutoHide(true);
        control.setShowTime(seconds * 1000);
    }
}
