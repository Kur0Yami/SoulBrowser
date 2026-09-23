.class Lcom/mycompany/app/web/WebEmgDialog$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebEmgDialog$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgDialog$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$8$1;->c:Lcom/mycompany/app/web/WebEmgDialog$8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog$8$1;->c:Lcom/mycompany/app/web/WebEmgDialog$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebEmgDialog$8;->a:Lcom/mycompany/app/web/WebEmgDialog;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->I0:I

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebEmgDialog;->k0:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v3, :cond_f

    .line 13
    .line 14
    iget-object v3, v0, Lcom/mycompany/app/web/WebEmgDialog;->I:Lcom/mycompany/app/web/WebGridDialog$WebImgListener;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    if-eqz v2, :cond_e

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/web/WebEmgDialog;->I:Lcom/mycompany/app/web/WebGridDialog$WebImgListener;

    .line 31
    .line 32
    check-cast v3, Lcom/mycompany/app/web/WebViewActivity$541;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/mycompany/app/web/WebViewActivity$541;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/mycompany/app/web/WebViewActivity;->tb:Lcom/google/android/gms/cast/framework/CastSession;

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    if-eqz v3, :cond_6

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/Session;->c()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_6

    .line 46
    .line 47
    iget-object v3, v0, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 58
    .line 59
    sget v2, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 60
    .line 61
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/web/WebEmgDialog;->I:Lcom/mycompany/app/web/WebGridDialog$WebImgListener;

    .line 67
    .line 68
    if-nez v3, :cond_3

    .line 69
    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :cond_3
    check-cast v3, Lcom/mycompany/app/web/WebViewActivity$541;

    .line 73
    .line 74
    iget-object v3, v3, Lcom/mycompany/app/web/WebViewActivity$541;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 75
    .line 76
    iget-object v3, v3, Lcom/mycompany/app/web/WebViewActivity;->tb:Lcom/google/android/gms/cast/framework/CastSession;

    .line 77
    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    goto/16 :goto_5

    .line 81
    .line 82
    :cond_4
    iget-object v6, v0, Lcom/mycompany/app/web/WebEmgDialog;->J0:Lcom/mycompany/app/cast/CastUtil;

    .line 83
    .line 84
    if-eqz v6, :cond_5

    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_5
    new-instance v6, Lcom/mycompany/app/cast/CastUtil;

    .line 89
    .line 90
    iget-object v7, v0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 91
    .line 92
    iget-object v8, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 93
    .line 94
    new-instance v9, Lcom/mycompany/app/web/WebEmgDialog$33;

    .line 95
    .line 96
    invoke-direct {v9, v0}, Lcom/mycompany/app/web/WebEmgDialog$33;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v6, v7, v3, v8, v9}, Lcom/mycompany/app/cast/CastUtil;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastSession;Landroid/os/Handler;Lcom/mycompany/app/cast/CastUtil$CastSendListener;)V

    .line 100
    .line 101
    .line 102
    iput-object v6, v0, Lcom/mycompany/app/web/WebEmgDialog;->J0:Lcom/mycompany/app/cast/CastUtil;

    .line 103
    .line 104
    iget-object v3, v0, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v3, v5}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    iget-object v5, v0, Lcom/mycompany/app/web/WebEmgDialog;->J0:Lcom/mycompany/app/cast/CastUtil;

    .line 111
    .line 112
    iget-object v6, v0, Lcom/mycompany/app/web/WebEmgDialog;->j0:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v5, v1, v3, v6, v2}, Lcom/mycompany/app/cast/CastUtil;->c(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_5

    .line 118
    .line 119
    :cond_6
    iget-object v2, v0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 120
    .line 121
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->R1(Landroid/content/Context;)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const-string v3, "EXTRA_TYPE"

    .line 126
    .line 127
    const/16 v6, 0xc

    .line 128
    .line 129
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    const-string v3, "EXTRA_NAME"

    .line 133
    .line 134
    iget-object v6, v0, Lcom/mycompany/app/web/WebEmgDialog;->j0:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    const-string v3, "EXTRA_INDEX"

    .line 140
    .line 141
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    .line 143
    .line 144
    iget-object v3, v0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 145
    .line 146
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-nez v3, :cond_8

    .line 151
    .line 152
    :cond_7
    :goto_0
    move v3, v5

    .line 153
    goto :goto_3

    .line 154
    :cond_8
    iget-object v3, v0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 155
    .line 156
    if-nez v3, :cond_9

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_9
    iget-object v3, v3, Lcom/mycompany/app/web/WebGridAdapter;->p:[I

    .line 160
    .line 161
    if-eqz v3, :cond_b

    .line 162
    .line 163
    if-ltz v1, :cond_b

    .line 164
    .line 165
    array-length v6, v3

    .line 166
    if-lt v1, v6, :cond_a

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_a
    aget v1, v3, v1

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_b
    :goto_1
    move v1, v4

    .line 173
    :goto_2
    const/4 v3, 0x2

    .line 174
    if-ne v1, v3, :cond_d

    .line 175
    .line 176
    sget-boolean v1, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 177
    .line 178
    if-eqz v1, :cond_c

    .line 179
    .line 180
    const/4 v3, 0x4

    .line 181
    goto :goto_3

    .line 182
    :cond_c
    const/4 v3, 0x3

    .line 183
    goto :goto_3

    .line 184
    :cond_d
    if-ne v1, v5, :cond_7

    .line 185
    .line 186
    :goto_3
    const-string v1, "EXTRA_PAGE"

    .line 187
    .line 188
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    .line 190
    .line 191
    const-string v1, "EXTRA_REFERER"

    .line 192
    .line 193
    iget-object v3, v0, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    const-string v1, "EXTRA_PRELOAD"

    .line 199
    .line 200
    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    const-string v1, "EXTRA_LOAD_TYPE"

    .line 204
    .line 205
    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 209
    .line 210
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_e
    :goto_4
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 215
    .line 216
    sget v2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 217
    .line 218
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 219
    .line 220
    .line 221
    :cond_f
    :goto_5
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebEmgDialog;->D0:Z

    .line 222
    .line 223
    return-void
.end method
