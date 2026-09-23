.class Lcom/mycompany/app/web/WebViewActivity$376$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$376$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$376$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$376$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$376$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$376$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$376$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$376$1;->c:Lcom/mycompany/app/web/WebViewActivity$376;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$376;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-wide v2, v1, Lcom/mycompany/app/web/WebViewActivity;->z6:J

    .line 8
    .line 9
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->w6:Lcom/mycompany/app/view/MyCoverView;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 16
    .line 17
    const/high16 v5, -0x5f000000

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-eqz v7, :cond_5

    .line 32
    .line 33
    if-nez v8, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-wide/16 v9, 0x0

    .line 37
    .line 38
    cmp-long v9, v2, v9

    .line 39
    .line 40
    if-lez v9, :cond_3

    .line 41
    .line 42
    int-to-long v9, v7

    .line 43
    const-wide/16 v11, 0x20

    .line 44
    .line 45
    mul-long/2addr v9, v11

    .line 46
    div-long/2addr v2, v9

    .line 47
    long-to-int v2, v2

    .line 48
    if-le v8, v2, :cond_3

    .line 49
    .line 50
    move v8, v2

    .line 51
    :cond_3
    int-to-float v2, v7

    .line 52
    const v3, 0x3e4ccccd    # 0.2f

    .line 53
    .line 54
    .line 55
    mul-float/2addr v2, v3

    .line 56
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    int-to-float v7, v8

    .line 61
    mul-float/2addr v7, v3

    .line 62
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v2, :cond_5

    .line 67
    .line 68
    if-nez v7, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 72
    .line 73
    invoke-static {v2, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    new-instance v7, Landroid/graphics/Canvas;

    .line 78
    .line 79
    invoke-direct {v7, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    move-object v6, v2

    .line 92
    :catch_0
    :cond_5
    :goto_0
    new-instance v2, Lcom/mycompany/app/view/MyCoverView;

    .line 93
    .line 94
    sget v3, Lcom/mycompany/app/main/MainApp;->y1:I

    .line 95
    .line 96
    sget v4, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 97
    .line 98
    const v7, -0x50506

    .line 99
    .line 100
    .line 101
    invoke-direct {v2, v1, v7, v3, v4}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 102
    .line 103
    .line 104
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->w6:Lcom/mycompany/app/view/MyCoverView;

    .line 105
    .line 106
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->w6:Lcom/mycompany/app/view/MyCoverView;

    .line 113
    .line 114
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-direct {v3, v4, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_6
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->w6:Lcom/mycompany/app/view/MyCoverView;

    .line 128
    .line 129
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 130
    .line 131
    .line 132
    :goto_1
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->w6:Lcom/mycompany/app/view/MyCoverView;

    .line 133
    .line 134
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$378;

    .line 135
    .line 136
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 143
    .line 144
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->w6:Lcom/mycompany/app/view/MyCoverView;

    .line 145
    .line 146
    const/4 v3, -0x1

    .line 147
    invoke-virtual {v2, v1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 148
    .line 149
    .line 150
    :goto_2
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$376;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 151
    .line 152
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 153
    .line 154
    if-nez v0, :cond_7

    .line 155
    .line 156
    return-void

    .line 157
    :cond_7
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$376$1$1$1;

    .line 158
    .line 159
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$376$1$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$376$1$1;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    .line 164
    .line 165
    return-void
.end method
