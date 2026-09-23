.class Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogSetDown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetDown;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogSetDown;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;->g:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogSetDown;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_1
    const/4 p2, 0x1

    .line 30
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogRelative;->e(Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/dialog/DialogSetDown;

    .line 12
    .line 13
    if-eqz v0, :cond_8

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_1
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetDown;->m0:[Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;->g:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const-string v3, "*/*"

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    move-object v1, v3

    .line 34
    :cond_2
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;->f:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const-string v6, "https://test.com"

    .line 41
    .line 42
    const/4 v7, 0x1

    .line 43
    if-eqz v5, :cond_5

    .line 44
    .line 45
    const-string v4, "image"

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    const-string v4, "https://test.com/test.jpg"

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const-string v4, "video"

    .line 57
    .line 58
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    const-string v4, "https://test.com/test.mp4"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const/4 v7, 0x0

    .line 68
    move-object v4, v6

    .line 69
    :cond_5
    :goto_0
    new-instance v5, Landroid/content/Intent;

    .line 70
    .line 71
    const-string v8, "android.intent.action.WEB_SEARCH"

    .line 72
    .line 73
    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    const/4 v9, 0x0

    .line 84
    invoke-virtual {v0, v9, v5}, Lcom/mycompany/app/dialog/DialogSetDown;->B(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    new-instance v9, Landroid/content/Intent;

    .line 89
    .line 90
    const-string v10, "android.intent.action.VIEW"

    .line 91
    .line 92
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    invoke-virtual {v9, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v5, v9}, Lcom/mycompany/app/dialog/DialogSetDown;->B(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    new-instance v9, Landroid/content/Intent;

    .line 107
    .line 108
    const-string v11, "android.intent.action.SEND"

    .line 109
    .line 110
    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    invoke-virtual {v9, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v5, v9}, Lcom/mycompany/app/dialog/DialogSetDown;->B(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    new-instance v9, Landroid/content/Intent;

    .line 125
    .line 126
    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v12, "text/plain"

    .line 130
    .line 131
    invoke-virtual {v9, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    const-string v12, "android.intent.extra.TEXT"

    .line 135
    .line 136
    invoke-virtual {v9, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v5, v9}, Lcom/mycompany/app/dialog/DialogSetDown;->B(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    new-instance v9, Landroid/content/Intent;

    .line 144
    .line 145
    invoke-direct {v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v5, v9}, Lcom/mycompany/app/dialog/DialogSetDown;->B(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    new-instance v9, Landroid/content/Intent;

    .line 156
    .line 157
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v5, v9}, Lcom/mycompany/app/dialog/DialogSetDown;->B(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    new-instance v9, Landroid/content/Intent;

    .line 168
    .line 169
    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v5, v9}, Lcom/mycompany/app/dialog/DialogSetDown;->B(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-static {v8, v4, v1}, Lcom/mycompany/app/dialog/DialogSetDown;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    invoke-virtual {v0, v5, v9}, Lcom/mycompany/app/dialog/DialogSetDown;->B(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-static {v10, v4, v1}, Lcom/mycompany/app/dialog/DialogSetDown;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-virtual {v0, v5, v9}, Lcom/mycompany/app/dialog/DialogSetDown;->B(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-static {v11, v4, v1}, Lcom/mycompany/app/dialog/DialogSetDown;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v5, v1}, Lcom/mycompany/app/dialog/DialogSetDown;->B(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    if-nez v2, :cond_6

    .line 204
    .line 205
    if-eqz v7, :cond_6

    .line 206
    .line 207
    invoke-static {v8, v6, v3}, Lcom/mycompany/app/dialog/DialogSetDown;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogSetDown;->B(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v10, v6, v3}, Lcom/mycompany/app/dialog/DialogSetDown;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogSetDown;->B(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-static {v11, v6, v3}, Lcom/mycompany/app/dialog/DialogSetDown;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogSetDown;->B(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    :cond_6
    if-eqz v1, :cond_7

    .line 232
    .line 233
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-nez v0, :cond_7

    .line 238
    .line 239
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetDown$SortApp;

    .line 240
    .line 241
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 242
    .line 243
    .line 244
    :try_start_0
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .line 246
    .line 247
    :catch_0
    :cond_7
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;->h:Ljava/util/List;

    .line 248
    .line 249
    :cond_8
    :goto_1
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogSetDown;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDown;->i0:Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;

    .line 17
    .line 18
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/dialog/DialogSetDown;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDown;->i0:Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;

    .line 19
    .line 20
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetDown;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyDialogRelative;->e(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;->h:Ljava/util/List;

    .line 30
    .line 31
    if-eqz v2, :cond_5

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetDown;->h0:Lcom/mycompany/app/main/MainAppAdapter;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;->h:Ljava/util/List;

    .line 43
    .line 44
    iget-object v3, v0, Lcom/mycompany/app/main/MainAppAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 45
    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    iput-object v1, v3, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 49
    .line 50
    :cond_4
    iput-object v2, v0, Lcom/mycompany/app/main/MainAppAdapter;->e:Ljava/util/List;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_5
    :goto_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetDown;->b0:Landroid/content/Context;

    .line 57
    .line 58
    if-eqz v2, :cond_8

    .line 59
    .line 60
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetDown;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 61
    .line 62
    if-nez v3, :cond_6

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_6
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    invoke-direct {v3, v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    .line 69
    .line 70
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 71
    .line 72
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 73
    .line 74
    .line 75
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetDown;->l0:I

    .line 76
    .line 77
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 78
    .line 79
    .line 80
    const/16 v1, 0x11

    .line 81
    .line 82
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    .line 84
    .line 85
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 86
    .line 87
    int-to-float v1, v1

    .line 88
    const/high16 v2, 0x3f800000    # 1.0f

    .line 89
    .line 90
    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 91
    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    const/high16 v2, 0x41800000    # 16.0f

    .line 95
    .line 96
    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 97
    .line 98
    .line 99
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 100
    .line 101
    if-eqz v1, :cond_7

    .line 102
    .line 103
    const v1, -0x50506

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_7
    const/high16 v1, -0x1000000

    .line 108
    .line 109
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    .line 111
    .line 112
    sget v1, Lnet/kaki87/soul2/testing/R$string;->apps_none:I

    .line 113
    .line 114
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDown;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 118
    .line 119
    const/4 v2, -0x1

    .line 120
    const/4 v4, -0x2

    .line 121
    invoke-virtual {v1, v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 122
    .line 123
    .line 124
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetDown;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 125
    .line 126
    const/16 v1, 0x8

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    :cond_8
    :goto_2
    return-void
.end method
