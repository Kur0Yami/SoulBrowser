.class Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogFileDelete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogFileDelete;)V
    .locals 2

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogFileDelete;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogFileDelete;->c0:Ljava/util/List;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;->f:Ljava/util/List;

    .line 23
    .line 24
    new-instance v0, Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;-><init>(Lcom/mycompany/app/dialog/DialogFileDelete;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogFileDelete;->B0:Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput v0, p1, Lcom/mycompany/app/dialog/DialogFileDelete;->C0:I

    .line 33
    .line 34
    iput v0, p1, Lcom/mycompany/app/dialog/DialogFileDelete;->D0:I

    .line 35
    .line 36
    iput v0, p1, Lcom/mycompany/app/dialog/DialogFileDelete;->E0:I

    .line 37
    .line 38
    const-wide/16 v0, 0x0

    .line 39
    .line 40
    iput-wide v0, p1, Lcom/mycompany/app/dialog/DialogFileDelete;->F0:J

    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iput-wide v0, p1, Lcom/mycompany/app/dialog/DialogFileDelete;->G0:J

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogFileDelete;->I0:Ljava/lang/String;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogFileDelete;->f0:Lcom/mycompany/app/dialog/DialogFileDelete$FileDeleteListener;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-interface {p1}, Lcom/mycompany/app/dialog/DialogFileDelete$FileDeleteListener;->a()V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogFileDelete;

    .line 12
    .line 13
    if-eqz v0, :cond_b

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;->f:Ljava/util/List;

    .line 22
    .line 23
    if-eqz v1, :cond_b

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;->f:Ljava/util/List;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;->f:Ljava/util/List;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iput v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->C0:I

    .line 47
    .line 48
    int-to-long v1, v1

    .line 49
    iput-wide v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->F0:J

    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->B0:Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;->f:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_b

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 76
    .line 77
    iget-boolean v4, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 78
    .line 79
    if-eqz v4, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    iget-object v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_5

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    iget-object v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->B0:Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;

    .line 96
    .line 97
    if-nez v6, :cond_6

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    new-instance v6, Lcom/mycompany/app/dialog/DialogFileDelete$CopyInfo;

    .line 101
    .line 102
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v4, v6, Lcom/mycompany/app/dialog/DialogFileDelete$CopyInfo;->a:Ljava/lang/String;

    .line 106
    .line 107
    iput-object v5, v6, Lcom/mycompany/app/dialog/DialogFileDelete$CopyInfo;->b:Ljava/lang/String;

    .line 108
    .line 109
    new-instance v4, Landroid/os/Message;

    .line 110
    .line 111
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 112
    .line 113
    .line 114
    const/4 v5, 0x0

    .line 115
    iput v5, v4, Landroid/os/Message;->what:I

    .line 116
    .line 117
    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    .line 119
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->B0:Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;

    .line 120
    .line 121
    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    .line 123
    .line 124
    :goto_1
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->a0:Landroid/content/Context;

    .line 125
    .line 126
    iget-object v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-nez v4, :cond_7

    .line 133
    .line 134
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->a0:Landroid/content/Context;

    .line 135
    .line 136
    iget-object v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->h6(Landroid/content/Context;Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    xor-int/2addr v4, v2

    .line 143
    :cond_7
    if-eqz v4, :cond_8

    .line 144
    .line 145
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->a0:Landroid/content/Context;

    .line 146
    .line 147
    iget v6, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->b0:I

    .line 148
    .line 149
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v5, v6, v3}, Lcom/mycompany/app/data/DataUtil;->c(Landroid/content/Context;ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_8
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->B0:Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;

    .line 155
    .line 156
    if-nez v3, :cond_9

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_9
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    .line 161
    .line 162
    iget v3, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->D0:I

    .line 163
    .line 164
    add-int/2addr v3, v2

    .line 165
    iput v3, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->D0:I

    .line 166
    .line 167
    if-nez v4, :cond_a

    .line 168
    .line 169
    iget v3, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->E0:I

    .line 170
    .line 171
    add-int/2addr v3, v2

    .line 172
    iput v3, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->E0:I

    .line 173
    .line 174
    :cond_a
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->B0:Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;

    .line 175
    .line 176
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_b
    :goto_2
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogFileDelete;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->A0:Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;

    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->B0:Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->B0:Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->B0:Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;

    .line 33
    .line 34
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->f0:Lcom/mycompany/app/dialog/DialogFileDelete$FileDeleteListener;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-interface {v0, v3}, Lcom/mycompany/app/dialog/DialogFileDelete$FileDeleteListener;->b(Z)V

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/dialog/DialogFileDelete;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->A0:Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;

    .line 19
    .line 20
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->B0:Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->B0:Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->B0:Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;

    .line 35
    .line 36
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    const-string v5, "0:00:00"

    .line 39
    .line 40
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget v2, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->E0:I

    .line 44
    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    move v2, v4

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    move v2, v3

    .line 50
    :goto_0
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->f0:Lcom/mycompany/app/dialog/DialogFileDelete$FileDeleteListener;

    .line 51
    .line 52
    if-eqz v5, :cond_4

    .line 53
    .line 54
    invoke-interface {v5, v2}, Lcom/mycompany/app/dialog/DialogFileDelete$FileDeleteListener;->b(Z)V

    .line 55
    .line 56
    .line 57
    :cond_4
    if-eqz v2, :cond_5

    .line 58
    .line 59
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->a0:Landroid/content/Context;

    .line 60
    .line 61
    sget v1, Lnet/kaki87/soul2/testing/R$string;->deleted:I

    .line 62
    .line 63
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 68
    .line 69
    if-eqz v2, :cond_a

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogFileDelete;->D(Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    iget v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->E0:I

    .line 75
    .line 76
    iget v2, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->C0:I

    .line 77
    .line 78
    if-le v1, v2, :cond_6

    .line 79
    .line 80
    iput v2, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->E0:I

    .line 81
    .line 82
    :cond_6
    iget v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->E0:I

    .line 83
    .line 84
    sub-int/2addr v2, v1

    .line 85
    iput v2, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->D0:I

    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v5, ""

    .line 92
    .line 93
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget v6, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->C0:I

    .line 97
    .line 98
    invoke-static {v2, v6, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget v6, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->E0:I

    .line 109
    .line 110
    invoke-static {v2, v6, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget v5, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->D0:I

    .line 121
    .line 122
    invoke-static {v2, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 123
    .line 124
    .line 125
    iget v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->E0:I

    .line 126
    .line 127
    const v2, -0x50506

    .line 128
    .line 129
    .line 130
    if-lez v1, :cond_7

    .line 131
    .line 132
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    const v5, -0xbbcca

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 142
    .line 143
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 144
    .line 145
    if-eqz v5, :cond_8

    .line 146
    .line 147
    move v5, v2

    .line 148
    goto :goto_1

    .line 149
    :cond_8
    const/high16 v5, -0x1000000

    .line 150
    .line 151
    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    .line 153
    .line 154
    :goto_2
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->k0:Lcom/mycompany/app/view/MyLineFrame;

    .line 158
    .line 159
    const/16 v5, 0x8

    .line 160
    .line 161
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->p0:Lcom/mycompany/app/view/MyLineFrame;

    .line 165
    .line 166
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->z0:Lcom/mycompany/app/view/MyLineText;

    .line 170
    .line 171
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->z0:Lcom/mycompany/app/view/MyLineText;

    .line 175
    .line 176
    invoke-virtual {v1, v4}, Landroid/view/View;->setActivated(Z)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->z0:Lcom/mycompany/app/view/MyLineText;

    .line 180
    .line 181
    sget v3, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 182
    .line 183
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 184
    .line 185
    .line 186
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->z0:Lcom/mycompany/app/view/MyLineText;

    .line 187
    .line 188
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 189
    .line 190
    if-eqz v1, :cond_9

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_9
    const v2, -0xe19938

    .line 194
    .line 195
    .line 196
    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    .line 198
    .line 199
    :cond_a
    :goto_4
    return-void
.end method
