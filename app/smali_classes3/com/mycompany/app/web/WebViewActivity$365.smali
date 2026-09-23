.class Lcom/mycompany/app/web/WebViewActivity$365;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$365;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$365;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Xk:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Yk:Ljava/io/File;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Zk:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Xk:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Yk:Ljava/io/File;

    .line 13
    .line 14
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Zk:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const-wide/16 v5, 0x0

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v2, v3, v1}, Lcom/mycompany/app/main/MainUtil;->p(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    cmp-long v3, v3, v5

    .line 38
    .line 39
    if-lez v3, :cond_1

    .line 40
    .line 41
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v3, v2, v1}, Lcom/mycompany/app/main/MainUtil;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v2, 0x0

    .line 53
    :goto_0
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v3, v1, v4}, Lcom/mycompany/app/main/MainUri;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 68
    .line 69
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v4, v1, v5, v3}, Lcom/mycompany/app/db/book/DbBookDown;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v5

    .line 75
    :cond_2
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->al:Z

    .line 76
    .line 77
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->bl:Ljava/lang/String;

    .line 78
    .line 79
    iput-wide v5, v0, Lcom/mycompany/app/web/WebViewActivity;->cl:J

    .line 80
    .line 81
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 82
    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$365$1;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$365$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$365;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 92
    .line 93
    .line 94
    return-void
.end method
