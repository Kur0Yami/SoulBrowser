.class Lcom/mycompany/app/web/WebViewActivity$241$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$241;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$241;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$241$1;->c:Lcom/mycompany/app/web/WebViewActivity$241;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$241$1;->c:Lcom/mycompany/app/web/WebViewActivity$241;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$241;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->qi:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ri:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->qi:Lcom/mycompany/app/web/WebNestView;

    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->ri:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    if-eqz v1, :cond_9

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->v()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v4, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v4, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/4 v4, 0x2

    .line 53
    invoke-static {v4, v3}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->v()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v4, :cond_9

    .line 73
    .line 74
    if-nez v5, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    int-to-float v4, v4

    .line 78
    const v6, 0x3ecccccd    # 0.4f

    .line 79
    .line 80
    .line 81
    mul-float/2addr v4, v6

    .line 82
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    int-to-float v5, v5

    .line 87
    mul-float/2addr v5, v6

    .line 88
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v4, :cond_9

    .line 93
    .line 94
    if-gtz v5, :cond_4

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 106
    .line 107
    invoke-static {v4, v5, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    new-instance v5, Landroid/graphics/Canvas;

    .line 112
    .line 113
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 114
    .line 115
    .line 116
    sget-boolean v9, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 117
    .line 118
    if-eqz v9, :cond_5

    .line 119
    .line 120
    const/high16 v9, -0x1000000

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    const/4 v9, -0x1

    .line 124
    :goto_0
    invoke-virtual {v5, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 128
    .line 129
    .line 130
    if-nez v7, :cond_6

    .line 131
    .line 132
    if-eqz v8, :cond_7

    .line 133
    .line 134
    :cond_6
    neg-int v6, v7

    .line 135
    int-to-float v6, v6

    .line 136
    neg-int v7, v8

    .line 137
    int-to-float v7, v7

    .line 138
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    :cond_7
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->si:Lcom/mycompany/app/web/WebNestView;

    .line 142
    .line 143
    iget-wide v1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 144
    .line 145
    iput-wide v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ti:J

    .line 146
    .line 147
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->ui:Ljava/lang/String;

    .line 148
    .line 149
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->vi:Landroid/graphics/Bitmap;

    .line 150
    .line 151
    iput-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->wi:Landroid/graphics/Canvas;

    .line 152
    .line 153
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 154
    .line 155
    if-nez v1, :cond_8

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_8
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$242;

    .line 159
    .line 160
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$242;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 164
    .line 165
    .line 166
    :catch_0
    :cond_9
    :goto_1
    return-void
.end method
