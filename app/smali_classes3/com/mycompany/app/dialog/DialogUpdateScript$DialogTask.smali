.class Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogUpdateScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/util/List;

.field public final g:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public j:Z

.field public k:I

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUpdateScript;)V
    .locals 5

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogUpdateScript;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->d0:Ljava/util/List;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->f:Ljava/util/List;

    .line 24
    .line 25
    iget v1, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->v0:I

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-lt v1, v2, :cond_1

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 42
    .line 43
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->g:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v3, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->h:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->i:Ljava/lang/String;

    .line 55
    .line 56
    const-wide/16 v3, 0x0

    .line 57
    .line 58
    iput-wide v3, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->o0:J

    .line 59
    .line 60
    iput-wide v3, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->p0:J

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    add-int/2addr v1, v3

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    const-string v1, ""

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->n0:Lcom/mycompany/app/view/MyProgressBar;

    .line 95
    .line 96
    const/16 v1, 0x64

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressBar;->setMax(I)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->n0:Lcom/mycompany/app/view/MyProgressBar;

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->f0:Lcom/mycompany/app/view/MyLineRelative;

    .line 108
    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->j0:Landroid/widget/RelativeLayout;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->k0:Landroid/widget/FrameLayout;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->n0:Lcom/mycompany/app/view/MyProgressBar;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    const/16 v2, 0x8

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->y0:Z

    .line 141
    .line 142
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->w0:Z

    .line 143
    .line 144
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateScript;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 162
    .line 163
    .line 164
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_7

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/dialog/DialogUpdateScript;

    .line 12
    .line 13
    if-eqz v0, :cond_11

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->g:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    goto/16 :goto_7

    .line 26
    .line 27
    :cond_2
    const-string v2, "userscript://"

    .line 28
    .line 29
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->h:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v4, 0x1

    .line 36
    const-wide/16 v5, 0x1

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    iput-boolean v4, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->j:Z

    .line 41
    .line 42
    iput-wide v5, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->o0:J

    .line 43
    .line 44
    iput-wide v5, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->p0:J

    .line 45
    .line 46
    iget-wide v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 47
    .line 48
    iput-wide v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->C0:J

    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    move-object v2, v3

    .line 52
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->a0:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    const/4 v10, 0x0

    .line 59
    const/4 v11, 0x0

    .line 60
    if-eqz v7, :cond_5

    .line 61
    .line 62
    invoke-static {v0, v3, v2}, Lcom/mycompany/app/dialog/DialogUpdateScript;->C(Lcom/mycompany/app/dialog/DialogUpdateScript;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_4

    .line 71
    .line 72
    iput-boolean v4, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->j:Z

    .line 73
    .line 74
    iget-wide v4, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->o0:J

    .line 75
    .line 76
    iget-wide v6, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->p0:J

    .line 77
    .line 78
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    iput-wide v4, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->o0:J

    .line 83
    .line 84
    iput-wide v4, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->p0:J

    .line 85
    .line 86
    :cond_4
    :goto_0
    move-object v6, v2

    .line 87
    goto :goto_3

    .line 88
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_6

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    :try_start_0
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->Y1(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v3, v2, v10}, Lcom/mycompany/app/main/MainUtil;->A3(Landroid/content/Context;Ljava/io/InputStream;Z)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_2

    .line 104
    :catch_0
    :goto_1
    move-object v2, v11

    .line 105
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-nez v7, :cond_7

    .line 110
    .line 111
    iput-boolean v4, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->j:Z

    .line 112
    .line 113
    iput-wide v5, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->o0:J

    .line 114
    .line 115
    iput-wide v5, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->p0:J

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_7
    sget v4, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 119
    .line 120
    iput v4, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->k:I

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :goto_3
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->j:Z

    .line 124
    .line 125
    if-nez v2, :cond_8

    .line 126
    .line 127
    goto/16 :goto_7

    .line 128
    .line 129
    :cond_8
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->D0:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-nez v2, :cond_9

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_9
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    if-nez v2, :cond_a

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_a
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_b

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_b
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 157
    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-nez v7, :cond_c

    .line 171
    .line 172
    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    const-string v5, "-"

    .line 177
    .line 178
    invoke-static {v4, v5, v2}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    goto :goto_4

    .line 183
    :cond_c
    move-object v2, v11

    .line 184
    :goto_4
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->D0:Ljava/lang/String;

    .line 185
    .line 186
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->E0:Ljava/lang/String;

    .line 187
    .line 188
    :goto_5
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->D0:Ljava/lang/String;

    .line 189
    .line 190
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->E0:Ljava/lang/String;

    .line 191
    .line 192
    const/4 v9, 0x1

    .line 193
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->h:Ljava/lang/String;

    .line 194
    .line 195
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->i:Ljava/lang/String;

    .line 196
    .line 197
    invoke-static/range {v3 .. v9}, Lcom/mycompany/app/script/Script;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mycompany/app/script/Script;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    sget-object v4, Lcom/mycompany/app/script/Script;->x:Ljava/lang/String;

    .line 202
    .line 203
    iput-object v4, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->l:Ljava/lang/String;

    .line 204
    .line 205
    sput-object v11, Lcom/mycompany/app/script/Script;->x:Ljava/lang/String;

    .line 206
    .line 207
    if-nez v2, :cond_d

    .line 208
    .line 209
    iput-boolean v10, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->j:Z

    .line 210
    .line 211
    return-void

    .line 212
    :cond_d
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->D0:Ljava/lang/String;

    .line 213
    .line 214
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->E0:Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {v3, v2, v1, v4, v5}, Lcom/mycompany/app/db/book/DbBookScript;->o(Landroid/content/Context;Lcom/mycompany/app/script/Script;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    if-nez v1, :cond_e

    .line 221
    .line 222
    iput-boolean v10, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->j:Z

    .line 223
    .line 224
    return-void

    .line 225
    :cond_e
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookScript;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookScript;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    iget-object v3, v2, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 230
    .line 231
    if-nez v3, :cond_f

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    if-lez v3, :cond_10

    .line 239
    .line 240
    invoke-virtual {v2, v1}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 241
    .line 242
    .line 243
    :cond_10
    :goto_6
    iget-wide v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 244
    .line 245
    iput-wide v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->C0:J

    .line 246
    .line 247
    :cond_11
    :goto_7
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogUpdateScript;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->a0:Landroid/content/Context;

    .line 19
    .line 20
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUpdateScript;->dismiss()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogUpdateScript;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUpdateScript;->D()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->a0:Landroid/content/Context;

    .line 25
    .line 26
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUpdateScript;->dismiss()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->f:Ljava/util/List;

    .line 36
    .line 37
    if-eqz v1, :cond_9

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_3
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->j:Z

    .line 48
    .line 49
    if-nez v2, :cond_8

    .line 50
    .line 51
    iget v2, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->k:I

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->l:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_5

    .line 68
    .line 69
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;->l:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->c0:Z

    .line 78
    .line 79
    if-eqz v2, :cond_6

    .line 80
    .line 81
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    sget v3, Lnet/kaki87/soul2/testing/R$string;->install_fail:I

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_6
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    .line 91
    sget v3, Lnet/kaki87/soul2/testing/R$string;->update_fail:I

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 94
    .line 95
    .line 96
    :goto_1
    const/4 v2, 0x1

    .line 97
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->w0:Z

    .line 98
    .line 99
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->k0:Landroid/widget/FrameLayout;

    .line 100
    .line 101
    const/4 v4, 0x4

    .line 102
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->n0:Lcom/mycompany/app/view/MyProgressBar;

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    const/4 v4, 0x0

    .line 113
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-le v1, v2, :cond_7

    .line 121
    .line 122
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 123
    .line 124
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 129
    .line 130
    const/16 v3, 0x8

    .line 131
    .line 132
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    sget v3, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 143
    .line 144
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_8
    iget-wide v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->o0:J

    .line 152
    .line 153
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 158
    .line 159
    invoke-static {v1, v1}, Lcom/mycompany/app/main/MainUtil;->i3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->n0:Lcom/mycompany/app/view/MyProgressBar;

    .line 167
    .line 168
    const/high16 v2, 0x42c80000    # 100.0f

    .line 169
    .line 170
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->n0:Lcom/mycompany/app/view/MyProgressBar;

    .line 174
    .line 175
    new-instance v2, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask$1;

    .line 176
    .line 177
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask$1;-><init>(Lcom/mycompany/app/dialog/DialogUpdateScript;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_9
    :goto_3
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUpdateScript;->dismiss()V

    .line 185
    .line 186
    .line 187
    return-void
.end method
