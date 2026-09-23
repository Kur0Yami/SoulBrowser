.class public final Lcom/mycompany/app/web/PdfPreview;
.super Ljava/lang/Object;
.source "PdfPreview.java"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/mycompany/app/web/PdfPreview$Fallback;
  }
.end annotation

.method static bridge synthetic -$$Nest$smdeleteQuietly(Ljava/io/File;)V
  .registers 1
    invoke-static { p0 }, Lcom/mycompany/app/web/PdfPreview;->deleteQuietly(Ljava/io/File;)V
    return-void
.end method

.method static bridge synthetic -$$Nest$smdismissQuietly(Landroid/app/ProgressDialog;)V
  .registers 1
    invoke-static { p0 }, Lcom/mycompany/app/web/PdfPreview;->dismissQuietly(Landroid/app/ProgressDialog;)V
    return-void
.end method

.method static bridge synthetic -$$Nest$smdownloadToCache(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;
  .registers 4
    invoke-static { p0, p1, p2, p3 }, Lcom/mycompany/app/web/PdfPreview;->downloadToCache(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;
    move-result-object p0
    return-object p0
.end method

.method static bridge synthetic -$$Nest$smopenLocalPdf(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;)Z
  .registers 3
    invoke-static { p0, p1, p2 }, Lcom/mycompany/app/web/PdfPreview;->openLocalPdf(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;)Z
    move-result p0
    return p0
.end method

.method private constructor <init>()V
  .registers 1
  .line 32
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static basename(Ljava/lang/String;)Ljava/lang/String;
  .registers 4
  .line 192
    invoke-static { p0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
    return-object v1
  :L0
  .line 195
    invoke-virtual { p0 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object p0
    const/16 v0, 47
  .line 196
    invoke-virtual { p0, v0 }, Ljava/lang/String;->lastIndexOf(I)I
    move-result v0
    const/16 v2, 92
    invoke-virtual { p0, v2 }, Ljava/lang/String;->lastIndexOf(I)I
    move-result v2
    invoke-static { v0, v2 }, Ljava/lang/Math;->max(II)I
    move-result v0
    if-ltz v0, :L1
    add-int/lit8 v0, v0, 1
  .line 197
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v2
    if-ge v0, v2, :L1
  .line 198
    invoke-virtual { p0, v0 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p0
  :L1
  .line 200
    invoke-static { p0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L2
    goto :L3
  :L2
    move-object v1, p0
  :L3
    return-object v1
.end method

.method private static deleteQuietly(Ljava/io/File;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L1
  .registers 1
    if-eqz p0, :L1
  :L0
  .line 337
    invoke-virtual { p0 }, Ljava/io/File;->delete()Z
  :L1
    return-void
.end method

.method private static dismissQuietly(Landroid/app/ProgressDialog;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L1
  .registers 2
    if-eqz p0, :L1
  :L0
  .line 326
    invoke-virtual { p0 }, Landroid/app/ProgressDialog;->isShowing()Z
    move-result v0
    if-eqz v0, :L1
  .line 327
    invoke-virtual { p0 }, Landroid/app/ProgressDialog;->dismiss()V
  :L1
    return-void
.end method

.method private static downloadToCache(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/lang/Exception;
    }
  .end annotation
  .catchall { :L4 .. :L5 } :L33
  .catchall { :L6 .. :L7 } :L32
  .catch Ljava/lang/Exception; { :L7 .. :L8 } :L8
  .catchall { :L7 .. :L8 } :L32
  .catchall { :L8 .. :L9 } :L32
  .catch Ljava/lang/Exception; { :L10 .. :L11 } :L12
  .catchall { :L10 .. :L11 } :L32
  .catchall { :L12 .. :L14 } :L32
  .catchall { :L14 .. :L15 } :L30
  .catchall { :L16 .. :L20 } :L29
  .catch Ljava/lang/Exception; { :L20 .. :L21 } :L22
  .catch Ljava/lang/Exception; { :L24 .. :L25 } :L26
  .catchall { :L31 .. :L32 } :L32
  .catch Ljava/lang/Exception; { :L35 .. :L36 } :L37
  .catch Ljava/lang/Exception; { :L39 .. :L40 } :L41
  .registers 12
  .line 245
    new-instance v0, Ljava/io/File;
    invoke-virtual { p0 }, Landroid/app/Activity;->getCacheDir()Ljava/io/File;
    move-result-object p0
    const-string v1, "pdf_preview"
    invoke-direct { v0, p0, v1 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 246
    invoke-virtual { v0 }, Ljava/io/File;->exists()Z
    move-result p0
    if-nez p0, :L1
    invoke-virtual { v0 }, Ljava/io/File;->mkdirs()Z
    move-result p0
    if-eqz p0, :L0
    goto :L1
  :L0
  .line 247
    new-instance p0, Ljava/io/IOException;
    const-string p1, "cache dir"
    invoke-direct { p0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0
  :L1
  .line 250
    invoke-virtual { v0 }, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object p0
    const/4 v1, 0
    if-eqz p0, :L3
  .line 251
    array-length v2, p0
    const/16 v3, 8
    if-le v2, v3, :L3
  .line 252
    array-length v2, p0
    const/4 v3, 0
  :L2
    if-ge v3, v2, :L3
    aget-object v4, p0, v3
  .line 254
    invoke-virtual { v4 }, Ljava/io/File;->delete()Z
    add-int/lit8 v3, v3, 1
    goto :L2
  :L3
  .line 257
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    new-instance p0, Ljava/lang/StringBuilder;
    const-string v4, "preview_"
    invoke-direct { p0, v4 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { p0, v2, v3 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v2, ".pdf"
    invoke-virtual { p0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
  .line 258
    new-instance v2, Ljava/io/File;
    invoke-direct { v2, v0, p0 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    const/4 p0, 0
  :L4
  .line 264
    new-instance v0, Ljava/net/URL;
    invoke-direct { v0, p1 }, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    invoke-virtual { v0 }, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    move-result-object v0
    check-cast v0, Ljava/net/HttpURLConnection;
  :L5
    const/16 v3, 15000
  :L6
  .line 265
    invoke-virtual { v0, v3 }, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    const/16 v3, 30000
  .line 266
    invoke-virtual { v0, v3 }, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    const/4 v3, 1
  .line 267
    invoke-virtual { v0, v3 }, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
  .line 268
    invoke-static { p2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v3
    if-nez v3, :L7
  .line 269
    const-string v3, "User-Agent"
    invoke-virtual { v0, v3, p2 }, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
  :L7
  .line 272
    invoke-static { }, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
    move-result-object p2
    invoke-virtual { p2, p1 }, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 273
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p2
    if-nez p2, :L8
  .line 274
    const-string p2, "Cookie"
    invoke-virtual { v0, p2, p1 }, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
  :L8
  .line 278
    invoke-virtual { v0 }, Ljava/net/HttpURLConnection;->connect()V
  .line 279
    invoke-virtual { v0 }, Ljava/net/HttpURLConnection;->getResponseCode()I
    move-result p1
    const/16 p2, 400
    if-ge p1, p2, :L31
    if-eqz p3, :L13
  .line 283
    array-length p1, p3
  :L9
    if-lez p1, :L13
  :L10
  .line 285
    const-string p1, "Content-Disposition"
  .line 286
    invoke-virtual { v0, p1 }, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 285
    invoke-static { p1 }, Lcom/mycompany/app/main/MainUtil;->z2(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    aput-object p1, p3, v1
  :L11
    goto :L13
  :L12
  .line 288
    aput-object p0, p3, v1
  :L13
  .line 291
    invoke-virtual { v0 }, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    move-result-object p1
  :L14
  .line 292
    new-instance p2, Ljava/io/FileOutputStream;
    invoke-direct { p2, v2 }, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
  :L15
    const/16 p0, 8192
  :L16
  .line 293
    new-array p0, p0, [B
    const-wide/16 v3, 0
  :L17
  .line 296
    invoke-virtual { p1, p0 }, Ljava/io/InputStream;->read([B)I
    move-result p3
    if-ltz p3, :L19
  .line 297
    invoke-virtual { p2, p0, v1, p3 }, Ljava/io/FileOutputStream;->write([BII)V
    int-to-long v5, p3
    add-long/2addr v3, v5
    const-wide/32 v5, 209715200
    cmp-long p3, v3, v5
    if-gtz p3, :L18
    goto :L17
  :L18
  .line 300
    new-instance p0, Ljava/io/IOException;
    const-string p3, "too large"
    invoke-direct { p0, p3 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0
  :L19
  .line 303
    invoke-virtual { p2 }, Ljava/io/FileOutputStream;->flush()V
  :L20
  .line 308
    invoke-virtual { p2 }, Ljava/io/FileOutputStream;->close()V
  :L21
    goto :L23
  :L22
    nop
  :L23
    if-eqz p1, :L27
  :L24
  .line 314
    invoke-virtual { p1 }, Ljava/io/InputStream;->close()V
  :L25
    goto :L27
  :L26
    nop
  :L27
    if-eqz v0, :L28
  .line 319
    invoke-virtual { v0 }, Ljava/net/HttpURLConnection;->disconnect()V
  :L28
    return-object v2
  :L29
    move-exception p0
    move-object v7, p2
    move-object p2, p0
    move-object p0, v7
    goto :L34
  :L30
    move-exception p2
    goto :L34
  :L31
  .line 281
    new-instance p2, Ljava/io/IOException;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "http "
    invoke-virtual { p3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p2
  :L32
    move-exception p1
    move-object p2, p1
    move-object p1, p0
    goto :L34
  :L33
    move-exception p1
    move-object v0, p0
    move-object p2, p1
    move-object p1, v0
  :L34
    if-eqz p0, :L38
  :L35
  .line 308
    invoke-virtual { p0 }, Ljava/io/FileOutputStream;->close()V
  :L36
    goto :L38
  :L37
    nop
  :L38
    if-eqz p1, :L42
  :L39
  .line 314
    invoke-virtual { p1 }, Ljava/io/InputStream;->close()V
  :L40
    goto :L42
  :L41
    nop
  :L42
    if-eqz v0, :L43
  .line 319
    invoke-virtual { v0 }, Ljava/net/HttpURLConnection;->disconnect()V
  :L43
  .line 321
    goto :L45
  :L44
    throw p2
  :L45
    goto :L44
.end method

.method private static ensurePdfSuffix(Ljava/lang/String;)Ljava/lang/String;
  .registers 3
  .line 204
    invoke-static { p0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
  .line 205
    const-string p0, "document.pdf"
    return-object p0
  :L0
  .line 207
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual { p0, v0 }, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v0
    const-string v1, ".pdf"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L1
  .line 208
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
  :L1
    return-object p0
.end method

.method public static isPdf(Ljava/lang/String;Ljava/lang/String;)Z
  .registers 3
  .line 36
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L1
  .line 37
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual { p1, v0 }, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object p1
  .line 38
    const-string v0, "application/pdf"
    invoke-virtual { p1, v0 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L0
    const-string v0, "application/x-pdf"
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L1
  :L0
    const/4 p0, 1
    return p0
  :L1
  .line 42
    invoke-static { p0 }, Lcom/mycompany/app/web/PdfPreview;->isPdfUrl(Ljava/lang/String;)Z
    move-result p0
    return p0
.end method

.method public static isPdfUrl(Ljava/lang/String;)Z
  .registers 3
  .line 46
    invoke-static { p0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L3
    invoke-static { p0 }, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L0
    goto :L3
  :L0
    const/16 v0, 63
  .line 50
    invoke-virtual { p0, v0 }, Ljava/lang/String;->indexOf(I)I
    move-result v0
    if-ltz v0, :L1
  .line 52
    invoke-virtual { p0, v1, v0 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object p0
  :L1
    const/16 v0, 35
  .line 54
    invoke-virtual { p0, v0 }, Ljava/lang/String;->indexOf(I)I
    move-result v0
    if-ltz v0, :L2
  .line 56
    invoke-virtual { p0, v1, v0 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object p0
  :L2
  .line 58
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual { p0, v0 }, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object p0
    const-string v0, ".pdf"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result p0
    return p0
  :L3
    return v1
.end method

.method private static nameFromQuery(Ljava/lang/String;)Ljava/lang/String;
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L4
  .registers 7
  .line 173
    invoke-static { p0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
    return-object v1
  :L0
  .line 177
    invoke-static { p0 }, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object p0
    const/4 v0, 7
  .line 178
    new-array v2, v0, [Ljava/lang/String;
    const-string v3, "file"
    const/4 v4, 0
    aput-object v3, v2, v4
    const-string v3, "filename"
    const/4 v5, 1
    aput-object v3, v2, v5
    const-string v3, "path"
    const/4 v5, 2
    aput-object v3, v2, v5
    const-string v3, "name"
    const/4 v5, 3
    aput-object v3, v2, v5
    const-string v3, "f"
    const/4 v5, 4
    aput-object v3, v2, v5
    const-string v3, "doc"
    const/4 v5, 5
    aput-object v3, v2, v5
    const-string v3, "document"
    const/4 v5, 6
    aput-object v3, v2, v5
  :L1
    if-ge v4, v0, :L4
  .line 179
    aget-object v3, v2, v4
  .line 180
    invoke-virtual { p0, v3 }, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 181
    invoke-static { v3 }, Lcom/mycompany/app/web/PdfPreview;->basename(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 182
    invoke-static { v3 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v5
    if-nez v5, :L3
    const/16 v5, 46
    invoke-virtual { v3, v5 }, Ljava/lang/String;->indexOf(I)I
    move-result v5
  :L2
    if-lez v5, :L3
    return-object v3
  :L3
    add-int/lit8 v4, v4, 1
    goto :L1
  :L4
    return-object v1
.end method

.method private static nameFromUrl(Ljava/lang/String;)Ljava/lang/String;
  .registers 4
  .line 214
    invoke-static { p0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    const-string v1, "document.pdf"
    if-eqz v0, :L0
    return-object v1
  :L0
    const/16 v0, 63
  .line 218
    invoke-virtual { p0, v0 }, Ljava/lang/String;->indexOf(I)I
    move-result v0
    const/4 v2, 0
    if-ltz v0, :L1
  .line 220
    invoke-virtual { p0, v2, v0 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object p0
  :L1
    const/16 v0, 35
  .line 222
    invoke-virtual { p0, v0 }, Ljava/lang/String;->indexOf(I)I
    move-result v0
    if-ltz v0, :L2
  .line 224
    invoke-virtual { p0, v2, v0 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object p0
  :L2
    const/16 v0, 47
  .line 226
    invoke-virtual { p0, v0 }, Ljava/lang/String;->lastIndexOf(I)I
    move-result v0
    if-ltz v0, :L3
    add-int/lit8 v0, v0, 1
  .line 227
    invoke-virtual { p0, v0 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p0
  :L3
  .line 228
    invoke-static { p0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L4
    return-object v1
  :L4
  .line 231
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual { p0, v0 }, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v0
  .line 233
    const-string v2, ".php"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L7
    const-string v2, ".asp"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L7
    const-string v2, ".aspx"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L7
    const-string v2, ".jsp"
  .line 234
    invoke-virtual { v0, v2 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L7
    const-string v2, ".cgi"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L5
    goto :L7
  :L5
  .line 237
    const-string v1, ".pdf"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L6
  .line 238
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
  :L6
  .line 240
    invoke-static { p0 }, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L7
    return-object v1
.end method

.method public static open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/web/PdfPreview$Fallback;)V
  .catch Ljava/lang/Exception; { :L1 .. :L4 } :L4
  .registers 14
    if-eqz p0, :L5
  .line 63
    invoke-virtual { p0 }, Landroid/app/Activity;->isFinishing()Z
    move-result v0
    if-nez v0, :L5
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L5
  .line 64
    invoke-static { p1 }, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L0
    goto :L5
  :L0
  .line 73
    new-instance v6, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v0
    invoke-direct { v6, v0 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
  .line 74
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v0, 0
    invoke-direct { v5, v0 }, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
  .line 75
    new-instance v7, Landroid/app/ProgressDialog;
    invoke-direct { v7, p0 }, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
  :L1
  .line 77
    invoke-virtual { p0 }, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const-string v1, "loading"
    const-string v2, "string"
  .line 78
    invoke-virtual { p0 }, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v3
  .line 77
    invoke-virtual { v0, v1, v2, v3 }, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
    if-eqz v0, :L2
  .line 79
    invoke-virtual { p0, v0 }, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    move-result-object v0
    goto :L3
  :L2
    const-string v0, "Loading\u2026"
  :L3
    invoke-virtual { v7, v0 }, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    const/4 v0, 1
  .line 80
    invoke-virtual { v7, v0 }, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
  .line 81
    invoke-virtual { v7, v0 }, Landroid/app/ProgressDialog;->setCancelable(Z)V
  .line 82
    new-instance v0, Lcom/mycompany/app/web/PdfPreview$1;
    invoke-direct { v0, v5 }, Lcom/mycompany/app/web/PdfPreview$1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    invoke-virtual { v7, v0 }, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
  .line 88
    invoke-virtual { v7 }, Landroid/app/ProgressDialog;->show()V
  :L4
  .line 92
    new-instance v0, Ljava/lang/Thread;
    new-instance v9, Lcom/mycompany/app/web/PdfPreview$2;
    move-object v1, v9
    move-object v2, p0
    move-object v3, p1
    move-object v4, p2
    move-object v8, p3
    invoke-direct/range { v1 .. v8 }, Lcom/mycompany/app/web/PdfPreview$2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Landroid/app/ProgressDialog;Lcom/mycompany/app/web/PdfPreview$Fallback;)V
    const-string p0, "pdf-preview"
    invoke-direct { v0, v9, p0 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 138
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
    return-void
  :L5
    if-eqz p3, :L6
  .line 66
    invoke-interface { p3 }, Lcom/mycompany/app/web/PdfPreview$Fallback;->run()V
  :L6
    return-void
.end method

.method private static openLocalPdf(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;)Z
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L3
  .registers 7
    const/4 v0, 0
  :L0
  .line 143
    new-instance v1, Landroid/content/Intent;
    invoke-direct { v1 }, Landroid/content/Intent;-><init>()V
  .line 144
    invoke-virtual { p0 }, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v2
    const-string v3, "com.mycompany.app.image.ImageViewPdf"
    invoke-virtual { v1, v2, v3 }, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  .line 146
    const-string v2, "EXTRA_TYPE"
    const/4 v3, 2
    invoke-virtual { v1, v2, v3 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
  .line 147
    const-string v2, "EXTRA_PATH"
    invoke-virtual { p1 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, v2, p1 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  .line 148
    const-string p1, "EXTRA_INDEX"
    invoke-virtual { v1, p1, v0 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
  .line 149
    invoke-static { p2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p1
    if-nez p1, :L1
  .line 150
    const-string p1, "EXTRA_NAME"
    invoke-virtual { v1, p1, p2 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  :L1
  .line 152
    invoke-virtual { p0, v1 }, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
  :L2
    const/4 p0, 1
    return p0
  :L3
    return v0
.end method

.method static resolveDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .registers 3
  .line 162
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L0
  .line 163
    invoke-static { p1 }, Lcom/mycompany/app/web/PdfPreview;->basename(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcom/mycompany/app/web/PdfPreview;->ensurePdfSuffix(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L0
  .line 165
    invoke-static { p0 }, Lcom/mycompany/app/web/PdfPreview;->nameFromQuery(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 166
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L1
  .line 167
    invoke-static { p1 }, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcom/mycompany/app/web/PdfPreview;->ensurePdfSuffix(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L1
  .line 169
    invoke-static { p0 }, Lcom/mycompany/app/web/PdfPreview;->nameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method
