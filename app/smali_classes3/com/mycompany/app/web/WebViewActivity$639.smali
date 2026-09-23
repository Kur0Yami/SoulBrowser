.class Lcom/mycompany/app/web/WebViewActivity$639;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$639;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$639;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-wide v2, v1, Lcom/mycompany/app/web/WebViewActivity;->eo:J

    .line 6
    .line 7
    iget v4, v1, Lcom/mycompany/app/web/WebViewActivity;->fo:I

    .line 8
    .line 9
    iget-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->go:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, v1, Lcom/mycompany/app/web/WebViewActivity;->ho:Ljava/lang/String;

    .line 12
    .line 13
    iget v7, v1, Lcom/mycompany/app/web/WebViewActivity;->io:I

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    iput-object v8, v1, Lcom/mycompany/app/web/WebViewActivity;->go:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v8, v1, Lcom/mycompany/app/web/WebViewActivity;->ho:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v8, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 21
    .line 22
    if-nez v8, :cond_0

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_0
    const/4 v8, 0x0

    .line 27
    invoke-virtual {v1, v8}, Lcom/mycompany/app/web/WebViewActivity;->U9(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->T4()V

    .line 31
    .line 32
    .line 33
    new-instance v9, Lcom/mycompany/app/view/MySnackbar;

    .line 34
    .line 35
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MySnackbar;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    iput-object v9, v1, Lcom/mycompany/app/web/WebViewActivity;->u3:Lcom/mycompany/app/view/MySnackbar;

    .line 39
    .line 40
    iget-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->g2:Lcom/google/android/material/appbar/AppBarLayout;

    .line 41
    .line 42
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MySnackbar;->setAppBarView(Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    const/4 v10, 0x1

    .line 50
    if-eqz v9, :cond_3

    .line 51
    .line 52
    if-ne v7, v10, :cond_1

    .line 53
    .line 54
    sget v2, Lnet/kaki87/soul2/testing/R$string;->save_fail:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    sget v2, Lnet/kaki87/soul2/testing/R$string;->server_error:I

    .line 58
    .line 59
    :goto_0
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 60
    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    sput-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 64
    .line 65
    :cond_2
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->u3:Lcom/mycompany/app/view/MySnackbar;

    .line 66
    .line 67
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 68
    .line 69
    new-instance v5, Lcom/mycompany/app/web/WebViewActivity$639$1;

    .line 70
    .line 71
    invoke-direct {v5, v0}, Lcom/mycompany/app/web/WebViewActivity$639$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$639;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v4, v2, v5}, Lcom/mycompany/app/view/MySnackbar;->v(Landroid/view/ViewGroup;ILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 78
    .line 79
    if-eqz v2, :cond_d

    .line 80
    .line 81
    invoke-static {v1, v8}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    const/4 v9, 0x5

    .line 86
    if-ne v4, v9, :cond_6

    .line 87
    .line 88
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 89
    .line 90
    if-eqz v2, :cond_4

    .line 91
    .line 92
    invoke-virtual {v2, v5}, Lcom/mycompany/app/web/WebNestView;->d(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 96
    .line 97
    if-eqz v2, :cond_5

    .line 98
    .line 99
    sput-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 100
    .line 101
    :cond_5
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->u3:Lcom/mycompany/app/view/MySnackbar;

    .line 102
    .line 103
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 104
    .line 105
    sget v4, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 106
    .line 107
    new-instance v5, Lcom/mycompany/app/web/WebViewActivity$639$2;

    .line 108
    .line 109
    invoke-direct {v5, v0}, Lcom/mycompany/app/web/WebViewActivity$639$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$639;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v3, v4, v5}, Lcom/mycompany/app/view/MySnackbar;->v(Landroid/view/ViewGroup;ILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 113
    .line 114
    .line 115
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 116
    .line 117
    if-eqz v2, :cond_d

    .line 118
    .line 119
    invoke-static {v1, v8}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_6
    const/4 v11, 0x4

    .line 124
    if-ne v4, v11, :cond_a

    .line 125
    .line 126
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 127
    .line 128
    if-eqz v4, :cond_7

    .line 129
    .line 130
    invoke-virtual {v4, v5}, Lcom/mycompany/app/web/WebNestView;->d(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_7
    const-string v4, "live"

    .line 134
    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_8

    .line 140
    .line 141
    sget v4, Lnet/kaki87/soul2/testing/R$string;->live_fail:I

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_8
    sget v4, Lnet/kaki87/soul2/testing/R$string;->server_error:I

    .line 145
    .line 146
    :goto_1
    iget-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 147
    .line 148
    if-eqz v5, :cond_9

    .line 149
    .line 150
    sput-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 151
    .line 152
    :cond_9
    iput-wide v2, v1, Lcom/mycompany/app/web/WebViewActivity;->jo:J

    .line 153
    .line 154
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->u3:Lcom/mycompany/app/view/MySnackbar;

    .line 155
    .line 156
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 157
    .line 158
    new-instance v5, Lcom/mycompany/app/web/WebViewActivity$639$3;

    .line 159
    .line 160
    invoke-direct {v5, v0}, Lcom/mycompany/app/web/WebViewActivity$639$3;-><init>(Lcom/mycompany/app/web/WebViewActivity$639;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v3, v4, v9, v5}, Lcom/mycompany/app/view/MySnackbar;->w(Landroid/view/ViewGroup;IILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 164
    .line 165
    .line 166
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 167
    .line 168
    if-eqz v2, :cond_d

    .line 169
    .line 170
    invoke-static {v1, v8}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_a
    if-ne v7, v10, :cond_b

    .line 175
    .line 176
    sget v4, Lnet/kaki87/soul2/testing/R$string;->save_success:I

    .line 177
    .line 178
    :goto_2
    move v13, v4

    .line 179
    goto :goto_3

    .line 180
    :cond_b
    sget v4, Lnet/kaki87/soul2/testing/R$string;->down_complete:I

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :goto_3
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 184
    .line 185
    if-eqz v4, :cond_c

    .line 186
    .line 187
    sput-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 188
    .line 189
    :cond_c
    iput-wide v2, v1, Lcom/mycompany/app/web/WebViewActivity;->jo:J

    .line 190
    .line 191
    iput-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->ko:Ljava/lang/String;

    .line 192
    .line 193
    iput-object v6, v1, Lcom/mycompany/app/web/WebViewActivity;->lo:Ljava/lang/String;

    .line 194
    .line 195
    iget-object v11, v1, Lcom/mycompany/app/web/WebViewActivity;->u3:Lcom/mycompany/app/view/MySnackbar;

    .line 196
    .line 197
    iget-object v12, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 198
    .line 199
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$639$4;

    .line 200
    .line 201
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$639$4;-><init>(Lcom/mycompany/app/web/WebViewActivity$639;)V

    .line 202
    .line 203
    .line 204
    iput v8, v11, Lcom/mycompany/app/view/MySnackbar;->i:I

    .line 205
    .line 206
    const/4 v14, 0x2

    .line 207
    const/4 v15, 0x1

    .line 208
    move-object/from16 v16, v2

    .line 209
    .line 210
    invoke-virtual/range {v11 .. v16}, Lcom/mycompany/app/view/MySnackbar;->x(Landroid/view/ViewGroup;IIILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 211
    .line 212
    .line 213
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 214
    .line 215
    if-eqz v2, :cond_d

    .line 216
    .line 217
    invoke-static {v1, v8}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 218
    .line 219
    .line 220
    :cond_d
    :goto_4
    return-void
.end method
