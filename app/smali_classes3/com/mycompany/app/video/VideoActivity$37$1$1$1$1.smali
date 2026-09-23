.class Lcom/mycompany/app/video/VideoActivity$37$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity$37$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity$37$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$37$1$1$1$1;->c:Lcom/mycompany/app/video/VideoActivity$37$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$37$1$1$1$1;->c:Lcom/mycompany/app/video/VideoActivity$37$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$37$1$1$1;->c:Lcom/mycompany/app/video/VideoActivity$37$1$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$37$1$1;->c:Lcom/mycompany/app/video/VideoActivity$37$1;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$37$1;->c:Lcom/mycompany/app/video/VideoActivity$37;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$37;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 10
    .line 11
    sget v1, Lcom/mycompany/app/video/VideoActivity;->r4:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v2}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, v0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v2, v3}, Lorg/jsoup/Connection;->referrer(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->t3(Landroid/content/Context;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v2, v3}, Lorg/jsoup/Connection;->userAgent(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v2}, Lcom/mycompany/app/web/WebReadTask;->v(Lorg/jsoup/nodes/Document;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string v3, "streamingData"

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "formats"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const-string v3, "width"

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-gtz v3, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    const-string v4, "height"

    .line 80
    .line 81
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-gtz v2, :cond_4

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    new-instance v4, Lcom/mycompany/app/main/MainUtil$SizeItem;

    .line 89
    .line 90
    invoke-direct {v4, v3, v2}, Lcom/mycompany/app/main/MainUtil$SizeItem;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    move-object v1, v4

    .line 94
    :catch_0
    :goto_0
    if-eqz v1, :cond_5

    .line 95
    .line 96
    iget v2, v1, Lcom/mycompany/app/main/MainUtil$SizeItem;->a:I

    .line 97
    .line 98
    iget v1, v1, Lcom/mycompany/app/main/MainUtil$SizeItem;->b:I

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    const/16 v2, 0x500

    .line 102
    .line 103
    const/16 v1, 0x2d0

    .line 104
    .line 105
    :goto_1
    iget v3, v0, Lcom/mycompany/app/video/VideoActivity;->x3:I

    .line 106
    .line 107
    if-ne v3, v2, :cond_6

    .line 108
    .line 109
    iget v3, v0, Lcom/mycompany/app/video/VideoActivity;->y3:I

    .line 110
    .line 111
    if-ne v3, v1, :cond_6

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_6
    iput v2, v0, Lcom/mycompany/app/video/VideoActivity;->x3:I

    .line 115
    .line 116
    iput v1, v0, Lcom/mycompany/app/video/VideoActivity;->y3:I

    .line 117
    .line 118
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->b2:Landroid/app/PictureInPictureParams$Builder;

    .line 119
    .line 120
    if-nez v1, :cond_7

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 124
    .line 125
    if-nez v1, :cond_8

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_8
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$38;

    .line 129
    .line 130
    invoke-direct {v2, v0}, Lcom/mycompany/app/video/VideoActivity$38;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 134
    .line 135
    .line 136
    :goto_2
    return-void
.end method
