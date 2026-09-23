.class public Lcom/mycompany/app/dialog/DialogUpdateFilter;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;
    }
.end annotation


# instance fields
.field public A0:Ljava/io/InputStream;

.field public B0:Ljava/io/OutputStream;

.field public C0:Z

.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public c0:Ljava/util/List;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Lcom/mycompany/app/view/MyLineRelative;

.field public f0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Landroid/widget/RelativeLayout;

.field public j0:Landroid/widget/FrameLayout;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Lcom/mycompany/app/view/MyProgressBar;

.field public n0:J

.field public o0:J

.field public p0:Landroidx/appcompat/widget/AppCompatTextView;

.field public q0:Lcom/mycompany/app/view/MyCoverView;

.field public r0:Lcom/mycompany/app/view/MyLineText;

.field public s0:Landroidx/appcompat/widget/AppCompatTextView;

.field public t0:Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;

.field public u0:I

.field public v0:Z

.field public w0:Z

.field public x0:Z

.field public y0:Z

.field public z0:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 11
    .line 12
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p3, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p4, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 26
    .line 27
    new-instance p2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->c0:Ljava/util/List;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogUpdateFilter$1;

    .line 43
    .line 44
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogUpdateFilter$1;-><init>(Lcom/mycompany/app/dialog/DialogUpdateFilter;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogUpdateFilter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->a0:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->u0:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    add-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->u0:I

    .line 11
    .line 12
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->c0:Ljava/util/List;

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v0, v2, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->t0:Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 27
    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->t0:Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;

    .line 30
    .line 31
    new-instance v0, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogUpdateFilter;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->t0:Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->a0:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->a0:Landroid/content/Context;

    .line 45
    .line 46
    sget v1, Lnet/kaki87/soul2/testing/R$string;->success:I

    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->dismiss()V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->x0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->t0:Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->t0:Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    sget v2, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const v2, -0x7f7f80

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const v2, -0x252526

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->x0:Z

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->F(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->t0:Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iput-boolean v0, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 48
    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->t0:Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->dismiss()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->F(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/mycompany/app/main/MainUtil;->m1(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->z0:Ljava/net/HttpURLConnection;

    .line 20
    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->m0(Landroid/content/Context;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_2

    .line 33
    .line 34
    :goto_0
    return v4

    .line 35
    :cond_2
    const/4 v8, -0x1

    .line 36
    const/16 v9, 0x18

    .line 37
    .line 38
    const/16 v10, 0x400

    .line 39
    .line 40
    const-wide/16 v11, 0x0

    .line 41
    .line 42
    :try_start_0
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    iget-object v13, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->z0:Ljava/net/HttpURLConnection;

    .line 46
    .line 47
    invoke-virtual {v13, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v13, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->z0:Ljava/net/HttpURLConnection;

    .line 51
    .line 52
    invoke-virtual {v13}, Ljava/net/URLConnection;->connect()V

    .line 53
    .line 54
    .line 55
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    if-lt v13, v9, :cond_3

    .line 58
    .line 59
    iget-object v13, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->z0:Ljava/net/HttpURLConnection;

    .line 60
    .line 61
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    .line 62
    .line 63
    .line 64
    move-result-wide v13

    .line 65
    iput-wide v13, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->n0:J

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-wide/from16 v18, v11

    .line 69
    .line 70
    const-wide/16 v16, 0x1f4

    .line 71
    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :cond_3
    iget-object v13, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->z0:Ljava/net/HttpURLConnection;

    .line 75
    .line 76
    invoke-virtual {v13}, Ljava/net/URLConnection;->getContentLength()I

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    int-to-long v13, v13

    .line 81
    iput-wide v13, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->n0:J

    .line 82
    .line 83
    :goto_1
    iget-wide v13, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->n0:J

    .line 84
    .line 85
    cmp-long v13, v13, v11

    .line 86
    .line 87
    if-gez v13, :cond_4

    .line 88
    .line 89
    iput-wide v11, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->n0:J

    .line 90
    .line 91
    :cond_4
    iput-wide v11, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->o0:J

    .line 92
    .line 93
    iget-object v13, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->z0:Ljava/net/HttpURLConnection;

    .line 94
    .line 95
    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    iput-object v13, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->A0:Ljava/io/InputStream;

    .line 100
    .line 101
    invoke-static {v5, v4}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    iput-object v13, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->B0:Ljava/io/OutputStream;

    .line 106
    .line 107
    new-array v13, v10, [B

    .line 108
    .line 109
    move-wide v14, v11

    .line 110
    :goto_2
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->C()Z

    .line 111
    .line 112
    .line 113
    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    if-nez v16, :cond_a

    .line 115
    .line 116
    const-wide/16 v16, 0x1f4

    .line 117
    .line 118
    :try_start_1
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->A0:Ljava/io/InputStream;

    .line 119
    .line 120
    invoke-virtual {v6, v13, v4, v10}, Ljava/io/InputStream;->read([BII)I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-eq v6, v8, :cond_5

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->C()Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_6

    .line 131
    .line 132
    :cond_5
    move-wide/from16 v18, v11

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_6
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->B0:Ljava/io/OutputStream;

    .line 136
    .line 137
    invoke-virtual {v7, v13, v4, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    .line 139
    .line 140
    move-wide/from16 v18, v11

    .line 141
    .line 142
    :try_start_2
    iget-wide v10, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->o0:J

    .line 143
    .line 144
    int-to-long v6, v6

    .line 145
    add-long/2addr v10, v6

    .line 146
    iput-wide v10, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->o0:J

    .line 147
    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 149
    .line 150
    .line 151
    move-result-wide v6

    .line 152
    cmp-long v10, v14, v18

    .line 153
    .line 154
    if-eqz v10, :cond_7

    .line 155
    .line 156
    sub-long v10, v6, v14

    .line 157
    .line 158
    cmp-long v10, v10, v16

    .line 159
    .line 160
    if-lez v10, :cond_9

    .line 161
    .line 162
    :cond_7
    iget-object v10, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 163
    .line 164
    if-nez v10, :cond_8

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_8
    new-instance v11, Lcom/mycompany/app/dialog/DialogUpdateFilter$6;

    .line 168
    .line 169
    invoke-direct {v11, v0}, Lcom/mycompany/app/dialog/DialogUpdateFilter$6;-><init>(Lcom/mycompany/app/dialog/DialogUpdateFilter;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v10, v11}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 173
    .line 174
    .line 175
    move-wide v14, v6

    .line 176
    :cond_9
    move-wide/from16 v11, v18

    .line 177
    .line 178
    const/16 v10, 0x400

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :catch_1
    move-wide/from16 v18, v11

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_a
    move-wide/from16 v18, v11

    .line 185
    .line 186
    const-wide/16 v16, 0x1f4

    .line 187
    .line 188
    :goto_3
    move v6, v3

    .line 189
    goto :goto_5

    .line 190
    :catch_2
    :goto_4
    move v6, v4

    .line 191
    :goto_5
    if-eqz v6, :cond_36

    .line 192
    .line 193
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->a4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-static {v2}, Lcom/mycompany/app/dialog/DialogSetFilter;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    if-nez v10, :cond_35

    .line 206
    .line 207
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 208
    .line 209
    .line 210
    move-result v10

    .line 211
    if-eqz v10, :cond_b

    .line 212
    .line 213
    move v2, v4

    .line 214
    goto :goto_6

    .line 215
    :cond_b
    const-string v10, "https://cdn.jsdelivr.net/gh/"

    .line 216
    .line 217
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    :goto_6
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->F(Z)V

    .line 222
    .line 223
    .line 224
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    const-string v11, "!#include "

    .line 229
    .line 230
    if-eqz v10, :cond_c

    .line 231
    .line 232
    :goto_7
    const/4 v14, 0x0

    .line 233
    goto/16 :goto_d

    .line 234
    .line 235
    :cond_c
    :try_start_3
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->a1(Ljava/lang/String;)Ljava/io/InputStream;

    .line 236
    .line 237
    .line 238
    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 239
    :try_start_4
    new-instance v13, Ljava/io/BufferedReader;

    .line 240
    .line 241
    new-instance v14, Ljava/io/InputStreamReader;

    .line 242
    .line 243
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 244
    .line 245
    invoke-direct {v14, v10, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 246
    .line 247
    .line 248
    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 249
    .line 250
    .line 251
    move v15, v4

    .line 252
    move/from16 v20, v15

    .line 253
    .line 254
    const/4 v14, 0x0

    .line 255
    :goto_8
    :try_start_5
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v21

    .line 259
    if-eqz v21, :cond_14

    .line 260
    .line 261
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->C()Z

    .line 262
    .line 263
    .line 264
    move-result v22

    .line 265
    if-eqz v22, :cond_d

    .line 266
    .line 267
    goto :goto_c

    .line 268
    :cond_d
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v12

    .line 272
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 273
    .line 274
    .line 275
    move-result v21

    .line 276
    if-eqz v21, :cond_e

    .line 277
    .line 278
    goto :goto_a

    .line 279
    :cond_e
    const-string v8, "!#if"

    .line 280
    .line 281
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v8

    .line 285
    if-eqz v8, :cond_f

    .line 286
    .line 287
    const-string v8, "android"

    .line 288
    .line 289
    invoke-virtual {v12, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    xor-int/lit8 v20, v8, 0x1

    .line 294
    .line 295
    :goto_9
    const/4 v8, -0x1

    .line 296
    goto :goto_8

    .line 297
    :cond_f
    const-string v8, "!#endif"

    .line 298
    .line 299
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    move-result v8

    .line 303
    if-eqz v8, :cond_10

    .line 304
    .line 305
    move/from16 v20, v4

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_10
    if-eqz v20, :cond_11

    .line 309
    .line 310
    :goto_a
    goto :goto_9

    .line 311
    :cond_11
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 312
    .line 313
    .line 314
    move-result v8

    .line 315
    if-eqz v8, :cond_12

    .line 316
    .line 317
    move v15, v3

    .line 318
    :cond_12
    if-nez v14, :cond_13

    .line 319
    .line 320
    new-instance v8, Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .line 324
    .line 325
    move-object v14, v8

    .line 326
    :cond_13
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 327
    .line 328
    .line 329
    goto :goto_9

    .line 330
    :catch_3
    move v15, v4

    .line 331
    :goto_b
    const/4 v13, 0x0

    .line 332
    const/4 v14, 0x0

    .line 333
    goto :goto_c

    .line 334
    :catch_4
    move v15, v4

    .line 335
    const/4 v10, 0x0

    .line 336
    goto :goto_b

    .line 337
    :catch_5
    :cond_14
    :goto_c
    if-eqz v13, :cond_15

    .line 338
    .line 339
    :try_start_6
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 340
    .line 341
    .line 342
    :catch_6
    :cond_15
    if-eqz v10, :cond_16

    .line 343
    .line 344
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 345
    .line 346
    .line 347
    :catch_7
    :cond_16
    if-nez v15, :cond_17

    .line 348
    .line 349
    goto :goto_7

    .line 350
    :cond_17
    :goto_d
    if-eqz v14, :cond_34

    .line 351
    .line 352
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 353
    .line 354
    .line 355
    move-result v8

    .line 356
    if-eqz v8, :cond_18

    .line 357
    .line 358
    goto/16 :goto_24

    .line 359
    .line 360
    :cond_18
    const-string v8, "kr1"

    .line 361
    .line 362
    invoke-static {v5, v8}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v8

    .line 366
    new-instance v10, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v12, "kr2"

    .line 375
    .line 376
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v10

    .line 383
    invoke-static {v1, v8}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 384
    .line 385
    .line 386
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 387
    .line 388
    .line 389
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 390
    .line 391
    .line 392
    move-result v12

    .line 393
    if-eqz v12, :cond_19

    .line 394
    .line 395
    move v15, v4

    .line 396
    goto :goto_13

    .line 397
    :cond_19
    :try_start_8
    invoke-static {v8, v4}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 398
    .line 399
    .line 400
    move-result-object v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    .line 401
    :try_start_9
    new-instance v13, Ljava/io/BufferedWriter;

    .line 402
    .line 403
    new-instance v15, Ljava/io/OutputStreamWriter;

    .line 404
    .line 405
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 406
    .line 407
    invoke-direct {v15, v12, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 408
    .line 409
    .line 410
    invoke-direct {v13, v15}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 411
    .line 412
    .line 413
    :try_start_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 414
    .line 415
    .line 416
    move-result v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 417
    const/4 v9, 0x0

    .line 418
    const/4 v15, 0x0

    .line 419
    :goto_e
    if-ge v9, v4, :cond_1d

    .line 420
    .line 421
    :try_start_b
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v23

    .line 425
    add-int/lit8 v9, v9, 0x1

    .line 426
    .line 427
    move-object/from16 v3, v23

    .line 428
    .line 429
    check-cast v3, Ljava/lang/String;

    .line 430
    .line 431
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->C()Z

    .line 432
    .line 433
    .line 434
    move-result v23

    .line 435
    if-eqz v23, :cond_1a

    .line 436
    .line 437
    goto :goto_12

    .line 438
    :cond_1a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 439
    .line 440
    .line 441
    move-result v23

    .line 442
    if-eqz v23, :cond_1b

    .line 443
    .line 444
    goto :goto_f

    .line 445
    :cond_1b
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 446
    .line 447
    .line 448
    move-result v23

    .line 449
    if-eqz v23, :cond_1c

    .line 450
    .line 451
    :goto_f
    const/4 v3, 0x1

    .line 452
    goto :goto_e

    .line 453
    :cond_1c
    invoke-virtual {v13, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    const-string v3, "\n"

    .line 457
    .line 458
    invoke-virtual {v13, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 459
    .line 460
    .line 461
    const/4 v3, 0x1

    .line 462
    const/4 v15, 0x1

    .line 463
    goto :goto_e

    .line 464
    :catch_8
    :goto_10
    const/4 v15, 0x0

    .line 465
    goto :goto_12

    .line 466
    :catch_9
    :goto_11
    const/4 v13, 0x0

    .line 467
    goto :goto_10

    .line 468
    :catch_a
    const/4 v12, 0x0

    .line 469
    goto :goto_11

    .line 470
    :catch_b
    :cond_1d
    :goto_12
    if-eqz v13, :cond_1e

    .line 471
    .line 472
    :try_start_c
    invoke-virtual {v13}, Ljava/io/BufferedWriter;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 473
    .line 474
    .line 475
    :catch_c
    :cond_1e
    if-eqz v12, :cond_1f

    .line 476
    .line 477
    :try_start_d
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 478
    .line 479
    .line 480
    :catch_d
    :cond_1f
    const/4 v3, 0x1

    .line 481
    :goto_13
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->C0:Z

    .line 482
    .line 483
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    const/4 v4, 0x0

    .line 488
    const/4 v9, 0x0

    .line 489
    :goto_14
    if-ge v4, v3, :cond_30

    .line 490
    .line 491
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v12

    .line 495
    add-int/lit8 v4, v4, 0x1

    .line 496
    .line 497
    check-cast v12, Ljava/lang/String;

    .line 498
    .line 499
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 500
    .line 501
    .line 502
    move-result v13

    .line 503
    if-eqz v13, :cond_20

    .line 504
    .line 505
    :goto_15
    move/from16 p3, v2

    .line 506
    .line 507
    :goto_16
    move/from16 p2, v3

    .line 508
    .line 509
    const/4 v2, 0x0

    .line 510
    const/4 v13, 0x1

    .line 511
    goto/16 :goto_21

    .line 512
    .line 513
    :cond_20
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 514
    .line 515
    .line 516
    move-result v13

    .line 517
    if-nez v13, :cond_21

    .line 518
    .line 519
    goto :goto_15

    .line 520
    :cond_21
    const/16 v13, 0xa

    .line 521
    .line 522
    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v12

    .line 526
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 527
    .line 528
    .line 529
    move-result v13

    .line 530
    if-eqz v13, :cond_22

    .line 531
    .line 532
    goto :goto_15

    .line 533
    :cond_22
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v12

    .line 537
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 538
    .line 539
    .line 540
    move-result v13

    .line 541
    if-eqz v13, :cond_23

    .line 542
    .line 543
    goto :goto_15

    .line 544
    :cond_23
    const/4 v13, 0x1

    .line 545
    invoke-virtual {v0, v13}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->F(Z)V

    .line 546
    .line 547
    .line 548
    new-instance v13, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .line 552
    .line 553
    if-eqz v2, :cond_24

    .line 554
    .line 555
    move/from16 p3, v2

    .line 556
    .line 557
    const-string v2, "https://cdn.jsdelivr.net/gh/List-KR/List-KR@"

    .line 558
    .line 559
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    goto :goto_17

    .line 563
    :cond_24
    move/from16 p3, v2

    .line 564
    .line 565
    const-string v2, "https://raw.githubusercontent.com/List-KR/List-KR/"

    .line 566
    .line 567
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    :goto_17
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->m1(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->z0:Ljava/net/HttpURLConnection;

    .line 585
    .line 586
    if-nez v2, :cond_25

    .line 587
    .line 588
    goto :goto_16

    .line 589
    :cond_25
    const/4 v13, 0x1

    .line 590
    :try_start_e
    invoke-virtual {v2, v13}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 591
    .line 592
    .line 593
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->z0:Ljava/net/HttpURLConnection;

    .line 594
    .line 595
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 596
    .line 597
    .line 598
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 599
    .line 600
    const/16 v12, 0x18

    .line 601
    .line 602
    if-lt v2, v12, :cond_26

    .line 603
    .line 604
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->z0:Ljava/net/HttpURLConnection;

    .line 605
    .line 606
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    .line 607
    .line 608
    .line 609
    move-result-wide v12

    .line 610
    iput-wide v12, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->n0:J

    .line 611
    .line 612
    goto :goto_18

    .line 613
    :catch_e
    move/from16 p2, v3

    .line 614
    .line 615
    goto/16 :goto_1f

    .line 616
    .line 617
    :cond_26
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->z0:Ljava/net/HttpURLConnection;

    .line 618
    .line 619
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    .line 620
    .line 621
    .line 622
    move-result v2

    .line 623
    int-to-long v12, v2

    .line 624
    iput-wide v12, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->n0:J

    .line 625
    .line 626
    :goto_18
    iget-wide v12, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->n0:J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 627
    .line 628
    cmp-long v2, v12, v18

    .line 629
    .line 630
    if-gez v2, :cond_27

    .line 631
    .line 632
    move-wide/from16 v12, v18

    .line 633
    .line 634
    :try_start_f
    iput-wide v12, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->n0:J

    .line 635
    .line 636
    goto :goto_19

    .line 637
    :catch_f
    move/from16 p2, v3

    .line 638
    .line 639
    move-wide/from16 v18, v12

    .line 640
    .line 641
    goto/16 :goto_1f

    .line 642
    .line 643
    :cond_27
    move-wide/from16 v12, v18

    .line 644
    .line 645
    :goto_19
    iput-wide v12, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->o0:J
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 646
    .line 647
    :try_start_10
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->z0:Ljava/net/HttpURLConnection;

    .line 648
    .line 649
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->A0:Ljava/io/InputStream;

    .line 654
    .line 655
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->B0:Ljava/io/OutputStream;

    .line 656
    .line 657
    if-nez v2, :cond_28

    .line 658
    .line 659
    const/4 v2, 0x0

    .line 660
    invoke-static {v10, v2}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 661
    .line 662
    .line 663
    move-result-object v12

    .line 664
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->B0:Ljava/io/OutputStream;

    .line 665
    .line 666
    :cond_28
    const/16 v2, 0x400

    .line 667
    .line 668
    goto :goto_1a

    .line 669
    :catch_10
    move/from16 p2, v3

    .line 670
    .line 671
    :catch_11
    const-wide/16 v18, 0x0

    .line 672
    .line 673
    goto :goto_1f

    .line 674
    :goto_1a
    new-array v12, v2, [B

    .line 675
    .line 676
    const-wide/16 v25, 0x0

    .line 677
    .line 678
    :goto_1b
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->C()Z

    .line 679
    .line 680
    .line 681
    move-result v13

    .line 682
    if-nez v13, :cond_2e

    .line 683
    .line 684
    iget-object v13, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->A0:Ljava/io/InputStream;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 685
    .line 686
    move/from16 p2, v3

    .line 687
    .line 688
    const/4 v3, 0x0

    .line 689
    :try_start_11
    invoke-virtual {v13, v12, v3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 690
    .line 691
    .line 692
    move-result v13

    .line 693
    const/4 v2, -0x1

    .line 694
    if-eq v13, v2, :cond_29

    .line 695
    .line 696
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->C()Z

    .line 697
    .line 698
    .line 699
    move-result v20

    .line 700
    if-eqz v20, :cond_2a

    .line 701
    .line 702
    :cond_29
    :goto_1c
    const-wide/16 v18, 0x0

    .line 703
    .line 704
    goto :goto_1d

    .line 705
    :cond_2a
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->B0:Ljava/io/OutputStream;

    .line 706
    .line 707
    invoke-virtual {v2, v12, v3, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 708
    .line 709
    .line 710
    iget-wide v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->o0:J

    .line 711
    .line 712
    move-wide/from16 v27, v2

    .line 713
    .line 714
    int-to-long v2, v13

    .line 715
    add-long v2, v27, v2

    .line 716
    .line 717
    iput-wide v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->o0:J

    .line 718
    .line 719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 720
    .line 721
    .line 722
    move-result-wide v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 723
    const-wide/16 v18, 0x0

    .line 724
    .line 725
    cmp-long v13, v25, v18

    .line 726
    .line 727
    if-eqz v13, :cond_2b

    .line 728
    .line 729
    sub-long v27, v2, v25

    .line 730
    .line 731
    cmp-long v13, v27, v16

    .line 732
    .line 733
    if-lez v13, :cond_2d

    .line 734
    .line 735
    :cond_2b
    :try_start_12
    iget-object v13, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 736
    .line 737
    if-nez v13, :cond_2c

    .line 738
    .line 739
    goto :goto_1d

    .line 740
    :cond_2c
    move-wide/from16 v25, v2

    .line 741
    .line 742
    new-instance v2, Lcom/mycompany/app/dialog/DialogUpdateFilter$8;

    .line 743
    .line 744
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogUpdateFilter$8;-><init>(Lcom/mycompany/app/dialog/DialogUpdateFilter;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v13, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    .line 748
    .line 749
    .line 750
    :cond_2d
    move/from16 v3, p2

    .line 751
    .line 752
    const/16 v2, 0x400

    .line 753
    .line 754
    goto :goto_1b

    .line 755
    :cond_2e
    move/from16 p2, v3

    .line 756
    .line 757
    goto :goto_1c

    .line 758
    :goto_1d
    const/16 v24, 0x1

    .line 759
    .line 760
    :goto_1e
    const/4 v13, 0x1

    .line 761
    goto :goto_20

    .line 762
    :catch_12
    :goto_1f
    const/16 v24, 0x0

    .line 763
    .line 764
    goto :goto_1e

    .line 765
    :goto_20
    invoke-virtual {v0, v13}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->F(Z)V

    .line 766
    .line 767
    .line 768
    move/from16 v2, v24

    .line 769
    .line 770
    :goto_21
    if-eqz v2, :cond_2f

    .line 771
    .line 772
    move v9, v13

    .line 773
    :cond_2f
    move/from16 v3, p2

    .line 774
    .line 775
    move/from16 v2, p3

    .line 776
    .line 777
    goto/16 :goto_14

    .line 778
    .line 779
    :cond_30
    const/4 v2, 0x0

    .line 780
    const/4 v13, 0x1

    .line 781
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->C0:Z

    .line 782
    .line 783
    invoke-virtual {v0, v13}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->F(Z)V

    .line 784
    .line 785
    .line 786
    if-eqz v9, :cond_33

    .line 787
    .line 788
    if-eqz v15, :cond_31

    .line 789
    .line 790
    invoke-static {v1, v8, v10}, Lcom/mycompany/app/main/MainUtil;->v6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 791
    .line 792
    .line 793
    move-result v15

    .line 794
    :cond_31
    if-eqz v15, :cond_32

    .line 795
    .line 796
    invoke-static {v1, v8, v6}, Lcom/mycompany/app/main/MainUtil;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 797
    .line 798
    .line 799
    move-result v2

    .line 800
    goto :goto_22

    .line 801
    :cond_32
    invoke-static {v1, v10, v6}, Lcom/mycompany/app/main/MainUtil;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 802
    .line 803
    .line 804
    move-result v2

    .line 805
    goto :goto_22

    .line 806
    :cond_33
    invoke-static {v1, v5, v6}, Lcom/mycompany/app/main/MainUtil;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 807
    .line 808
    .line 809
    move-result v2

    .line 810
    :goto_22
    invoke-static {v1, v8}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 811
    .line 812
    .line 813
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 814
    .line 815
    .line 816
    :goto_23
    move v6, v2

    .line 817
    goto :goto_25

    .line 818
    :cond_34
    :goto_24
    invoke-static {v1, v5, v6}, Lcom/mycompany/app/main/MainUtil;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 819
    .line 820
    .line 821
    move-result v2

    .line 822
    goto :goto_23

    .line 823
    :cond_35
    invoke-static {v1, v5, v6}, Lcom/mycompany/app/main/MainUtil;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 824
    .line 825
    .line 826
    move-result v6

    .line 827
    :cond_36
    :goto_25
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 828
    .line 829
    .line 830
    const/4 v13, 0x1

    .line 831
    invoke-virtual {v0, v13}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->F(Z)V

    .line 832
    .line 833
    .line 834
    return v6
.end method

.method public final F(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->C0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->B0:Ljava/io/OutputStream;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->B0:Ljava/io/OutputStream;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->A0:Ljava/io/InputStream;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 20
    .line 21
    .line 22
    :catch_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->A0:Ljava/io/InputStream;

    .line 23
    .line 24
    :cond_1
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->z0:Ljava/net/HttpURLConnection;

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->z0:Ljava/net/HttpURLConnection;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->z0:Ljava/net/HttpURLConnection;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->z0:Ljava/net/HttpURLConnection;

    .line 39
    .line 40
    if-nez p1, :cond_4

    .line 41
    .line 42
    :cond_3
    :goto_0
    return-void

    .line 43
    :cond_4
    new-instance v0, Lcom/mycompany/app/dialog/DialogUpdateFilter$7;

    .line 44
    .line 45
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogUpdateFilter$7;-><init>(Ljava/net/HttpURLConnection;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->D()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dismiss()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->F(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->t0:Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 18
    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->t0:Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->y0:Z

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 31
    .line 32
    .line 33
    :cond_2
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 34
    .line 35
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 43
    .line 44
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->e0:Lcom/mycompany/app/view/MyLineRelative;

    .line 45
    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineRelative;->e()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->e0:Lcom/mycompany/app/view/MyLineRelative;

    .line 52
    .line 53
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 54
    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 61
    .line 62
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->q0:Lcom/mycompany/app/view/MyCoverView;

    .line 63
    .line 64
    if-eqz v1, :cond_7

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->q0:Lcom/mycompany/app/view/MyCoverView;

    .line 70
    .line 71
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->r0:Lcom/mycompany/app/view/MyLineText;

    .line 72
    .line 73
    if-eqz v1, :cond_8

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->r0:Lcom/mycompany/app/view/MyLineText;

    .line 79
    .line 80
    :cond_8
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->a0:Landroid/content/Context;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->c0:Ljava/util/List;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->i0:Landroid/widget/RelativeLayout;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->j0:Landroid/widget/FrameLayout;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 103
    .line 104
    .line 105
    return-void
.end method
