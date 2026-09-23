.class Lcom/mycompany/app/web/WebViewActivity$258;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$258;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$258;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Gi:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Hi:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    iput-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->Gi:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->Hi:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v3, 0x1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    move v8, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 40
    .line 41
    .line 42
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/16 v8, 0x30

    .line 44
    .line 45
    :try_start_1
    new-array v9, v8, [B

    .line 46
    .line 47
    invoke-virtual {v6, v9, v2, v8}, Ljava/io/InputStream;->read([BII)I

    .line 48
    .line 49
    .line 50
    new-instance v8, Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 53
    .line 54
    .line 55
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-nez v9, :cond_2

    .line 60
    .line 61
    const-string v9, "FFmpeg"

    .line 62
    .line 63
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    if-eqz v8, :cond_2

    .line 68
    .line 69
    move v8, v3

    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-object v6, v7

    .line 72
    :catch_1
    :cond_2
    move v8, v2

    .line 73
    :goto_0
    if-eqz v6, :cond_3

    .line 74
    .line 75
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 76
    .line 77
    .line 78
    :catch_2
    :cond_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 79
    .line 80
    .line 81
    :goto_1
    if-nez v8, :cond_4

    .line 82
    .line 83
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->S8:I

    .line 84
    .line 85
    add-int/2addr v1, v3

    .line 86
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->S8:I

    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    iput v2, v0, Lcom/mycompany/app/web/WebViewActivity;->S8:I

    .line 90
    .line 91
    const-string v1, "tsfake:"

    .line 92
    .line 93
    invoke-static {v1, v4}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1, v5, v7, v7}, Lcom/mycompany/app/web/WebViewActivity;->D7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method
