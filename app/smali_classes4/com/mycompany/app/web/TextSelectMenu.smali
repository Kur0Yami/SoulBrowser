.class public final Lcom/mycompany/app/web/TextSelectMenu;
.super Ljava/lang/Object;
.source "TextSelectMenu.java"

.field public final static COUNT:I = 7

.field public final static ID_SETTINGS:I = 100

.method static bridge synthetic -$$Nest$smsearchUrl(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
  .registers 2
    invoke-static { p0, p1 }, Lcom/mycompany/app/web/TextSelectMenu;->searchUrl(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method static bridge synthetic -$$Nest$smunwrapJsString(Ljava/lang/String;)Ljava/lang/String;
  .registers 1
    invoke-static { p0 }, Lcom/mycompany/app/web/TextSelectMenu;->unwrapJsString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method private constructor <init>()V
  .registers 1
  .line 34
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static activityOf(Landroid/view/View;)Lcom/mycompany/app/web/WebViewActivity;
  .registers 3
    const/4 v0, 0
    if-nez p0, :L0
    return-object v0
  :L0
  .line 41
    invoke-virtual { p0 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object p0
  :L1
  .line 42
    instance-of v1, p0, Landroid/content/ContextWrapper;
    if-eqz v1, :L3
  .line 43
    instance-of v1, p0, Lcom/mycompany/app/web/WebViewActivity;
    if-eqz v1, :L2
  .line 44
    check-cast p0, Lcom/mycompany/app/web/WebViewActivity;
    return-object p0
  :L2
  .line 46
    check-cast p0, Landroid/content/ContextWrapper;
    invoke-virtual { p0 }, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;
    move-result-object p0
    goto :L1
  :L3
  .line 48
    instance-of v1, p0, Lcom/mycompany/app/web/WebViewActivity;
    if-eqz v1, :L4
  .line 49
    check-cast p0, Lcom/mycompany/app/web/WebViewActivity;
    return-object p0
  :L4
    return-object v0
.end method

.method public static apply(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/ActionMode;)V
  .catch Ljava/lang/Exception; { :L0 .. :L6 } :L6
  .registers 13
    if-eqz p0, :L6
    if-nez p1, :L0
    goto :L6
  :L0
  .line 165
    invoke-virtual { p1 }, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;
    move-result-object v0
    if-nez v0, :L1
    return-void
  :L1
  .line 169
    invoke-interface { v0 }, Landroid/view/Menu;->clear()V
  .line 171
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->h0:I
    const/4 v2, 4
    const/4 v3, 0
  .line 172
    invoke-static { v2, v3 }, Lcom/mycompany/app/main/MainUtil;->g3(IZ)[I
    move-result-object v2
    array-length v4, v2
    const/4 v5, 0
    const/4 v6, 0
  :L2
    const/4 v7, 1
    if-ge v5, v4, :L5
    aget v8, v2, v5
    if-ltz v8, :L4
    const/4 v9, 7
    if-ge v8, v9, :L4
    shl-int v9, v7, v8
    and-int/2addr v9, v1
    if-nez v9, :L3
    goto :L4
  :L3
    add-int/lit8 v9, v6, 1
  .line 176
    sget-object v10, Lcom/mycompany/app/dialog/DialogSetPopup;->w0:[I
    aget v10, v10, v8
    invoke-interface { v0, v3, v8, v6, v10 }, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
    move-result-object v6
  .line 177
    invoke-interface { v6, v7 }, Landroid/view/MenuItem;->setShowAsAction(I)V
  .line 178
    new-instance v7, Lcom/mycompany/app/web/TextSelectMenu$3;
    invoke-direct { v7, p0, p1, v8 }, Lcom/mycompany/app/web/TextSelectMenu$3;-><init>(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/ActionMode;I)V
    invoke-interface { v6, v7 }, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    move v6, v9
  :L4
    add-int/lit8 v5, v5, 1
    goto :L2
  :L5
  .line 185
    invoke-static { p0 }, Lcom/mycompany/app/web/TextSelectMenu;->settingsTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    move-result-object v1
    const/16 v2, 100
    invoke-interface { v0, v3, v2, v6, v1 }, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    move-result-object v0
  .line 186
    invoke-interface { v0, v7 }, Landroid/view/MenuItem;->setShowAsAction(I)V
  .line 187
    new-instance v1, Lcom/mycompany/app/web/TextSelectMenu$4;
    invoke-direct { v1, p1, p0 }, Lcom/mycompany/app/web/TextSelectMenu$4;-><init>(Landroid/view/ActionMode;Lcom/mycompany/app/web/WebViewActivity;)V
    invoke-interface { v0, v1 }, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
  .line 198
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity;->l9:Landroid/view/ActionMode;
  .line 199
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;
  .line 200
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;
    if-eqz v0, :L6
    if-eqz p1, :L6
  .line 201
    new-instance v0, Lcom/mycompany/app/web/TextSelectMenu$5;
    invoke-direct { v0, p0 }, Lcom/mycompany/app/web/TextSelectMenu$5;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V
    invoke-virtual { p1, v0 }, Lcom/mycompany/app/view/MyWebBody;->post(Ljava/lang/Runnable;)Z
  :L6
    return-void
.end method

.method static applyFrom(Landroid/view/View;Landroid/view/ActionMode;)V
  .registers 3
  .line 127
    invoke-static { p0 }, Lcom/mycompany/app/web/TextSelectMenu;->activityOf(Landroid/view/View;)Lcom/mycompany/app/web/WebViewActivity;
    move-result-object p0
    if-eqz p0, :L1
  .line 128
    invoke-virtual { p0 }, Lcom/mycompany/app/web/WebViewActivity;->z5()Z
    move-result v0
    if-nez v0, :L1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebViewActivity;->j9:Z
    if-eqz v0, :L0
    goto :L1
  :L0
  .line 131
    invoke-static { p0, p1 }, Lcom/mycompany/app/web/TextSelectMenu;->apply(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/ActionMode;)V
  :L1
    return-void
.end method

.method public static edit(Lcom/mycompany/app/web/WebViewActivity;)V
  .registers 3
    if-eqz p0, :L1
  .line 219
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity;->dA:Lcom/mycompany/app/dialog/DialogSetPopup;
    if-eqz v0, :L0
    goto :L1
  :L0
  .line 222
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetPopup;
    invoke-direct { v0, p0 }, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V
  .line 223
    iput-object p0, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->a0:Lcom/mycompany/app/web/WebViewActivity;
  .line 224
    invoke-virtual { v0 }, Landroid/app/Dialog;->getContext()Landroid/content/Context;
    move-result-object v1
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->b0:Landroid/content/Context;
  .line 225
    new-instance v1, Lcom/mycompany/app/web/TextSelectMenu$6;
    invoke-direct { v1 }, Lcom/mycompany/app/web/TextSelectMenu$6;-><init>()V
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;
    const/4 v1, 4
  .line 230
    iput v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->d0:I
  .line 231
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->h0:I
    iput v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I
  .line 232
    sget-object v1, Lcom/mycompany/app/pref/PrefWeb;->i0:Ljava/lang/String;
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->m0:Ljava/lang/String;
    const/4 v1, 0
  .line 233
    invoke-virtual { v0, v1 }, Lcom/mycompany/app/dialog/DialogSetPopup;->C(Z)Ljava/util/ArrayList;
    move-result-object v1
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->n0:Ljava/util/ArrayList;
  .line 234
    invoke-virtual { v0 }, Lcom/mycompany/app/dialog/DialogSetPopup;->G()V
  .line 235
    iput-object v0, p0, Lcom/mycompany/app/web/WebViewActivity;->dA:Lcom/mycompany/app/dialog/DialogSetPopup;
  .line 236
    new-instance v1, Lcom/mycompany/app/web/TextSelectMenu$7;
    invoke-direct { v1, p0 }, Lcom/mycompany/app/web/TextSelectMenu$7;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V
    invoke-virtual { v0, v1 }, Lcom/mycompany/app/dialog/DialogSetPopup;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
  :L1
    return-void
.end method

.method static onItem(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/ActionMode;I)Z
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L2
  .registers 5
    const/4 v0, 1
    if-eqz p0, :L5
  .line 248
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;
    if-nez v1, :L0
    goto :L5
  :L0
    const/4 v1, 2
    if-ne p2, v1, :L3
  .line 252
    iget-object p0, p0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;
    const-string p2, "(function(){try{var s=window.getSelection();if(!s)return;var n=document.activeElement;if(n&&(n.tagName=='INPUT'||n.tagName=='TEXTAREA')){n.select();return;}s.selectAllChildren(document.body);}catch(e){}})();"
    invoke-static { p0, p2, v0 }, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V
  :L1
  .line 258
    invoke-virtual { p1 }, Landroid/view/ActionMode;->invalidateContentRect()V
  :L2
    return v0
  :L3
    const/4 v1, 4
    if-ne p2, v1, :L4
  .line 264
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;
    new-instance p2, Lcom/mycompany/app/web/TextSelectMenu$8;
    invoke-direct { p2, p0 }, Lcom/mycompany/app/web/TextSelectMenu$8;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V
    const-string p0, "document.documentElement.lang"
    invoke-virtual { p1, p0, p2 }, Lcom/mycompany/app/web/WebNestView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    return v0
  :L4
  .line 278
    new-instance v1, Lcom/mycompany/app/web/TextSelectMenu$9;
    invoke-direct { v1, p0, p2, p1 }, Lcom/mycompany/app/web/TextSelectMenu$9;-><init>(Lcom/mycompany/app/web/WebViewActivity;ILandroid/view/ActionMode;)V
    invoke-static { p0, v1 }, Lcom/mycompany/app/web/TextSelectMenu;->withSelection(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/ValueCallback;)V
  :L5
    return v0
.end method

.method private static searchUrl(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 4
    const-string v0, "https://www.google.com/search?q="
  .line 319
    iget-object p0, p0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;
    invoke-static { p0, p1 }, Lcom/mycompany/app/main/MainUtil;->q4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
  .line 320
    invoke-static { p0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L3
  :L0
  .line 322
    invoke-static { p1 }, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1, v0 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
  :L1
    goto :L3
  :L2
  .line 324
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0, v0 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { p0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
  :L3
    return-object p0
.end method

.method static settingsTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
  .registers 5
  .line 140
    const-string v0, "\u2699"
    if-nez p0, :L0
    return-object v0
  :L0
  .line 143
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z
    if-eqz v1, :L1
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_24:I
    goto :L2
  :L1
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_24:I
  :L2
  .line 144
    invoke-virtual { p0, v1 }, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p0
    if-nez p0, :L3
    return-object v0
  :L3
  .line 148
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object p0
  .line 149
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v1
    if-gtz v1, :L4
    const/16 v1, 48
  :L4
    const/4 v2, 0
  .line 153
    invoke-virtual { p0, v2, v2, v1, v1 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  .line 155
    new-instance v1, Landroid/text/SpannableString;
    invoke-direct { v1, v0 }, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
  .line 156
    new-instance v0, Landroid/text/style/ImageSpan;
    const/4 v3, 2
    invoke-direct { v0, p0, v3 }, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V
    const/4 p0, 1
    const/16 v3, 33
    invoke-virtual { v1, v0, v2, p0, v3 }, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    return-object v1
.end method

.method private static unwrapJsString(Ljava/lang/String;)Ljava/lang/String;
  .registers 5
    const/4 v0, 0
    if-eqz p0, :L3
  .line 339
    const-string v1, "null"
    invoke-virtual { p0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L3
    const-string v1, "\"\""
    invoke-virtual { p0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L0
    goto :L3
  :L0
  .line 343
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v1
    const/4 v2, 2
    if-lt v1, v2, :L1
    const/4 v1, 0
    invoke-virtual { p0, v1 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    const/16 v2, 34
    if-ne v1, v2, :L1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v1
    const/4 v3, 1
    sub-int/2addr v1, v3
    invoke-virtual { p0, v1 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    if-ne v1, v2, :L1
  .line 344
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v1
    sub-int/2addr v1, v3
    invoke-virtual { p0, v3, v1 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object p0
  :L1
  .line 346
    const-string v1, "\\n"
    const-string v2, "\n"
    invoke-virtual { p0, v1, v2 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p0
    const-string v1, "\\r"
    const-string v2, "\r"
    invoke-virtual { p0, v1, v2 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p0
    const-string v1, "\\\""
    const-string v2, "\""
    invoke-virtual { p0, v1, v2 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p0
    const-string v1, "\\\\"
    const-string v2, "\\"
    invoke-virtual { p0, v1, v2 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p0
  .line 347
    invoke-static { p0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L2
    goto :L3
  :L2
    move-object v0, p0
  :L3
    return-object v0
.end method

.method private static withSelection(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/ValueCallback;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lcom/mycompany/app/web/WebViewActivity;",
      "Landroid/webkit/ValueCallback<",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 3
  .line 331
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;
    if-eqz v0, :L1
    if-nez p1, :L0
    goto :L1
  :L0
  .line 334
    iget-object p0, p0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;
    const-string v0, "(function(){try{return window.getSelection().toString();}catch(e){return '';}})();"
    invoke-virtual { p0, v0, p1 }, Lcom/mycompany/app/web/WebNestView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
  :L1
    return-void
.end method

.method public static wrap(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
  .registers 3
    if-eqz p0, :L2
    if-nez p1, :L0
    goto :L2
  :L0
  .line 62
    instance-of v0, p1, Landroid/view/ActionMode$Callback2;
    if-eqz v0, :L1
  .line 63
    check-cast p1, Landroid/view/ActionMode$Callback2;
  .line 64
    new-instance v0, Lcom/mycompany/app/web/TextSelectMenu$1;
    invoke-direct { v0, p1, p0 }, Lcom/mycompany/app/web/TextSelectMenu$1;-><init>(Landroid/view/ActionMode$Callback2;Landroid/view/View;)V
    return-object v0
  :L1
  .line 97
    new-instance v0, Lcom/mycompany/app/web/TextSelectMenu$2;
    invoke-direct { v0, p1, p0 }, Lcom/mycompany/app/web/TextSelectMenu$2;-><init>(Landroid/view/ActionMode$Callback;Landroid/view/View;)V
    return-object v0
  :L2
    return-object p1
.end method
