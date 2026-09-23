.class public Lcom/mycompany/app/web/WebSslView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebSslView$SslViewListener;
    }
.end annotation


# static fields
.field public static final synthetic o:I


# instance fields
.field public c:Lcom/mycompany/app/web/WebSslView$SslViewListener;

.field public f:Landroidx/appcompat/widget/AppCompatTextView;

.field public g:Landroidx/appcompat/widget/AppCompatTextView;

.field public h:Landroidx/appcompat/widget/AppCompatTextView;

.field public i:Landroidx/appcompat/widget/AppCompatTextView;

.field public j:Lcom/mycompany/app/view/MyButtonImage;

.field public k:Lcom/mycompany/app/view/MyButtonText;

.field public l:Lcom/mycompany/app/view/MyButtonText;

.field public m:Landroid/webkit/SslErrorHandler;

.field public n:Landroid/net/http/SslError;


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->k:Lcom/mycompany/app/view/MyButtonText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    const/high16 v1, -0x1000000

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    const v2, -0x50506

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    const v3, -0x3e3e3f

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->k:Lcom/mycompany/app/view/MyButtonText;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->k:Lcom/mycompany/app/view/MyButtonText;

    .line 47
    .line 48
    const v2, -0xd8d8d9

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    const v1, -0xc0c0c1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    const/4 v0, -0x1

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    const v2, -0x9e9e9f

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->k:Lcom/mycompany/app/view/MyButtonText;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->k:Lcom/mycompany/app/view/MyButtonText;

    .line 103
    .line 104
    const v1, -0x70708

    .line 105
    .line 106
    .line 107
    const/high16 v2, 0x21000000

    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 113
    .line 114
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 120
    .line 121
    const v1, -0x1f1f20

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->n:Landroid/net/http/SslError;

    .line 7
    .line 8
    const-string v1, "SSL Certificate error."

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p0, Lcom/mycompany/app/web/WebSslView;->n:Landroid/net/http/SslError;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_5

    .line 55
    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_4

    .line 61
    .line 62
    const-string v4, "\n"

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    :cond_4
    const-string v0, "URL: "

    .line 74
    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->n:Landroid/net/http/SslError;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/net/http/SslError;->getPrimaryError()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    const/4 v2, 0x0

    .line 97
    if-eqz v0, :cond_b

    .line 98
    .line 99
    const/4 v3, 0x1

    .line 100
    if-eq v0, v3, :cond_a

    .line 101
    .line 102
    const/4 v3, 0x2

    .line 103
    if-eq v0, v3, :cond_9

    .line 104
    .line 105
    const/4 v3, 0x3

    .line 106
    if-eq v0, v3, :cond_8

    .line 107
    .line 108
    const/4 v3, 0x4

    .line 109
    if-eq v0, v3, :cond_7

    .line 110
    .line 111
    const/4 v3, 0x5

    .line 112
    if-eq v0, v3, :cond_6

    .line 113
    .line 114
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    const-string v1, "ERR: SSL_INVALID"

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 128
    .line 129
    const-string v1, "A generic error occurred."

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    const-string v1, "ERR: SSL_DATE_INVALID"

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 148
    .line 149
    const-string v1, "The date of the certificate is invalid."

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 161
    .line 162
    const-string v1, "ERR: SSL_UNTRUSTED"

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 168
    .line 169
    const-string v1, "The certificate authority is not trusted."

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 175
    .line 176
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 181
    .line 182
    const-string v1, "ERR: SSL_IDMISMATCH"

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 188
    .line 189
    const-string v1, "Hostname mismatch."

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 201
    .line 202
    const-string v1, "ERR: SSL_EXPIRED"

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 208
    .line 209
    const-string v1, "The certificate has expired."

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 215
    .line 216
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 221
    .line 222
    const-string v1, "ERR: SSL_NOTYETVALID"

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 228
    .line 229
    const-string v1, "The certificate is not yet valid."

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lcom/mycompany/app/web/WebSslView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 235
    .line 236
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 2
    .line 3
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->v:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->H3()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->w:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->j0()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eq v1, v0, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public setListener(Lcom/mycompany/app/web/WebSslView$SslViewListener;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iput-object v1, v0, Lcom/mycompany/app/web/WebSslView;->c:Lcom/mycompany/app/web/WebSslView$SslViewListener;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$id;->ssl_icon_frame:I

    .line 15
    .line 16
    sget v3, Lnet/kaki87/soul2/testing/R$id;->ssl_icon_setting:I

    .line 17
    .line 18
    sget v4, Lnet/kaki87/soul2/testing/R$id;->ssl_cancel_view:I

    .line 19
    .line 20
    sget v5, Lnet/kaki87/soul2/testing/R$id;->ssl_apply_view:I

    .line 21
    .line 22
    new-instance v6, Landroid/widget/FrameLayout;

    .line 23
    .line 24
    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6, v2}, Landroid/view/View;->setId(I)V

    .line 28
    .line 29
    .line 30
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 31
    .line 32
    const/4 v8, -0x1

    .line 33
    const/4 v9, -0x2

    .line 34
    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    const/high16 v10, 0x41a00000    # 20.0f

    .line 38
    .line 39
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    float-to-int v10, v10

    .line 44
    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 45
    .line 46
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 47
    .line 48
    .line 49
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 50
    .line 51
    invoke-virtual {v7, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    new-instance v7, Landroid/view/View;

    .line 58
    .line 59
    invoke-direct {v7, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->baseline_warning_red_24:I

    .line 63
    .line 64
    invoke-virtual {v7, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    .line 66
    .line 67
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    .line 69
    sget v12, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 70
    .line 71
    invoke-direct {v11, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 72
    .line 73
    .line 74
    const v12, 0x800013

    .line 75
    .line 76
    .line 77
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 78
    .line 79
    invoke-virtual {v6, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    const/4 v11, 0x0

    .line 85
    invoke-direct {v7, v1, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    .line 87
    .line 88
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 89
    .line 90
    int-to-float v13, v13

    .line 91
    const/high16 v14, 0x3f800000    # 1.0f

    .line 92
    .line 93
    invoke-virtual {v7, v13, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 94
    .line 95
    .line 96
    const/4 v13, 0x1

    .line 97
    const/high16 v15, 0x41900000    # 18.0f

    .line 98
    .line 99
    invoke-virtual {v7, v13, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 100
    .line 101
    .line 102
    sget v15, Lnet/kaki87/soul2/testing/R$string;->site_warning:I

    .line 103
    .line 104
    invoke-static {v7, v15, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 105
    .line 106
    .line 107
    move-result-object v15

    .line 108
    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 109
    .line 110
    const/high16 v14, 0x42700000    # 60.0f

    .line 111
    .line 112
    invoke-static {v1, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    float-to-int v14, v14

    .line 117
    invoke-virtual {v15, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .line 122
    .line 123
    new-instance v6, Landroid/widget/FrameLayout;

    .line 124
    .line 125
    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    const/4 v14, 0x3

    .line 129
    invoke-static {v8, v8, v14, v2}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const/4 v14, 0x2

    .line 134
    invoke-virtual {v2, v14, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 135
    .line 136
    .line 137
    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 138
    .line 139
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 140
    .line 141
    iput v15, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 142
    .line 143
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .line 151
    .line 152
    new-instance v2, Landroid/widget/LinearLayout;

    .line 153
    .line 154
    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 158
    .line 159
    .line 160
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 161
    .line 162
    invoke-direct {v15, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 163
    .line 164
    .line 165
    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 166
    .line 167
    invoke-virtual {v6, v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    .line 169
    .line 170
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 171
    .line 172
    invoke-direct {v6, v1, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    .line 174
    .line 175
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 176
    .line 177
    const/4 v15, 0x0

    .line 178
    invoke-virtual {v6, v15, v15, v15, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 179
    .line 180
    .line 181
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 182
    .line 183
    int-to-float v12, v12

    .line 184
    const/high16 v11, 0x3f800000    # 1.0f

    .line 185
    .line 186
    invoke-virtual {v6, v12, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 187
    .line 188
    .line 189
    const/high16 v12, 0x41900000    # 18.0f

    .line 190
    .line 191
    invoke-virtual {v6, v13, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 195
    .line 196
    .line 197
    new-instance v12, Landroid/widget/ScrollView;

    .line 198
    .line 199
    invoke-direct {v12, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v12, v14}, Landroid/view/View;->setOverScrollMode(I)V

    .line 203
    .line 204
    .line 205
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 206
    .line 207
    invoke-direct {v14, v8, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 208
    .line 209
    .line 210
    iput v11, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 211
    .line 212
    invoke-virtual {v2, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    .line 214
    .line 215
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 216
    .line 217
    const/4 v15, 0x0

    .line 218
    invoke-direct {v14, v1, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 219
    .line 220
    .line 221
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 222
    .line 223
    int-to-float v15, v15

    .line 224
    invoke-virtual {v14, v15, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 225
    .line 226
    .line 227
    const/high16 v15, 0x41800000    # 16.0f

    .line 228
    .line 229
    invoke-virtual {v14, v13, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v12, v14, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 233
    .line 234
    .line 235
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 236
    .line 237
    const/4 v15, 0x0

    .line 238
    invoke-direct {v12, v1, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 239
    .line 240
    .line 241
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 242
    .line 243
    int-to-float v15, v15

    .line 244
    invoke-virtual {v12, v15, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 245
    .line 246
    .line 247
    const/high16 v11, 0x41900000    # 18.0f

    .line 248
    .line 249
    invoke-virtual {v12, v13, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 250
    .line 251
    .line 252
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 253
    .line 254
    invoke-direct {v11, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 255
    .line 256
    .line 257
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 258
    .line 259
    iput v15, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 260
    .line 261
    invoke-virtual {v2, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    .line 263
    .line 264
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 265
    .line 266
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 270
    .line 271
    .line 272
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 273
    .line 274
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 275
    .line 276
    .line 277
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 278
    .line 279
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 280
    .line 281
    invoke-direct {v3, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 282
    .line 283
    .line 284
    const/4 v11, 0x2

    .line 285
    invoke-virtual {v3, v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 286
    .line 287
    .line 288
    const/16 v11, 0x15

    .line 289
    .line 290
    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 291
    .line 292
    .line 293
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 294
    .line 295
    iput v11, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 296
    .line 297
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    .line 302
    .line 303
    new-instance v3, Lcom/mycompany/app/view/MyButtonText;

    .line 304
    .line 305
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 309
    .line 310
    .line 311
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 312
    .line 313
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 314
    .line 315
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 316
    .line 317
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 318
    .line 319
    invoke-virtual {v3, v4, v11, v15, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 320
    .line 321
    .line 322
    const/16 v4, 0x11

    .line 323
    .line 324
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 325
    .line 326
    .line 327
    sget v8, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 328
    .line 329
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 330
    .line 331
    .line 332
    const/high16 v8, 0x41600000    # 14.0f

    .line 333
    .line 334
    invoke-virtual {v3, v13, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 335
    .line 336
    .line 337
    sget v11, Lnet/kaki87/soul2/testing/R$string;->site_exit:I

    .line 338
    .line 339
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3, v13}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3, v13}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 346
    .line 347
    .line 348
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 349
    .line 350
    invoke-virtual {v3, v11}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 351
    .line 352
    .line 353
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 354
    .line 355
    const/4 v15, -0x1

    .line 356
    invoke-direct {v11, v15, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 357
    .line 358
    .line 359
    const/4 v15, 0x2

    .line 360
    invoke-virtual {v11, v15, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 361
    .line 362
    .line 363
    iput v10, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 364
    .line 365
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    .line 373
    .line 374
    new-instance v11, Lcom/mycompany/app/view/MyButtonText;

    .line 375
    .line 376
    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v11, v5}, Landroid/view/View;->setId(I)V

    .line 380
    .line 381
    .line 382
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 383
    .line 384
    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 385
    .line 386
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 387
    .line 388
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 389
    .line 390
    invoke-virtual {v11, v1, v5, v15, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 394
    .line 395
    .line 396
    sget v1, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 397
    .line 398
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v11, v13, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 402
    .line 403
    .line 404
    sget v1, Lnet/kaki87/soul2/testing/R$string;->site_continue:I

    .line 405
    .line 406
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v11, v13}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v11, v13}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 413
    .line 414
    .line 415
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 416
    .line 417
    invoke-virtual {v11, v1}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 418
    .line 419
    .line 420
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 421
    .line 422
    const/4 v4, -0x2

    .line 423
    const/4 v15, -0x1

    .line 424
    invoke-direct {v1, v15, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 425
    .line 426
    .line 427
    const/16 v4, 0xc

    .line 428
    .line 429
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 430
    .line 431
    .line 432
    iput v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 433
    .line 434
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    .line 442
    .line 443
    iput-object v7, v0, Lcom/mycompany/app/web/WebSslView;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 444
    .line 445
    iput-object v6, v0, Lcom/mycompany/app/web/WebSslView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 446
    .line 447
    iput-object v14, v0, Lcom/mycompany/app/web/WebSslView;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 448
    .line 449
    iput-object v12, v0, Lcom/mycompany/app/web/WebSslView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 450
    .line 451
    iput-object v2, v0, Lcom/mycompany/app/web/WebSslView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 452
    .line 453
    iput-object v11, v0, Lcom/mycompany/app/web/WebSslView;->k:Lcom/mycompany/app/view/MyButtonText;

    .line 454
    .line 455
    iput-object v3, v0, Lcom/mycompany/app/web/WebSslView;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 456
    .line 457
    const/4 v15, -0x1

    .line 458
    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    .line 460
    .line 461
    iget-object v1, v0, Lcom/mycompany/app/web/WebSslView;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 462
    .line 463
    const v2, -0xc6b655

    .line 464
    .line 465
    .line 466
    const v3, -0xa39440

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebSslView;->a()V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebSslView;->b()V

    .line 476
    .line 477
    .line 478
    new-instance v1, Lcom/mycompany/app/web/WebSslView$1;

    .line 479
    .line 480
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    .line 485
    .line 486
    iget-object v1, v0, Lcom/mycompany/app/web/WebSslView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 487
    .line 488
    new-instance v2, Lcom/mycompany/app/web/WebSslView$2;

    .line 489
    .line 490
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebSslView$2;-><init>(Lcom/mycompany/app/web/WebSslView;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    .line 495
    .line 496
    iget-object v1, v0, Lcom/mycompany/app/web/WebSslView;->k:Lcom/mycompany/app/view/MyButtonText;

    .line 497
    .line 498
    new-instance v2, Lcom/mycompany/app/web/WebSslView$3;

    .line 499
    .line 500
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebSslView$3;-><init>(Lcom/mycompany/app/web/WebSslView;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    .line 505
    .line 506
    iget-object v1, v0, Lcom/mycompany/app/web/WebSslView;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 507
    .line 508
    new-instance v2, Lcom/mycompany/app/web/WebSslView$4;

    .line 509
    .line 510
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebSslView$4;-><init>(Lcom/mycompany/app/web/WebSslView;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    .line 515
    .line 516
    return-void
.end method
