.class public Lcom/mycompany/app/dialog/DialogUpdateScript;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;
    }
.end annotation


# instance fields
.field public A0:Ljava/io/InputStream;

.field public B0:Lcom/mycompany/app/script/UnicodeReader;

.field public C0:J

.field public D0:Ljava/lang/String;

.field public E0:Ljava/lang/String;

.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

.field public final c0:Z

.field public d0:Ljava/util/List;

.field public e0:Lcom/mycompany/app/view/MyDialogLinear;

.field public f0:Lcom/mycompany/app/view/MyLineRelative;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Landroid/widget/RelativeLayout;

.field public k0:Landroid/widget/FrameLayout;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Landroidx/appcompat/widget/AppCompatTextView;

.field public n0:Lcom/mycompany/app/view/MyProgressBar;

.field public o0:J

.field public p0:J

.field public q0:Landroidx/appcompat/widget/AppCompatTextView;

.field public r0:Lcom/mycompany/app/view/MyCoverView;

.field public s0:Lcom/mycompany/app/view/MyLineText;

.field public t0:Landroidx/appcompat/widget/AppCompatTextView;

.field public u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

.field public v0:I

.field public w0:Z

.field public x0:Z

.field public y0:Z

.field public z0:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->b0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    new-instance p3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 23
    .line 24
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p4, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->a0:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {p1, p4}, Lcom/mycompany/app/main/MainUtil;->Z3(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->c0:Z

    .line 39
    .line 40
    :cond_0
    if-eqz p3, :cond_1

    .line 41
    .line 42
    new-instance p2, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->d0:Ljava/util/List;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 53
    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogUpdateScript$1;

    .line 58
    .line 59
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogUpdateScript$1;-><init>(Lcom/mycompany/app/dialog/DialogUpdateScript;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogUpdateScript;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->a0:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->v0:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    add-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->v0:I

    .line 11
    .line 12
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->d0:Ljava/util/List;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

    .line 30
    .line 31
    new-instance v0, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogUpdateScript;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->a0:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->a0:Landroid/content/Context;

    .line 45
    .line 46
    sget v1, Lnet/kaki87/soul2/testing/R$string;->success:I

    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogUpdateScript;->dismiss()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogUpdateScript;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogUpdateScript;->F(Z)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->m1(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->z0:Ljava/net/HttpURLConnection;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    :goto_0
    return-object v1

    .line 18
    :cond_1
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->z0:Ljava/net/HttpURLConnection;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 24
    .line 25
    .line 26
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 p2, 0x18

    .line 29
    .line 30
    if-lt p1, p2, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->z0:Ljava/net/HttpURLConnection;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    iput-wide p1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->o0:J

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->z0:Ljava/net/HttpURLConnection;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    int-to-long p1, p1

    .line 48
    iput-wide p1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->o0:J

    .line 49
    .line 50
    :goto_1
    iget-wide p1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->o0:J

    .line 51
    .line 52
    const-wide/16 v2, 0x0

    .line 53
    .line 54
    cmp-long p1, p1, v2

    .line 55
    .line 56
    if-gez p1, :cond_3

    .line 57
    .line 58
    iput-wide v2, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->o0:J

    .line 59
    .line 60
    :cond_3
    iput-wide v2, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->p0:J

    .line 61
    .line 62
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->z0:Ljava/net/HttpURLConnection;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->A0:Ljava/io/InputStream;

    .line 69
    .line 70
    new-instance p1, Lcom/mycompany/app/script/UnicodeReader;

    .line 71
    .line 72
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->A0:Ljava/io/InputStream;

    .line 73
    .line 74
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->z0:Ljava/net/HttpURLConnection;

    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-direct {p1, p2, v4}, Lcom/mycompany/app/script/UnicodeReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->B0:Lcom/mycompany/app/script/UnicodeReader;

    .line 84
    .line 85
    const/16 p1, 0x1000

    .line 86
    .line 87
    new-array p2, p1, [C

    .line 88
    .line 89
    move-object v4, v1

    .line 90
    move-wide v5, v2

    .line 91
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogUpdateScript;->D()Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-nez v7, :cond_a

    .line 96
    .line 97
    iget-object v7, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->B0:Lcom/mycompany/app/script/UnicodeReader;

    .line 98
    .line 99
    iget-object v7, v7, Lcom/mycompany/app/script/UnicodeReader;->c:Ljava/io/InputStreamReader;

    .line 100
    .line 101
    const/4 v8, 0x0

    .line 102
    invoke-virtual {v7, p2, v8, p1}, Ljava/io/InputStreamReader;->read([CII)I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    const/4 v9, -0x1

    .line 107
    if-eq v7, v9, :cond_a

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogUpdateScript;->D()Z

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-eqz v9, :cond_5

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    if-lez v7, :cond_7

    .line 117
    .line 118
    if-nez v4, :cond_6

    .line 119
    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    :cond_6
    invoke-virtual {v4, p2, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    :cond_7
    iget-wide v8, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->p0:J

    .line 129
    .line 130
    int-to-long v10, v7

    .line 131
    add-long/2addr v8, v10

    .line 132
    iput-wide v8, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->p0:J

    .line 133
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v7

    .line 138
    cmp-long v9, v5, v2

    .line 139
    .line 140
    if-eqz v9, :cond_8

    .line 141
    .line 142
    sub-long v9, v7, v5

    .line 143
    .line 144
    const-wide/16 v11, 0x1f4

    .line 145
    .line 146
    cmp-long v9, v9, v11

    .line 147
    .line 148
    if-lez v9, :cond_4

    .line 149
    .line 150
    :cond_8
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->n0:Lcom/mycompany/app/view/MyProgressBar;

    .line 151
    .line 152
    if-nez v5, :cond_9

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_9
    new-instance v6, Lcom/mycompany/app/dialog/DialogUpdateScript$6;

    .line 156
    .line 157
    invoke-direct {v6, p0}, Lcom/mycompany/app/dialog/DialogUpdateScript$6;-><init>(Lcom/mycompany/app/dialog/DialogUpdateScript;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 161
    .line 162
    .line 163
    move-wide v5, v7

    .line 164
    goto :goto_2

    .line 165
    :cond_a
    :goto_3
    if-eqz v4, :cond_b

    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :catch_0
    :cond_b
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogUpdateScript;->F(Z)V

    .line 172
    .line 173
    .line 174
    return-object v1
.end method


# virtual methods
.method public final D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->y0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

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

.method public final E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    sget v2, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->t0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->y0:Z

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogUpdateScript;->F(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogUpdateScript;->dismiss()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final F(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->B0:Lcom/mycompany/app/script/UnicodeReader;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Lcom/mycompany/app/script/UnicodeReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->B0:Lcom/mycompany/app/script/UnicodeReader;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->A0:Ljava/io/InputStream;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 16
    .line 17
    .line 18
    :catch_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->A0:Ljava/io/InputStream;

    .line 19
    .line 20
    :cond_1
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->z0:Ljava/net/HttpURLConnection;

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->z0:Ljava/net/HttpURLConnection;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->z0:Ljava/net/HttpURLConnection;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->z0:Ljava/net/HttpURLConnection;

    .line 35
    .line 36
    if-nez p1, :cond_4

    .line 37
    .line 38
    :cond_3
    :goto_0
    return-void

    .line 39
    :cond_4
    new-instance v0, Lcom/mycompany/app/dialog/DialogUpdateScript$7;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogUpdateScript$7;-><init>(Ljava/net/HttpURLConnection;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogUpdateScript;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dismiss()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogUpdateScript;->F(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->b0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    iget-wide v2, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->C0:J

    .line 27
    .line 28
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    cmp-long v4, v2, v4

    .line 31
    .line 32
    if-lez v4, :cond_2

    .line 33
    .line 34
    invoke-interface {v1, v2, v3, v0, v0}, Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->b0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 38
    .line 39
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 47
    .line 48
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->f0:Lcom/mycompany/app/view/MyLineRelative;

    .line 49
    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineRelative;->e()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->f0:Lcom/mycompany/app/view/MyLineRelative;

    .line 56
    .line 57
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->n0:Lcom/mycompany/app/view/MyProgressBar;

    .line 58
    .line 59
    if-eqz v1, :cond_6

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->n0:Lcom/mycompany/app/view/MyProgressBar;

    .line 65
    .line 66
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->r0:Lcom/mycompany/app/view/MyCoverView;

    .line 67
    .line 68
    if-eqz v1, :cond_7

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->r0:Lcom/mycompany/app/view/MyCoverView;

    .line 74
    .line 75
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 76
    .line 77
    if-eqz v1, :cond_8

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 83
    .line 84
    :cond_8
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->a0:Landroid/content/Context;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->d0:Ljava/util/List;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->j0:Landroid/widget/RelativeLayout;

    .line 95
    .line 96
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->k0:Landroid/widget/FrameLayout;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->D0:Ljava/lang/String;

    .line 107
    .line 108
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript;->E0:Ljava/lang/String;

    .line 109
    .line 110
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 111
    .line 112
    .line 113
    return-void
.end method
