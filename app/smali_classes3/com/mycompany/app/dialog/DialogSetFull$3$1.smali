.class Lcom/mycompany/app/dialog/DialogSetFull$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetFull$3;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetFull$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFull$3$1;->c:Lcom/mycompany/app/dialog/DialogSetFull$3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull$3$1;->c:Lcom/mycompany/app/dialog/DialogSetFull$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetFull$3;->c:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetFull;->w0:Lcom/mycompany/app/view/GlideRequests;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->dev_dog:I

    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/GlideRequests;->s(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 27
    .line 28
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetFull;->h0:Landroid/widget/ImageView;

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 31
    .line 32
    .line 33
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetFull;->w0:Lcom/mycompany/app/view/GlideRequests;

    .line 38
    .line 39
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->sample_status_bar_b:I

    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/GlideRequests;->s(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 54
    .line 55
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetFull;->i0:Lcom/mycompany/app/view/MyLineImage;

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetFull;->w0:Lcom/mycompany/app/view/GlideRequests;

    .line 61
    .line 62
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->sample_navi_bar_b:I

    .line 63
    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/GlideRequests;->s(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 77
    .line 78
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetFull;->j0:Lcom/mycompany/app/view/MyLineImage;

    .line 79
    .line 80
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetFull;->w0:Lcom/mycompany/app/view/GlideRequests;

    .line 84
    .line 85
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->sample_top_bar_b:I

    .line 86
    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/GlideRequests;->s(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 100
    .line 101
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetFull;->k0:Lcom/mycompany/app/view/MyLineImage;

    .line 102
    .line 103
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetFull;->w0:Lcom/mycompany/app/view/GlideRequests;

    .line 107
    .line 108
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->sample_bot_bar_b:I

    .line 109
    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/GlideRequests;->s(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetFull;->l0:Lcom/mycompany/app/view/MyLineImage;

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetFull;->w0:Lcom/mycompany/app/view/GlideRequests;

    .line 131
    .line 132
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->sample_status_bar_w:I

    .line 133
    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/GlideRequests;->s(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 147
    .line 148
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetFull;->i0:Lcom/mycompany/app/view/MyLineImage;

    .line 149
    .line 150
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetFull;->w0:Lcom/mycompany/app/view/GlideRequests;

    .line 154
    .line 155
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->sample_navi_bar_w:I

    .line 156
    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/GlideRequests;->s(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 170
    .line 171
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetFull;->j0:Lcom/mycompany/app/view/MyLineImage;

    .line 172
    .line 173
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetFull;->w0:Lcom/mycompany/app/view/GlideRequests;

    .line 177
    .line 178
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->sample_top_bar_w:I

    .line 179
    .line 180
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/GlideRequests;->s(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 193
    .line 194
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetFull;->k0:Lcom/mycompany/app/view/MyLineImage;

    .line 195
    .line 196
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 197
    .line 198
    .line 199
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetFull;->w0:Lcom/mycompany/app/view/GlideRequests;

    .line 200
    .line 201
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->sample_bot_bar_w:I

    .line 202
    .line 203
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/GlideRequests;->s(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 216
    .line 217
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetFull;->l0:Lcom/mycompany/app/view/MyLineImage;

    .line 218
    .line 219
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 220
    .line 221
    .line 222
    return-void
.end method
