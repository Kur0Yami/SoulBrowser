.class public Lcom/mycompany/app/widget/WidgetBookProviderBody;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Landroid/content/Context;

.field public c:Landroid/appwidget/AppWidgetManager;

.field public d:[I

.field public e:I

.field public f:Landroid/content/Context;

.field public g:I

.field public h:Landroid/content/Context;

.field public i:Ljava/lang/String;


# direct methods
.method public static a(Lcom/mycompany/app/widget/WidgetBookProviderBody;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->e:I

    .line 3
    .line 4
    const/16 v2, -0x4d2

    .line 5
    .line 6
    if-gez v1, :cond_1

    .line 7
    .line 8
    :cond_0
    :goto_0
    move v1, v2

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->d:[I

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    array-length v4, v3

    .line 15
    if-lt v1, v4, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    aget v1, v3, v1

    .line 19
    .line 20
    :goto_1
    if-ne v1, v2, :cond_3

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->b:Landroid/content/Context;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->c:Landroid/appwidget/AppWidgetManager;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->d:[I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    invoke-static {}, Lcom/mycompany/app/widget/WidgetBookData;->b()Lcom/mycompany/app/widget/WidgetBookData;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3, v1}, Lcom/mycompany/app/widget/WidgetBookData;->a(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v4, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->b:Landroid/content/Context;

    .line 38
    .line 39
    iget-object v5, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->c:Landroid/appwidget/AppWidgetManager;

    .line 40
    .line 41
    invoke-virtual {p0, v4, v5, v1, v3}, Lcom/mycompany/app/widget/WidgetBookProviderBody;->g(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->e:I

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    iput v1, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->e:I

    .line 49
    .line 50
    if-gez v1, :cond_5

    .line 51
    .line 52
    :cond_4
    :goto_2
    move v1, v2

    .line 53
    goto :goto_3

    .line 54
    :cond_5
    iget-object v3, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->d:[I

    .line 55
    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    array-length v4, v3

    .line 59
    if-lt v1, v4, :cond_6

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_6
    aget v1, v3, v1

    .line 63
    .line 64
    :goto_3
    if-ne v1, v2, :cond_7

    .line 65
    .line 66
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->b:Landroid/content/Context;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->c:Landroid/appwidget/AppWidgetManager;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->d:[I

    .line 71
    .line 72
    return-void

    .line 73
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->b:Landroid/content/Context;

    .line 74
    .line 75
    new-instance v2, Lcom/mycompany/app/widget/WidgetBookProviderBody$5;

    .line 76
    .line 77
    invoke-direct {v2, p0}, Lcom/mycompany/app/widget/WidgetBookProviderBody$5;-><init>(Lcom/mycompany/app/widget/WidgetBookProviderBody;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catch_0
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->b:Landroid/content/Context;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->c:Landroid/appwidget/AppWidgetManager;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->d:[I

    .line 89
    .line 90
    return-void
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 v0, 0x2

    .line 10
    invoke-static {v0, p0}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->O1(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->n4(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/mycompany/app/main/MainItem$ChildItem;Z)Landroid/widget/RemoteViews;
    .locals 3

    .line 1
    if-eqz p0, :cond_e

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget v1, Lnet/kaki87/soul2/testing/R$layout;->widget_book_item:I

    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sget p0, Lnet/kaki87/soul2/testing/R$id;->icon_view:I

    .line 19
    .line 20
    iget-boolean v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 21
    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    if-ne v1, v2, :cond_2

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_shift_2_dark_24:I

    .line 32
    .line 33
    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_shift_2_black_24:I

    .line 39
    .line 40
    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_2
    if-eqz p2, :cond_3

    .line 46
    .line 47
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_dark_24:I

    .line 48
    .line 49
    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_3
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_black_24:I

    .line 55
    .line 56
    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    iget-object v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_6

    .line 67
    .line 68
    if-eqz p2, :cond_5

    .line 69
    .line 70
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_web_24:I

    .line 71
    .line 72
    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 77
    .line 78
    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_6
    iget-object v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 83
    .line 84
    const-string v2, "file:///"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_a

    .line 91
    .line 92
    const-string v1, "file:///android_asset/shortcut.html"

    .line 93
    .line 94
    iget-object v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_8

    .line 101
    .line 102
    if-eqz p2, :cond_7

    .line 103
    .line 104
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_dark_web_24:I

    .line 105
    .line 106
    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_7
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_black_24:I

    .line 111
    .line 112
    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_8
    if-eqz p2, :cond_9

    .line 117
    .line 118
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_dark_web_24:I

    .line 119
    .line 120
    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_9
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_black_24:I

    .line 125
    .line 126
    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_a
    iget-object v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v1}, Lcom/mycompany/app/widget/WidgetBookProviderBody;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_b

    .line 141
    .line 142
    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_b
    if-eqz p2, :cond_c

    .line 147
    .line 148
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_web_24:I

    .line 149
    .line 150
    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_c
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 155
    .line 156
    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 157
    .line 158
    .line 159
    :goto_0
    sget p0, Lnet/kaki87/soul2/testing/R$id;->name_view:I

    .line 160
    .line 161
    iget-object v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    sget p0, Lnet/kaki87/soul2/testing/R$id;->name_view:I

    .line 167
    .line 168
    if-eqz p2, :cond_d

    .line 169
    .line 170
    const p2, -0x4f4f50

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_d
    const/high16 p2, -0x1000000

    .line 175
    .line 176
    :goto_1
    invoke-virtual {v0, p0, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 177
    .line 178
    .line 179
    new-instance p0, Landroid/content/Intent;

    .line 180
    .line 181
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string p2, "EXTRA_TYPE"

    .line 185
    .line 186
    iget-boolean v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 187
    .line 188
    invoke-virtual {p0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    .line 190
    .line 191
    const-string p2, "EXTRA_PATH"

    .line 192
    .line 193
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    sget p1, Lnet/kaki87/soul2/testing/R$id;->item_view:I

    .line 199
    .line 200
    invoke-virtual {v0, p1, p0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 201
    .line 202
    .line 203
    return-object v0

    .line 204
    :cond_e
    :goto_2
    const/4 p0, 0x0

    .line 205
    return-object p0
.end method

.method public static d(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    :cond_0
    move-object v15, v2

    .line 11
    goto/16 :goto_b

    .line 12
    .line 13
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/mycompany/app/main/MainUtil;->Y6(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const-string v5, "/"

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    :goto_0
    move-object v3, v5

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-static {v5, v3}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->d1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-static {v0, v4, v6}, Lcom/mycompany/app/db/book/DbBookWeb;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v10, "_time"

    .line 52
    .line 53
    const-string v11, "_rsv4"

    .line 54
    .line 55
    const-string v6, "_id"

    .line 56
    .line 57
    const-string v7, "_isdir"

    .line 58
    .line 59
    const-string v8, "_path"

    .line 60
    .line 61
    const-string v9, "_title"

    .line 62
    .line 63
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v14

    .line 67
    const-string v15, "_secret=? AND _dir=?"

    .line 68
    .line 69
    const-string v6, "0"

    .line 70
    .line 71
    filled-new-array {v6, v3}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v16

    .line 75
    const/4 v7, 0x1

    .line 76
    :try_start_0
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    const-string v13, "DbBookWeb_table"

    .line 85
    .line 86
    const/16 v17, 0x0

    .line 87
    .line 88
    invoke-static/range {v12 .. v17}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 89
    .line 90
    .line 91
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    if-eqz v8, :cond_a

    .line 93
    .line 94
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-eqz v9, :cond_a

    .line 99
    .line 100
    const-string v9, "_id"

    .line 101
    .line 102
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    const-string v10, "_isdir"

    .line 107
    .line 108
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    const-string v11, "_path"

    .line 113
    .line 114
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    const-string v12, "_title"

    .line 119
    .line 120
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    const-string v13, "_rsv4"

    .line 125
    .line 126
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v13

    .line 130
    :goto_2
    new-instance v14, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 131
    .line 132
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 133
    .line 134
    .line 135
    const/16 v15, 0x11

    .line 136
    .line 137
    iput v15, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 138
    .line 139
    move-object/from16 v16, v3

    .line 140
    .line 141
    :try_start_2
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 142
    .line 143
    .line 144
    move-result-wide v2

    .line 145
    iput-wide v2, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 146
    .line 147
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-ne v2, v7, :cond_4

    .line 152
    .line 153
    move v2, v7

    .line 154
    goto :goto_3

    .line 155
    :cond_4
    const/4 v2, 0x0

    .line 156
    :goto_3
    iput-boolean v2, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 157
    .line 158
    move-object/from16 v3, v16

    .line 159
    .line 160
    :try_start_3
    iput-object v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 161
    .line 162
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iput-object v2, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 167
    .line 168
    iget-boolean v2, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 169
    .line 170
    if-eqz v2, :cond_6

    .line 171
    .line 172
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_5

    .line 177
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget-object v15, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    iput-object v2, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget-object v15, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    iput-object v2, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_6
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    iput-object v2, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_7

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_7
    :goto_4
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->F:Z

    .line 235
    .line 236
    if-eqz v2, :cond_8

    .line 237
    .line 238
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 239
    .line 240
    .line 241
    move-result-wide v6

    .line 242
    iput-wide v6, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->p:J

    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_8
    invoke-static {v14}, Lcom/mycompany/app/list/book/ListBookWeb;->p(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 246
    .line 247
    .line 248
    :goto_5
    invoke-static {v0, v14}, Lcom/mycompany/app/widget/WidgetBookProviderBody;->e(Landroid/content/Context;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    :goto_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 255
    .line 256
    .line 257
    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 258
    if-nez v6, :cond_9

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_9
    const/4 v2, 0x0

    .line 262
    const/4 v7, 0x1

    .line 263
    goto/16 :goto_2

    .line 264
    .line 265
    :catch_0
    move-object/from16 v3, v16

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :catch_1
    const/4 v8, 0x0

    .line 269
    :catch_2
    :cond_a
    :goto_7
    if-eqz v8, :cond_b

    .line 270
    .line 271
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 272
    .line 273
    .line 274
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    if-nez v6, :cond_d

    .line 279
    .line 280
    sget-boolean v6, Lcom/mycompany/app/pref/PrefList;->F:Z

    .line 281
    .line 282
    if-eqz v6, :cond_c

    .line 283
    .line 284
    new-instance v6, Lcom/mycompany/app/main/MainUtil$SortChildUser;

    .line 285
    .line 286
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 287
    .line 288
    .line 289
    :try_start_4
    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 290
    .line 291
    .line 292
    goto :goto_8

    .line 293
    :cond_c
    sget v6, Lcom/mycompany/app/pref/PrefList;->H:I

    .line 294
    .line 295
    sget-boolean v7, Lcom/mycompany/app/pref/PrefList;->I:Z

    .line 296
    .line 297
    const/4 v2, 0x0

    .line 298
    invoke-static {v2, v6, v7}, Lcom/mycompany/app/main/MainUtil;->g8(IIZ)Ljava/util/Comparator;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    :try_start_5
    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 303
    .line 304
    .line 305
    :catch_3
    :cond_d
    :goto_8
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    if-nez v5, :cond_11

    .line 310
    .line 311
    new-instance v5, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 312
    .line 313
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 314
    .line 315
    .line 316
    const/4 v15, 0x1

    .line 317
    iput v15, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 318
    .line 319
    iput-boolean v15, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 320
    .line 321
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 322
    .line 323
    .line 324
    move-result v6

    .line 325
    const-string v7, ".."

    .line 326
    .line 327
    if-eqz v6, :cond_e

    .line 328
    .line 329
    goto :goto_9

    .line 330
    :cond_e
    const/16 v6, 0x2f

    .line 331
    .line 332
    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    if-ltz v6, :cond_10

    .line 337
    .line 338
    add-int/2addr v6, v15

    .line 339
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 340
    .line 341
    .line 342
    move-result v8

    .line 343
    if-lt v6, v8, :cond_f

    .line 344
    .line 345
    goto :goto_9

    .line 346
    :cond_f
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    :cond_10
    :goto_9
    iput-object v7, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 351
    .line 352
    const/4 v15, 0x0

    .line 353
    invoke-static {v15, v3}, Lcom/mycompany/app/main/MainUtil;->d1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v6

    .line 357
    iput-object v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 358
    .line 359
    const/4 v2, 0x0

    .line 360
    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    :cond_11
    invoke-static {}, Lcom/mycompany/app/widget/WidgetBookData;->b()Lcom/mycompany/app/widget/WidgetBookData;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    if-nez v1, :cond_12

    .line 371
    .line 372
    goto :goto_a

    .line 373
    :cond_12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 374
    .line 375
    .line 376
    move-result v5

    .line 377
    if-eqz v5, :cond_13

    .line 378
    .line 379
    goto :goto_a

    .line 380
    :cond_13
    :try_start_6
    iget-object v5, v2, Lcom/mycompany/app/widget/WidgetBookData;->a:Landroid/util/SparseArray;

    .line 381
    .line 382
    if-nez v5, :cond_14

    .line 383
    .line 384
    new-instance v5, Landroid/util/SparseArray;

    .line 385
    .line 386
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 387
    .line 388
    .line 389
    iput-object v5, v2, Lcom/mycompany/app/widget/WidgetBookData;->a:Landroid/util/SparseArray;

    .line 390
    .line 391
    :cond_14
    iget-object v5, v2, Lcom/mycompany/app/widget/WidgetBookData;->a:Landroid/util/SparseArray;

    .line 392
    .line 393
    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 397
    .line 398
    const/16 v5, 0x1f

    .line 399
    .line 400
    if-ge v3, v5, :cond_16

    .line 401
    .line 402
    iget-object v3, v2, Lcom/mycompany/app/widget/WidgetBookData;->b:Landroid/util/SparseArray;

    .line 403
    .line 404
    if-nez v3, :cond_15

    .line 405
    .line 406
    new-instance v3, Landroid/util/SparseArray;

    .line 407
    .line 408
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 409
    .line 410
    .line 411
    iput-object v3, v2, Lcom/mycompany/app/widget/WidgetBookData;->b:Landroid/util/SparseArray;

    .line 412
    .line 413
    :cond_15
    iget-object v3, v2, Lcom/mycompany/app/widget/WidgetBookData;->b:Landroid/util/SparseArray;

    .line 414
    .line 415
    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 416
    .line 417
    .line 418
    :catch_4
    :cond_16
    invoke-virtual {v2, v0}, Lcom/mycompany/app/widget/WidgetBookData;->c(Landroid/content/Context;)V

    .line 419
    .line 420
    .line 421
    :goto_a
    return-object v4

    .line 422
    :goto_b
    return-object v15
.end method

.method public static e(Landroid/content/Context;Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/mycompany/app/widget/WidgetBookProviderBody;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 28
    .line 29
    iget-wide v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 30
    .line 31
    iget-object v3, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v1, v2, p0, v3}, Lcom/mycompany/app/main/MainUtil;->g0(IJLandroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    invoke-static {v0, p1}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, p1, p0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final f(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    array-length v0, p3

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->b:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->c:Landroid/appwidget/AppWidgetManager;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->d:[I

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iput p2, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->e:I

    .line 17
    .line 18
    new-instance p2, Lcom/mycompany/app/widget/WidgetBookProviderBody$4;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lcom/mycompany/app/widget/WidgetBookProviderBody$4;-><init>(Lcom/mycompany/app/widget/WidgetBookProviderBody;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->b:Landroid/content/Context;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->c:Landroid/appwidget/AppWidgetManager;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->d:[I

    .line 33
    .line 34
    return-void
.end method

.method public final g(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V
    .locals 10

    .line 1
    if-eqz p1, :cond_9

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    goto/16 :goto_7

    .line 6
    .line 7
    :cond_0
    if-nez p2, :cond_1

    .line 8
    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->a:Z

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    const-class v1, Lcom/mycompany/app/widget/WidgetBookProviderDark;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const-class v1, Lcom/mycompany/app/widget/WidgetBookProviderLight;

    .line 21
    .line 22
    :goto_0
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "appWidgetId"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const-string v2, "net.kaki87.soul2.testing.ACTION_BOOKGET_SELECT"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v4, 0x1f

    .line 50
    .line 51
    if-lt v3, v4, :cond_3

    .line 52
    .line 53
    const/high16 v5, 0xa000000

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    const/high16 v5, 0x8000000

    .line 57
    .line 58
    :goto_1
    const/16 v6, 0xa

    .line 59
    .line 60
    invoke-static {p1, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v5, Landroid/widget/RemoteViews;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    iget-boolean v7, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->a:Z

    .line 71
    .line 72
    if-eqz v7, :cond_4

    .line 73
    .line 74
    sget v7, Lnet/kaki87/soul2/testing/R$layout;->widget_book_layout_dark:I

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    sget v7, Lnet/kaki87/soul2/testing/R$layout;->widget_book_layout_light:I

    .line 78
    .line 79
    :goto_2
    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    sget v6, Lnet/kaki87/soul2/testing/R$id;->list_view:I

    .line 83
    .line 84
    sget v7, Lnet/kaki87/soul2/testing/R$id;->empty_view:I

    .line 85
    .line 86
    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 87
    .line 88
    .line 89
    sget v6, Lnet/kaki87/soul2/testing/R$id;->list_view:I

    .line 90
    .line 91
    invoke-virtual {v5, v6, v0}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p1, p3, p4}, Lcom/mycompany/app/widget/WidgetBookProviderBody;->d(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    if-lt v3, v4, :cond_7

    .line 99
    .line 100
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 101
    .line 102
    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    .line 103
    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    if-eqz p4, :cond_5

    .line 107
    .line 108
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    goto :goto_3

    .line 113
    :cond_5
    move v3, v1

    .line 114
    :goto_3
    if-eqz v3, :cond_6

    .line 115
    .line 116
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    move v4, v1

    .line 121
    :goto_4
    if-ge v4, v3, :cond_6

    .line 122
    .line 123
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    add-int/lit8 v4, v4, 0x1

    .line 128
    .line 129
    check-cast v6, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 130
    .line 131
    int-to-long v7, v1

    .line 132
    iget-boolean v9, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->a:Z

    .line 133
    .line 134
    invoke-static {p1, v6, v9}, Lcom/mycompany/app/widget/WidgetBookProviderBody;->c(Landroid/content/Context;Lcom/mycompany/app/main/MainItem$ChildItem;Z)Landroid/widget/RemoteViews;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v0, v7, v8, v6}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->addItem(JLandroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 139
    .line 140
    .line 141
    add-int/2addr v1, v2

    .line 142
    goto :goto_4

    .line 143
    :cond_6
    sget p1, Lnet/kaki87/soul2/testing/R$id;->list_view:I

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 146
    .line 147
    .line 148
    move-result-object p4

    .line 149
    invoke-virtual {v5, p1, p4}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 150
    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_7
    iget-boolean p4, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->a:Z

    .line 154
    .line 155
    if-eqz p4, :cond_8

    .line 156
    .line 157
    const-class p4, Lcom/mycompany/app/widget/WidgetBookServiceDark;

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_8
    const-class p4, Lcom/mycompany/app/widget/WidgetBookServiceLight;

    .line 161
    .line 162
    :goto_5
    new-instance v0, Landroid/content/Intent;

    .line 163
    .line 164
    invoke-direct {v0, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    sget p1, Lnet/kaki87/soul2/testing/R$id;->list_view:I

    .line 182
    .line 183
    invoke-virtual {v5, p1, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 184
    .line 185
    .line 186
    sget p1, Lnet/kaki87/soul2/testing/R$id;->list_view:I

    .line 187
    .line 188
    invoke-virtual {p2, p3, p1}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 189
    .line 190
    .line 191
    :goto_6
    invoke-virtual {p2, p3, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 192
    .line 193
    .line 194
    :cond_9
    :goto_7
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    if-eqz p2, :cond_4

    .line 7
    .line 8
    array-length v0, p2

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    array-length v0, p2

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_4

    .line 15
    .line 16
    aget v2, p2, v1

    .line 17
    .line 18
    invoke-static {}, Lcom/mycompany/app/widget/WidgetBookData;->b()Lcom/mycompany/app/widget/WidgetBookData;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object v4, v3, Lcom/mycompany/app/widget/WidgetBookData;->a:Landroid/util/SparseArray;

    .line 29
    .line 30
    if-nez v4, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 34
    .line 35
    .line 36
    iget-object v4, v3, Lcom/mycompany/app/widget/WidgetBookData;->b:Landroid/util/SparseArray;

    .line 37
    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    :cond_3
    invoke-virtual {v3, p1}, Lcom/mycompany/app/widget/WidgetBookData;->c(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    :goto_2
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "net.kaki87.soul2.testing.ACTION_BOOKGET_SELECT"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string p2, "net.kaki87.soul2.testing.ACTION_BOOKGET_UPDATE"

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->f:Landroid/content/Context;

    .line 29
    .line 30
    new-instance p2, Lcom/mycompany/app/widget/WidgetBookProviderBody$1;

    .line 31
    .line 32
    invoke-direct {p2, p0}, Lcom/mycompany/app/widget/WidgetBookProviderBody$1;-><init>(Lcom/mycompany/app/widget/WidgetBookProviderBody;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const-string v0, "appWidgetId"

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const-string v2, "EXTRA_TYPE"

    .line 47
    .line 48
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const-string v2, "EXTRA_PATH"

    .line 53
    .line 54
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    iput v0, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->g:I

    .line 59
    .line 60
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->h:Landroid/content/Context;

    .line 61
    .line 62
    iput-object p2, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->i:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    new-instance p2, Lcom/mycompany/app/widget/WidgetBookProviderBody$2;

    .line 67
    .line 68
    invoke-direct {p2, p0}, Lcom/mycompany/app/widget/WidgetBookProviderBody$2;-><init>(Lcom/mycompany/app/widget/WidgetBookProviderBody;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    new-instance p1, Landroid/os/Handler;

    .line 76
    .line 77
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 82
    .line 83
    .line 84
    new-instance p2, Lcom/mycompany/app/widget/WidgetBookProviderBody$3;

    .line 85
    .line 86
    invoke-direct {p2, p0}, Lcom/mycompany/app/widget/WidgetBookProviderBody$3;-><init>(Lcom/mycompany/app/widget/WidgetBookProviderBody;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/mycompany/app/widget/WidgetBookProviderBody;->f(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
