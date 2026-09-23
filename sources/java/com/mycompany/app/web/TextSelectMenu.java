package com.mycompany.app.web;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.webkit.ValueCallback;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetPopup;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyWebBody;

/**
 * Text-selection ActionMode: rebuild from PrefWeb toggle/order prefs, always
 * append a settings cog that opens DialogSetPopup mode 4.
 */
public final class TextSelectMenu {
    public static final int COUNT = 7;
    public static final int ID_SETTINGS = 100;

    private TextSelectMenu() {
    }

    static WebViewActivity activityOf(View host) {
        if (host == null) {
            return null;
        }
        Context context = host.getContext();
        while (context instanceof ContextWrapper) {
            if (context instanceof WebViewActivity) {
                return (WebViewActivity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof WebViewActivity) {
            return (WebViewActivity) context;
        }
        return null;
    }

    /**
     * Wrap WebView ActionMode callbacks so the menu is filtered in
     * onCreate/onPrepare before the floating toolbar is first shown.
     */
    public static ActionMode.Callback wrap(final View host, final ActionMode.Callback original) {
        if (host == null || original == null) {
            return original;
        }
        if (original instanceof ActionMode.Callback2) {
            final ActionMode.Callback2 original2 = (ActionMode.Callback2) original;
            return new ActionMode.Callback2() {
                @Override
                public boolean onCreateActionMode(ActionMode mode, Menu menu) {
                    boolean created = original2.onCreateActionMode(mode, menu);
                    if (created) {
                        applyFrom(host, mode);
                    }
                    return created;
                }

                @Override
                public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
                    original2.onPrepareActionMode(mode, menu);
                    applyFrom(host, mode);
                    return true;
                }

                @Override
                public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
                    return original2.onActionItemClicked(mode, item);
                }

                @Override
                public void onDestroyActionMode(ActionMode mode) {
                    original2.onDestroyActionMode(mode);
                }

                @Override
                public void onGetContentRect(ActionMode mode, View view, Rect outRect) {
                    original2.onGetContentRect(mode, view, outRect);
                }
            };
        }
        return new ActionMode.Callback() {
            @Override
            public boolean onCreateActionMode(ActionMode mode, Menu menu) {
                boolean created = original.onCreateActionMode(mode, menu);
                if (created) {
                    applyFrom(host, mode);
                }
                return created;
            }

            @Override
            public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
                original.onPrepareActionMode(mode, menu);
                applyFrom(host, mode);
                return true;
            }

            @Override
            public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
                return original.onActionItemClicked(mode, item);
            }

            @Override
            public void onDestroyActionMode(ActionMode mode) {
                original.onDestroyActionMode(mode);
            }
        };
    }

    static void applyFrom(View host, ActionMode actionMode) {
        WebViewActivity activity = activityOf(host);
        if (activity == null || activity.z5() || activity.j9) {
            return;
        }
        apply(activity, actionMode);
    }

    /**
     * Floating ActionMode toolbars (API 28+) paint titles, not MenuItem icons.
     * Embed the cog in the title so it actually shows. Icon follows UI theme
     * (MainApp.K1): *_dark_24 is light-on-dark, *_black_24 is dark-on-light.
     */
    static CharSequence settingsTitle(Context context) {
        if (context == null) {
            return "\u2699";
        }
        int res = MainApp.K1 ? R.drawable.outline_settings_dark_24 : R.drawable.outline_settings_black_24;
        Drawable d = context.getDrawable(res);
        if (d == null) {
            return "\u2699";
        }
        d = d.mutate();
        int size = d.getIntrinsicWidth();
        if (size <= 0) {
            size = 48;
        }
        d.setBounds(0, 0, size, size);
        // Gear char remains if the host strips spans to a plain String.
        SpannableString title = new SpannableString("\u2699");
        title.setSpan(new ImageSpan(d, ImageSpan.ALIGN_CENTER), 0, 1, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        return title;
    }

    public static void apply(final WebViewActivity activity, final ActionMode actionMode) {
        if (activity == null || actionMode == null) {
            return;
        }
        try {
            Menu menu = actionMode.getMenu();
            if (menu == null) {
                return;
            }
            menu.clear();
            int order = 0;
            int mask = PrefWeb.h0;
            for (final int id : MainUtil.g3(4, false)) {
                if (id < 0 || id >= COUNT || (mask & (1 << id)) == 0) {
                    continue;
                }
                MenuItem item = menu.add(0, id, order++, DialogSetPopup.w0[id]);
                item.setShowAsAction(MenuItem.SHOW_AS_ACTION_IF_ROOM);
                item.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() {
                    @Override
                    public final boolean onMenuItemClick(MenuItem menuItem) {
                        return onItem(activity, actionMode, id);
                    }
                });
            }
            MenuItem settings = menu.add(0, ID_SETTINGS, order++, settingsTitle(activity));
            settings.setShowAsAction(MenuItem.SHOW_AS_ACTION_IF_ROOM);
            settings.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() {
                @Override
                public final boolean onMenuItemClick(MenuItem menuItem) {
                    try {
                        actionMode.finish();
                    } catch (Exception unused) {
                    }
                    edit(activity);
                    return true;
                }
            });
            activity.l9 = actionMode;
            MyWebBody body = activity.e2;
            if (activity.I2 != null && body != null) {
                body.post(new Runnable() {
                    @Override
                    public final void run() {
                        ActionMode mode = activity.l9;
                        if (mode != null) {
                            try {
                                mode.invalidateContentRect();
                            } catch (Exception unused) {
                            }
                        }
                    }
                });
            }
        } catch (Exception unused) {
        }
    }

    public static void edit(final WebViewActivity activity) {
        if (activity == null || activity.dA != null) {
            return;
        }
        final DialogSetPopup dialogSetPopup = new DialogSetPopup(activity);
        dialogSetPopup.a0 = activity;
        dialogSetPopup.b0 = dialogSetPopup.getContext();
        dialogSetPopup.c0 = new DialogSetFull.DialogApplyListener() {
            @Override
            public final void a() {
            }
        };
        dialogSetPopup.d0 = 4;
        dialogSetPopup.l0 = PrefWeb.h0;
        dialogSetPopup.m0 = PrefWeb.i0;
        dialogSetPopup.n0 = dialogSetPopup.C(false);
        dialogSetPopup.G();
        activity.dA = dialogSetPopup;
        dialogSetPopup.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public final void onDismiss(DialogInterface dialogInterface) {
                if (activity.dA != null) {
                    activity.dA.dismiss();
                    activity.dA = null;
                }
            }
        });
    }

    static boolean onItem(final WebViewActivity activity, ActionMode actionMode, int id) {
        if (activity == null || activity.I2 == null) {
            return true;
        }
        if (id == 2) {
            MainUtil.I(activity.I2,
                    "(function(){try{var s=window.getSelection();if(!s)return;var n=document.activeElement;"
                            + "if(n&&(n.tagName=='INPUT'||n.tagName=='TEXTAREA')){n.select();return;}"
                            + "s.selectAllChildren(document.body);}catch(e){}})();",
                    true);
            try {
                actionMode.invalidateContentRect();
            } catch (Exception unused) {
            }
            return true;
        }
        if (id == 4) {
            activity.I2.evaluateJavascript("document.documentElement.lang", new ValueCallback<String>() {
                @Override
                public final void onReceiveValue(String str) {
                    if (activity.I2 == null) {
                        return;
                    }
                    activity.Ao = MainUtil.X6(str);
                    MainUtil.I(activity.I2,
                            "(function(){var tag='onActionTrans';var val=window.getSelection().toString();android.onJsResult(tag,val);})();",
                            true);
                }
            });
            return true;
        }
        withSelection(activity, new ValueCallback<String>() {
            @Override
            public final void onReceiveValue(String raw) {
                String text = unwrapJsString(raw);
                if (TextUtils.isEmpty(text)) {
                    MainUtil.e8(activity, R.string.empty);
                    return;
                }
                if (id == 0) {
                    MainUtil.s(R.string.copied_clipboard, activity, "Copied text", text);
                    return;
                }
                if (id == 1) {
                    activity.m8(text, null);
                    return;
                }
                if (id == 3) {
                    activity.S5(searchUrl(activity, text), null);
                    return;
                }
                if (id == 5) {
                    try {
                        actionMode.finish();
                    } catch (Exception unused) {
                    }
                    activity.G9(searchUrl(activity, text), 0, null, false);
                    return;
                }
                if (id == 6) {
                    try {
                        actionMode.finish();
                    } catch (Exception unused) {
                    }
                    activity.i5(text);
                }
            }
        });
        return true;
    }

    private static String searchUrl(WebViewActivity activity, String text) {
        String url = MainUtil.q4(activity.i1, text);
        if (TextUtils.isEmpty(url)) {
            try {
                url = "https://www.google.com/search?q=" + Uri.encode(text);
            } catch (Exception unused) {
                url = "https://www.google.com/search?q=" + text;
            }
        }
        return url;
    }

    private static void withSelection(WebViewActivity activity, final ValueCallback<String> callback) {
        if (activity.I2 == null || callback == null) {
            return;
        }
        activity.I2.evaluateJavascript("(function(){try{return window.getSelection().toString();}catch(e){return '';}})();",
                callback);
    }

    private static String unwrapJsString(String raw) {
        if (raw == null || raw.equals("null") || raw.equals("\"\"")) {
            return null;
        }
        String out = raw;
        if (out.length() >= 2 && out.charAt(0) == '"' && out.charAt(out.length() - 1) == '"') {
            out = out.substring(1, out.length() - 1);
        }
        out = out.replace("\\n", "\n").replace("\\r", "\r").replace("\\\"", "\"").replace("\\\\", "\\");
        return TextUtils.isEmpty(out) ? null : out;
    }
}
