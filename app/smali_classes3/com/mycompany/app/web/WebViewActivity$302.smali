.class Lcom/mycompany/app/web/WebViewActivity$302;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$302;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$302;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->tj:Landroid/webkit/ValueCallback;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->uj:Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 6
    .line 7
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->tj:Landroid/webkit/ValueCallback;

    .line 8
    .line 9
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->uj:Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v3}, Lcom/mycompany/app/web/WebViewActivity;->c6([Landroid/net/Uri;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->M5:Landroid/webkit/ValueCallback;

    .line 16
    .line 17
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->N5:Landroid/webkit/ValueCallback;

    .line 18
    .line 19
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->O5:Landroid/webkit/ValueCallback;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v2, :cond_9

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_9

    .line 29
    .line 30
    array-length v3, v2

    .line 31
    if-lez v3, :cond_9

    .line 32
    .line 33
    array-length v3, v2

    .line 34
    move v4, v1

    .line 35
    :goto_0
    if-ge v1, v3, :cond_7

    .line 36
    .line 37
    aget-object v5, v2, v1

    .line 38
    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const-string v6, "."

    .line 43
    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_1

    .line 49
    .line 50
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->t2(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    :cond_1
    if-nez v5, :cond_3

    .line 55
    .line 56
    :cond_2
    or-int/lit8 v4, v4, 0x10

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const-string v6, "image"

    .line 60
    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_4

    .line 66
    .line 67
    or-int/lit8 v4, v4, 0x2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const-string v6, "video"

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_5

    .line 77
    .line 78
    or-int/lit8 v4, v4, 0x4

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    const-string v6, "audio"

    .line 82
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-nez v6, :cond_6

    .line 88
    .line 89
    const-string v6, "application/ogg"

    .line 90
    .line 91
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-nez v6, :cond_6

    .line 96
    .line 97
    const-string v6, "application/x-ogg"

    .line 98
    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_2

    .line 104
    .line 105
    :cond_6
    or-int/lit8 v4, v4, 0x8

    .line 106
    .line 107
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_7
    const/16 v1, 0x10

    .line 111
    .line 112
    if-ne v4, v1, :cond_8

    .line 113
    .line 114
    or-int/lit8 v1, v4, 0x2

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_8
    move v1, v4

    .line 118
    :cond_9
    :goto_2
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->vj:I

    .line 119
    .line 120
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 121
    .line 122
    if-nez v1, :cond_a

    .line 123
    .line 124
    return-void

    .line 125
    :cond_a
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$303;

    .line 126
    .line 127
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$303;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 131
    .line 132
    .line 133
    return-void
.end method
