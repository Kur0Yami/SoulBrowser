.class Lcom/mycompany/app/web/WebViewActivity$492;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$492;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$492;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Hm:Landroid/webkit/PermissionRequest;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Im:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Jm:Landroid/webkit/GeolocationPermissions$Callback;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Hm:Landroid/webkit/PermissionRequest;

    .line 11
    .line 12
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Im:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Jm:Landroid/webkit/GeolocationPermissions$Callback;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz p1, :cond_b

    .line 18
    .line 19
    iget p1, v0, Lcom/mycompany/app/web/WebViewActivity;->Fm:I

    .line 20
    .line 21
    iget v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Gm:I

    .line 22
    .line 23
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Bm:Z

    .line 24
    .line 25
    if-eqz v6, :cond_0

    .line 26
    .line 27
    or-int/lit8 p1, p1, 0x2

    .line 28
    .line 29
    and-int/lit8 v5, v5, -0x3

    .line 30
    .line 31
    :cond_0
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Cm:Z

    .line 32
    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    or-int/lit8 p1, p1, 0x4

    .line 36
    .line 37
    and-int/lit8 v5, v5, -0x5

    .line 38
    .line 39
    :cond_1
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Dm:Z

    .line 40
    .line 41
    if-eqz v6, :cond_2

    .line 42
    .line 43
    or-int/lit8 p1, p1, 0x10

    .line 44
    .line 45
    and-int/lit8 v5, v5, -0x11

    .line 46
    .line 47
    :cond_2
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Em:Z

    .line 48
    .line 49
    if-eqz v6, :cond_3

    .line 50
    .line 51
    or-int/lit8 p1, p1, 0x8

    .line 52
    .line 53
    and-int/lit8 v5, v5, -0x9

    .line 54
    .line 55
    :cond_3
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->ym:Z

    .line 56
    .line 57
    const/4 v7, 0x1

    .line 58
    if-eqz v6, :cond_4

    .line 59
    .line 60
    iget-boolean v8, v0, Lcom/mycompany/app/web/WebViewActivity;->zm:Z

    .line 61
    .line 62
    if-eqz v8, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0, v7}, Lcom/mycompany/app/web/WebViewActivity;->A3(I)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    if-eqz v6, :cond_5

    .line 72
    .line 73
    const/4 v6, 0x2

    .line 74
    invoke-virtual {v0, v6}, Lcom/mycompany/app/web/WebViewActivity;->A3(I)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->zm:Z

    .line 82
    .line 83
    if-eqz v6, :cond_6

    .line 84
    .line 85
    const/4 v6, 0x3

    .line 86
    invoke-virtual {v0, v6}, Lcom/mycompany/app/web/WebViewActivity;->A3(I)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Am:Z

    .line 94
    .line 95
    if-eqz v6, :cond_7

    .line 96
    .line 97
    const/4 v6, 0x4

    .line 98
    invoke-virtual {v0, v6}, Lcom/mycompany/app/web/WebViewActivity;->A3(I)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 103
    .line 104
    :cond_7
    :goto_0
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 105
    .line 106
    if-eqz v6, :cond_8

    .line 107
    .line 108
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->y7:Landroid/webkit/PermissionRequest;

    .line 109
    .line 110
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->z7:Ljava/lang/String;

    .line 111
    .line 112
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->A7:Landroid/webkit/GeolocationPermissions$Callback;

    .line 113
    .line 114
    iput p1, v0, Lcom/mycompany/app/web/WebViewActivity;->B7:I

    .line 115
    .line 116
    iput v5, v0, Lcom/mycompany/app/web/WebViewActivity;->C7:I

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_8
    if-eqz v1, :cond_9

    .line 120
    .line 121
    invoke-virtual {v1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_9
    if-eqz v3, :cond_a

    .line 130
    .line 131
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_a

    .line 136
    .line 137
    invoke-interface {v3, v2, v7, v4}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 138
    .line 139
    .line 140
    :cond_a
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 141
    .line 142
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Nm:Ljava/lang/String;

    .line 143
    .line 144
    iput p1, v0, Lcom/mycompany/app/web/WebViewActivity;->Om:I

    .line 145
    .line 146
    iput v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Pm:I

    .line 147
    .line 148
    new-instance p1, Lcom/mycompany/app/web/WebViewActivity$494;

    .line 149
    .line 150
    invoke-direct {p1, v0}, Lcom/mycompany/app/web/WebViewActivity$494;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_b
    iget p1, v0, Lcom/mycompany/app/web/WebViewActivity;->Fm:I

    .line 158
    .line 159
    iget v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Gm:I

    .line 160
    .line 161
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Bm:Z

    .line 162
    .line 163
    if-eqz v6, :cond_c

    .line 164
    .line 165
    and-int/lit8 p1, p1, -0x3

    .line 166
    .line 167
    or-int/lit8 v5, v5, 0x2

    .line 168
    .line 169
    :cond_c
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Cm:Z

    .line 170
    .line 171
    if-eqz v6, :cond_d

    .line 172
    .line 173
    and-int/lit8 p1, p1, -0x5

    .line 174
    .line 175
    or-int/lit8 v5, v5, 0x4

    .line 176
    .line 177
    :cond_d
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Dm:Z

    .line 178
    .line 179
    if-eqz v6, :cond_e

    .line 180
    .line 181
    and-int/lit8 p1, p1, -0x11

    .line 182
    .line 183
    or-int/lit8 v5, v5, 0x10

    .line 184
    .line 185
    :cond_e
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Em:Z

    .line 186
    .line 187
    if-eqz v6, :cond_f

    .line 188
    .line 189
    and-int/lit8 p1, p1, -0x9

    .line 190
    .line 191
    or-int/lit8 v5, v5, 0x8

    .line 192
    .line 193
    :cond_f
    if-eqz v1, :cond_10

    .line 194
    .line 195
    invoke-virtual {v1}, Landroid/webkit/PermissionRequest;->deny()V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_10
    if-eqz v3, :cond_11

    .line 200
    .line 201
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-nez v1, :cond_11

    .line 206
    .line 207
    invoke-interface {v3, v2, v4, v4}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 208
    .line 209
    .line 210
    :cond_11
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 211
    .line 212
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Nm:Ljava/lang/String;

    .line 213
    .line 214
    iput p1, v0, Lcom/mycompany/app/web/WebViewActivity;->Om:I

    .line 215
    .line 216
    iput v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Pm:I

    .line 217
    .line 218
    new-instance p1, Lcom/mycompany/app/web/WebViewActivity$494;

    .line 219
    .line 220
    invoke-direct {p1, v0}, Lcom/mycompany/app/web/WebViewActivity$494;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 224
    .line 225
    .line 226
    :goto_3
    iget-object p1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 227
    .line 228
    if-nez p1, :cond_12

    .line 229
    .line 230
    return-void

    .line 231
    :cond_12
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$492$1;

    .line 232
    .line 233
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebViewActivity$492$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$492;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    .line 238
    .line 239
    return-void
.end method
