.class Lcom/mycompany/app/web/WebGridDialog$TypeTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebGridDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/util/List;

.field public g:Ljava/util/ArrayList;

.field public final h:I


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebGridDialog;Ljava/util/List;I)V
    .locals 4

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
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/web/WebGridDialog;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->f:Ljava/util/List;

    .line 21
    .line 22
    iput p3, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->h:I

    .line 23
    .line 24
    iget-object p2, p1, Lcom/mycompany/app/web/WebGridDialog;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 25
    .line 26
    const/4 p3, 0x0

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyCoverView;->setBackColor(I)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p1, Lcom/mycompany/app/web/WebGridDialog;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 33
    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    .line 36
    const-wide/16 v1, 0xc8

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-virtual {p2, v3, v0, v1, v2}, Lcom/mycompany/app/view/MyCoverView;->n(ZFJ)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p1, p1, Lcom/mycompany/app/web/WebGridDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/web/WebGridDialog;

    .line 12
    .line 13
    if-eqz v0, :cond_b

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_1
    iget v0, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->h:I

    .line 22
    .line 23
    if-eqz v0, :cond_b

    .line 24
    .line 25
    iget-object v1, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->f:Ljava/util/List;

    .line 26
    .line 27
    if-eqz v1, :cond_b

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_2
    const/16 v2, 0x7e

    .line 38
    .line 39
    if-ne v0, v2, :cond_3

    .line 40
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->g:Ljava/util/ArrayList;

    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v2, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->g:Ljava/util/ArrayList;

    .line 55
    .line 56
    new-instance v2, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v3, 0x0

    .line 66
    :cond_4
    :goto_0
    if-ge v3, v1, :cond_b

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    check-cast v4, Ljava/lang/String;

    .line 75
    .line 76
    iget-boolean v5, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 77
    .line 78
    if-eqz v5, :cond_5

    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :cond_5
    const/4 v5, 0x1

    .line 83
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->W3(Ljava/lang/String;Z)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_6

    .line 92
    .line 93
    and-int/lit8 v5, v0, 0x40

    .line 94
    .line 95
    const/16 v6, 0x40

    .line 96
    .line 97
    if-ne v5, v6, :cond_4

    .line 98
    .line 99
    iget-object v5, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->g:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    const-string v6, "jpg"

    .line 106
    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-eqz v6, :cond_7

    .line 112
    .line 113
    and-int/lit8 v5, v0, 0x2

    .line 114
    .line 115
    const/4 v6, 0x2

    .line 116
    if-ne v5, v6, :cond_4

    .line 117
    .line 118
    iget-object v5, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->g:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_7
    const-string v6, "png"

    .line 125
    .line 126
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_8

    .line 131
    .line 132
    and-int/lit8 v5, v0, 0x4

    .line 133
    .line 134
    const/4 v6, 0x4

    .line 135
    if-ne v5, v6, :cond_4

    .line 136
    .line 137
    iget-object v5, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->g:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_8
    const-string v6, "gif"

    .line 144
    .line 145
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_9

    .line 150
    .line 151
    and-int/lit8 v5, v0, 0x8

    .line 152
    .line 153
    const/16 v6, 0x8

    .line 154
    .line 155
    if-ne v5, v6, :cond_4

    .line 156
    .line 157
    iget-object v5, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->g:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_9
    const-string v6, "webp"

    .line 164
    .line 165
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-eqz v5, :cond_a

    .line 170
    .line 171
    and-int/lit8 v5, v0, 0x10

    .line 172
    .line 173
    const/16 v6, 0x10

    .line 174
    .line 175
    if-ne v5, v6, :cond_4

    .line 176
    .line 177
    iget-object v5, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->g:Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_a
    and-int/lit8 v5, v0, 0x20

    .line 184
    .line 185
    const/16 v6, 0x20

    .line 186
    .line 187
    if-ne v5, v6, :cond_4

    .line 188
    .line 189
    iget-object v5, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->g:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_b
    :goto_1
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/web/WebGridDialog;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->k0:Lcom/mycompany/app/web/WebGridDialog$TypeTask;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridDialog;->y()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setIncrease(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridDialog;->E()V

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/web/WebGridDialog;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->k0:Lcom/mycompany/app/web/WebGridDialog$TypeTask;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Z:Lcom/mycompany/app/web/WebGridAdapter;

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_2
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    if-nez v1, :cond_6

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iget-object v3, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->f:Ljava/util/List;

    .line 31
    .line 32
    if-nez v3, :cond_3

    .line 33
    .line 34
    move v3, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    :goto_0
    iget-object v4, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->g:Ljava/util/ArrayList;

    .line 41
    .line 42
    if-nez v4, :cond_4

    .line 43
    .line 44
    move v4, v1

    .line 45
    goto :goto_1

    .line 46
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    :goto_1
    if-le v3, v4, :cond_5

    .line 51
    .line 52
    sub-int/2addr v3, v4

    .line 53
    iput v3, v0, Lcom/mycompany/app/web/WebGridDialog;->n0:I

    .line 54
    .line 55
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 56
    .line 57
    iget-object v4, v0, Lcom/mycompany/app/web/WebGridDialog;->H:Landroid/content/Context;

    .line 58
    .line 59
    sget v5, Lnet/kaki87/soul2/testing/R$string;->filtered_image:I

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget v5, v0, Lcom/mycompany/app/web/WebGridDialog;->n0:I

    .line 66
    .line 67
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    new-array v6, v2, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v5, v6, v1

    .line 74
    .line 75
    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v3, v0, Lcom/mycompany/app/web/WebGridDialog;->H:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {v3, v1}, Lcom/mycompany/app/main/MainUtil;->f8(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Z:Lcom/mycompany/app/web/WebGridAdapter;

    .line 85
    .line 86
    iget-object v3, p0, Lcom/mycompany/app/web/WebGridDialog$TypeTask;->g:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Lcom/mycompany/app/web/WebGridAdapter;->F(Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 92
    .line 93
    if-eqz v1, :cond_7

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 96
    .line 97
    .line 98
    :cond_7
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridDialog;->y()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_8

    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 110
    .line 111
    const/4 v2, 0x2

    .line 112
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setIncrease(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridDialog;->E()V

    .line 116
    .line 117
    .line 118
    :cond_8
    :goto_2
    return-void
.end method
