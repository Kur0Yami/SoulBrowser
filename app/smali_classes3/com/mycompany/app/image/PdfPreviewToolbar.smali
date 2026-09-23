.class public final Lcom/mycompany/app/image/PdfPreviewToolbar;
.super Ljava/lang/Object;
.source "PdfPreviewToolbar.java"

.field private final static TAG_DOWNLOAD:Ljava/lang/String; = "pdf_preview_actions_download"

.field private final static TAG_SHARE:Ljava/lang/String; = "pdf_preview_actions_share"

.method static bridge synthetic -$$Nest$smdownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
  .registers 3
    invoke-static { p0, p1, p2 }, Lcom/mycompany/app/image/PdfPreviewToolbar;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method static bridge synthetic -$$Nest$smshare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
  .registers 3
    invoke-static { p0, p1, p2 }, Lcom/mycompany/app/image/PdfPreviewToolbar;->share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .line 28
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static addIconRow(Lcom/mycompany/app/image/ImageViewControl;)Z
  .registers 7
  .line 82
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->M:Landroid/widget/LinearLayout;
    if-eqz v0, :L2
  .line 83
    const-string v1, "pdf_preview_actions_share"
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v2
    if-eqz v2, :L0
    goto :L2
  :L0
  .line 86
    invoke-virtual { p0 }, Lcom/mycompany/app/image/ImageViewControl;->getContext()Landroid/content/Context;
    move-result-object v2
  .line 87
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I
  .line 88
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I
  .line 89
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_white_24:I
    invoke-static { v2, v5 }, Lcom/mycompany/app/image/PdfPreviewToolbar;->button(Landroid/content/Context;I)Lcom/mycompany/app/view/MyButtonImage;
    move-result-object v5
  .line 90
    invoke-virtual { v5, v1 }, Lcom/mycompany/app/view/MyButtonImage;->setTag(Ljava/lang/Object;)V
  .line 91
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_white_24:I
    invoke-static { v2, v1 }, Lcom/mycompany/app/image/PdfPreviewToolbar;->button(Landroid/content/Context;I)Lcom/mycompany/app/view/MyButtonImage;
    move-result-object v1
  .line 92
    const-string v2, "pdf_preview_actions_download"
    invoke-virtual { v1, v2 }, Lcom/mycompany/app/view/MyButtonImage;->setTag(Ljava/lang/Object;)V
  .line 93
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct { v2, v3, v3 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 94
    invoke-virtual { v2, v4 }, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V
  .line 95
    iget-object p0, p0, Lcom/mycompany/app/image/ImageViewControl;->R:Lcom/mycompany/app/view/MyButtonImage;
    invoke-virtual { v0, p0 }, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I
    move-result p0
    if-gez p0, :L1
  .line 97
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result p0
  :L1
  .line 99
    invoke-virtual { v0, v5, p0, v2 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    const/4 v2, 1
    add-int/2addr p0, v2
  .line 100
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct { v4, v3, v3 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v0, v1, p0, v4 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    return v2
  :L2
    const/4 p0, 0
    return p0
.end method

.method public static applyControlTimeout(Lcom/mycompany/app/image/ImageViewControl;)V
  .registers 3
    if-nez p0, :L0
    return-void
  :L0
  .line 272
    sget v0, Lcom/mycompany/app/pref/PrefImage;->J:I
    if-gtz v0, :L1
    const/4 v0, 0
  .line 274
    invoke-virtual { p0, v0 }, Lcom/mycompany/app/image/ImageViewControl;->setAutoHide(Z)V
    return-void
  :L1
    const/4 v1, 1
  .line 277
    invoke-virtual { p0, v1 }, Lcom/mycompany/app/image/ImageViewControl;->setAutoHide(Z)V
    mul-int/lit16 v0, v0, 1000
  .line 278
    invoke-virtual { p0, v0 }, Lcom/mycompany/app/image/ImageViewControl;->setShowTime(I)V
    return-void
.end method

.method public static applyHeaderTitle(Lcom/mycompany/app/image/ImageViewControl;Ljava/lang/String;Ljava/lang/String;)V
  .registers 4
    if-nez p0, :L0
    return-void
  :L0
  .line 202
    new-instance v0, Lcom/mycompany/app/image/PdfPreviewToolbar$2;
    invoke-direct { v0, p0, p1, p2 }, Lcom/mycompany/app/image/PdfPreviewToolbar$2;-><init>(Lcom/mycompany/app/image/ImageViewControl;Ljava/lang/String;Ljava/lang/String;)V
  .line 208
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->G:Landroidx/appcompat/widget/AppCompatTextView;
    if-eqz p1, :L1
  .line 209
    invoke-virtual { p1 }, Landroid/widget/TextView;->getWidth()I
    move-result p1
    if-lez p1, :L1
  .line 210
    invoke-interface { v0 }, Ljava/lang/Runnable;->run()V
    goto :L2
  :L1
  .line 212
    invoke-virtual { p0, v0 }, Lcom/mycompany/app/image/ImageViewControl;->post(Ljava/lang/Runnable;)Z
  :L2
    return-void
.end method

.method public static attachForPdf(Lcom/mycompany/app/image/ImageViewControl;Landroid/app/Activity;)V
  .registers 5
    if-eqz p0, :L4
    if-eqz p1, :L4
  .line 32
    invoke-virtual { p1 }, Landroid/app/Activity;->isFinishing()Z
    move-result v0
    if-eqz v0, :L0
    goto :L4
  :L0
  .line 35
    invoke-virtual { p1 }, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
    move-result-object v0
    if-nez v0, :L1
    return-void
  :L1
  .line 39
    const-string v1, "EXTRA_PATH"
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 40
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :L2
    return-void
  :L2
  .line 43
    const-string v2, "EXTRA_NAME"
    invoke-virtual { v0, v2 }, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 44
    invoke-static { p0 }, Lcom/mycompany/app/image/PdfPreviewToolbar;->addIconRow(Lcom/mycompany/app/image/ImageViewControl;)Z
    move-result v2
    if-nez v2, :L3
    return-void
  :L3
  .line 47
    new-instance v2, Lcom/mycompany/app/image/PdfPreviewToolbar$1;
    invoke-direct { v2, p1, p0, v0, v1 }, Lcom/mycompany/app/image/PdfPreviewToolbar$1;-><init>(Landroid/app/Activity;Lcom/mycompany/app/image/ImageViewControl;Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p0, v2 }, Lcom/mycompany/app/image/ImageViewControl;->post(Ljava/lang/Runnable;)Z
  :L4
    return-void
.end method

.method private static button(Landroid/content/Context;I)Lcom/mycompany/app/view/MyButtonImage;
  .registers 3
  .line 105
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage;
    invoke-direct { v0, p0 }, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V
  .line 106
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;
    invoke-virtual { v0, p0 }, Lcom/mycompany/app/view/MyButtonImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
  .line 107
    invoke-virtual { v0, p1 }, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V
  .line 108
    sget p0, Lcom/mycompany/app/main/MainApp;->j1:I
    int-to-float p0, p0
    sget p1, Lcom/mycompany/app/main/MainApp;->k1:I
    int-to-float p1, p1
    invoke-virtual { v0, p0, p1 }, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V
    const/4 p0, 0
    const p1, -1586137739
  .line 109
    invoke-virtual { v0, p0, p1 }, Lcom/mycompany/app/view/MyButtonImage;->k(II)V
    return-object v0
.end method

.method private static download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
  .registers 9
  .line 140
    invoke-static { p1 }, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 143
    new-instance v0, Ljava/io/File;
    invoke-direct { v0, p1 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 144
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result v1
    if-eqz v1, :L7
    invoke-virtual { v0 }, Ljava/io/File;->length()J
    move-result-wide v1
    const-wide/16 v3, 0
    cmp-long v5, v1, v3
    if-nez v5, :L1
    goto :L7
  :L1
  .line 148
    invoke-static { }, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;
    move-result-object v1
  .line 149
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :L2
  .line 150
    sget p1, Lnet/kaki87/soul2/testing/R$string;->select_dir:I
    invoke-static { p0, p1 }, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V
    return-void
  :L2
  .line 153
    invoke-virtual { v0 }, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v0
    invoke-static { p2, v0 }, Lcom/mycompany/app/image/PdfPreviewToolbar;->resolveName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p2
  .line 154
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual { p2, v0 }, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v0
    const-string v2, ".pdf"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L3
  .line 155
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
  :L3
  .line 157
    invoke-static { p2 }, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p2
    const/4 v0, 0
  .line 158
    invoke-static { p0, v1, v0, p2 }, Lcom/mycompany/app/main/MainUri;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;
    move-result-object p2
    if-eqz p2, :L6
  .line 159
    iget-object v0, p2, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L4
    goto :L6
  :L4
  .line 163
    iget-object p2, p2, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;
    invoke-static { p0, p1, p2 }, Lcom/mycompany/app/main/MainUtil;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    move-result p1
    if-nez p1, :L5
  .line 164
    sget p1, Lnet/kaki87/soul2/testing/R$string;->down_fail:I
    invoke-static { p0, p1 }, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V
    return-void
  :L5
  .line 167
    sget p1, Lnet/kaki87/soul2/testing/R$string;->down_complete:I
    invoke-static { p0, p1 }, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V
    return-void
  :L6
  .line 160
    sget p1, Lnet/kaki87/soul2/testing/R$string;->down_fail:I
    invoke-static { p0, p1 }, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V
    return-void
  :L7
  .line 145
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I
    invoke-static { p0, p1 }, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V
    return-void
.end method

.method private static ellipsizeName(Lcom/mycompany/app/image/ImageViewControl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .registers 6
    if-eqz p0, :L7
  .line 217
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L7
  :L0
  .line 220
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->G:Landroidx/appcompat/widget/AppCompatTextView;
    if-nez v0, :L1
    return-object p1
  :L1
  .line 224
    invoke-virtual { v0 }, Landroid/widget/TextView;->getWidth()I
    move-result v1
    invoke-virtual { v0 }, Landroid/widget/TextView;->getPaddingLeft()I
    move-result v2
    sub-int/2addr v1, v2
    invoke-virtual { v0 }, Landroid/widget/TextView;->getPaddingRight()I
    move-result v2
    sub-int/2addr v1, v2
    if-gtz v1, :L2
  .line 226
    invoke-virtual { p0 }, Lcom/mycompany/app/image/ImageViewControl;->getWidth()I
    move-result v1
    invoke-virtual { v0 }, Landroid/widget/TextView;->getPaddingLeft()I
    move-result v2
    sub-int/2addr v1, v2
    invoke-virtual { v0 }, Landroid/widget/TextView;->getPaddingRight()I
    move-result v2
    sub-int/2addr v1, v2
  :L2
    if-gtz v1, :L3
  .line 228
    invoke-virtual { p0 }, Lcom/mycompany/app/image/ImageViewControl;->getContext()Landroid/content/Context;
    move-result-object v2
    if-eqz v2, :L3
  .line 229
    invoke-virtual { p0 }, Lcom/mycompany/app/image/ImageViewControl;->getContext()Landroid/content/Context;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object p0
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I
    sget v1, Lcom/mycompany/app/main/MainApp;->b1:I
    mul-int/lit8 v1, v1, 2
    sub-int/2addr p0, v1
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I
    mul-int/lit8 v1, v1, 2
    sub-int/2addr p0, v1
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I
    sub-int v1, p0, v1
  :L3
    if-gtz v1, :L4
    return-object p1
  :L4
  .line 235
    invoke-virtual { v0 }, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;
    move-result-object p0
  .line 236
    invoke-virtual { p0, p2 }, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F
    move-result p2
    int-to-float v0, v1
    sub-float/2addr v0, p2
    const/4 p2, 0
    cmpg-float p2, v0, p2
    if-lez p2, :L7
  .line 238
    invoke-virtual { p0, p1 }, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F
    move-result p2
    cmpg-float p2, p2, v0
    if-gtz p2, :L5
    goto :L7
  :L5
  .line 241
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-static { p1, p0, v0, p2 }, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object p0
    if-nez p0, :L6
    goto :L7
  :L6
  .line 243
    invoke-interface { p0 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object p1
  :L7
    return-object p1
.end method

.method private static fallbackName(Ljava/lang/String;)Ljava/lang/String;
  .registers 4
  .line 247
    invoke-static { p0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L2
    invoke-static { p0 }, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L2
  :L0
  .line 250
    new-instance v0, Ljava/io/File;
    invoke-direct { v0, p0 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 251
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result v2
    if-eqz v2, :L1
  .line 252
    invoke-virtual { v0 }, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L1
  .line 254
    invoke-static { v1, p0 }, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L2
    return-object v1
.end method

.method private static fileSize(Ljava/lang/String;)J
  .registers 4
  .line 258
    invoke-static { p0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    const-wide/16 v1, 0
    if-nez v0, :L2
    invoke-static { p0 }, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L2
  :L0
  .line 261
    new-instance v0, Ljava/io/File;
    invoke-direct { v0, p0 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 262
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result p0
    if-nez p0, :L1
    return-wide v1
  :L1
  .line 265
    invoke-virtual { v0 }, Ljava/io/File;->length()J
    move-result-wide v0
    return-wide v0
  :L2
    return-wide v1
.end method

.method public static formatHeaderTitle(Lcom/mycompany/app/image/ImageViewControl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .registers 7
  .line 188
    invoke-static { p2 }, Lcom/mycompany/app/image/PdfPreviewToolbar;->fallbackName(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static { p1, v0 }, Lcom/mycompany/app/image/PdfPreviewToolbar;->resolveName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 189
    invoke-static { p2 }, Lcom/mycompany/app/image/PdfPreviewToolbar;->fileSize(Ljava/lang/String;)J
    move-result-wide v0
    const-wide/16 v2, 0
    cmp-long p2, v0, v2
    if-gtz p2, :L0
    return-object p1
  :L0
  .line 193
    invoke-static { v0, v1 }, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;
    move-result-object p2
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v1, " ("
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p2, ")"
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
  .line 194
    invoke-static { p0, p1, p2 }, Lcom/mycompany/app/image/PdfPreviewToolbar;->ellipsizeName(Lcom/mycompany/app/image/ImageViewControl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method private static isPreviewCacheName(Ljava/lang/String;)Z
  .registers 2
    if-eqz p0, :L0
  .line 181
    const-string v0, "preview_"
  .line 182
    invoke-virtual { p0, v0 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
  .line 183
    invoke-virtual { p0, v0 }, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object p0
    const-string v0, ".pdf"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result p0
    if-eqz p0, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method

.method private static resolveName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .registers 3
  .line 171
    invoke-static { p0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L0
    invoke-static { p0 }, Lcom/mycompany/app/image/PdfPreviewToolbar;->isPreviewCacheName(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L0
    return-object p0
  :L0
  .line 174
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p0
    if-nez p0, :L1
    invoke-static { p1 }, Lcom/mycompany/app/image/PdfPreviewToolbar;->isPreviewCacheName(Ljava/lang/String;)Z
    move-result p0
    if-nez p0, :L1
    return-object p1
  :L1
  .line 177
    const-string p0, "document.pdf"
    return-object p0
.end method

.method private static share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
  .registers 9
  .line 114
    invoke-static { p1 }, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
  .line 115
    invoke-static { p0, p1, p2 }, Lcom/mycompany/app/main/MainUtil;->a8(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    return-void
  :L0
  .line 118
    new-instance v0, Ljava/io/File;
    invoke-direct { v0, p1 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 119
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result v1
    if-eqz v1, :L6
    invoke-virtual { v0 }, Ljava/io/File;->length()J
    move-result-wide v1
    const-wide/16 v3, 0
    cmp-long v5, v1, v3
    if-nez v5, :L1
    goto :L6
  :L1
  .line 123
    invoke-virtual { v0 }, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-static { p2, v1 }, Lcom/mycompany/app/image/PdfPreviewToolbar;->resolveName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p2
  .line 124
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual { p2, v1 }, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v1
    const-string v2, ".pdf"
    invoke-virtual { v1, v2 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L2
  .line 125
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
  :L2
  .line 128
    invoke-virtual { v0 }, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L5
  .line 129
    invoke-static { p2 }, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static { p0, v0 }, Lcom/mycompany/app/main/MainUtil;->k0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 130
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L4
    invoke-static { p1, v0 }, Lcom/mycompany/app/main/MainUtil;->u(Ljava/lang/String;Ljava/lang/String;)Z
    move-result p1
    if-nez p1, :L3
    goto :L4
  :L3
    move-object p1, v0
    goto :L5
  :L4
  .line 131
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I
    invoke-static { p0, p1 }, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V
    return-void
  :L5
    const/4 v0, 0
  .line 136
    const-string v1, "application/pdf"
    invoke-static { v0, p0, p1, p2, v1 }, Lcom/mycompany/app/main/MainUtil;->Z7(ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    return-void
  :L6
  .line 120
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I
    invoke-static { p0, p1 }, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V
    return-void
.end method
