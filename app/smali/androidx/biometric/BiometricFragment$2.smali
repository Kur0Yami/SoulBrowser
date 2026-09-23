.class Landroidx/biometric/BiometricFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Landroidx/biometric/BiometricErrorData;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/biometric/BiometricFragment;


# direct methods
.method public constructor <init>(Landroidx/biometric/BiometricFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/biometric/BiometricFragment$2;->a:Landroidx/biometric/BiometricFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Landroidx/biometric/BiometricErrorData;

    .line 2
    .line 3
    if-eqz p1, :cond_f

    .line 4
    .line 5
    iget v0, p1, Landroidx/biometric/BiometricErrorData;->a:I

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/biometric/BiometricErrorData;->b:Ljava/lang/CharSequence;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    const/16 v0, 0x8

    .line 13
    .line 14
    :pswitch_1
    iget-object v1, p0, Landroidx/biometric/BiometricFragment$2;->a:Landroidx/biometric/BiometricFragment;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v4, 0x1d

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    if-ge v3, v4, :cond_2

    .line 26
    .line 27
    const/4 v4, 0x7

    .line 28
    if-eq v0, v4, :cond_0

    .line 29
    .line 30
    const/16 v4, 0x9

    .line 31
    .line 32
    if-ne v0, v4, :cond_2

    .line 33
    .line 34
    :cond_0
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-static {v2}, Landroidx/biometric/KeyguardUtils$Api23Impl;->a(Landroid/content/Context;)Landroid/app/KeyguardManager;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    move v2, v5

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {v2}, Landroidx/biometric/KeyguardUtils$Api23Impl;->b(Landroid/app/KeyguardManager;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    :goto_0
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget-object v2, v1, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroidx/biometric/BiometricViewModel;->c()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-static {v2}, Landroidx/biometric/AuthenticatorUtils;->a(I)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {v1}, Landroidx/biometric/BiometricFragment;->j()V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_8

    .line 66
    .line 67
    :cond_2
    invoke-virtual {v1}, Landroidx/biometric/BiometricFragment;->i()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_d

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1, v0}, Landroidx/biometric/ErrorUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_1
    const/4 v2, 0x5

    .line 85
    if-ne v0, v2, :cond_6

    .line 86
    .line 87
    iget-object v2, v1, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 88
    .line 89
    iget v2, v2, Landroidx/biometric/BiometricViewModel;->l:I

    .line 90
    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    const/4 v3, 0x3

    .line 94
    if-ne v2, v3, :cond_5

    .line 95
    .line 96
    :cond_4
    invoke-virtual {v1, v0, p1}, Landroidx/biometric/BiometricFragment;->l(ILjava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    :cond_5
    invoke-virtual {v1}, Landroidx/biometric/BiometricFragment;->dismiss()V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_8

    .line 103
    .line 104
    :cond_6
    iget-object v2, v1, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 105
    .line 106
    iget-boolean v2, v2, Landroidx/biometric/BiometricViewModel;->w:Z

    .line 107
    .line 108
    const/4 v4, 0x1

    .line 109
    if-eqz v2, :cond_7

    .line 110
    .line 111
    invoke-virtual {v1, v0, p1}, Landroidx/biometric/BiometricFragment;->k(ILjava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_7
    invoke-virtual {v1, p1}, Landroidx/biometric/BiometricFragment;->o(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    iget-object v2, v1, Landroidx/biometric/BiometricFragment;->c:Landroid/os/Handler;

    .line 119
    .line 120
    new-instance v6, Landroidx/biometric/BiometricFragment$8;

    .line 121
    .line 122
    invoke-direct {v6, v1, v0, p1}, Landroidx/biometric/BiometricFragment$8;-><init>(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_c

    .line 130
    .line 131
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 132
    .line 133
    const/16 v7, 0x1c

    .line 134
    .line 135
    if-eq v3, v7, :cond_9

    .line 136
    .line 137
    :cond_8
    :goto_2
    move p1, v5

    .line 138
    goto :goto_4

    .line 139
    :cond_9
    sget v3, Landroidx/biometric/R$array;->hide_fingerprint_instantly_prefixes:I

    .line 140
    .line 141
    if-nez v0, :cond_a

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    array-length v3, p1

    .line 153
    move v7, v5

    .line 154
    :goto_3
    if-ge v7, v3, :cond_8

    .line 155
    .line 156
    aget-object v8, p1, v7

    .line 157
    .line 158
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    if-eqz v8, :cond_b

    .line 163
    .line 164
    move p1, v4

    .line 165
    goto :goto_4

    .line 166
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :goto_4
    if-eqz p1, :cond_c

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_c
    const/16 v5, 0x7d0

    .line 173
    .line 174
    :goto_5
    int-to-long v7, v5

    .line 175
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    .line 177
    .line 178
    :goto_6
    iget-object p1, v1, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 179
    .line 180
    iput-boolean v4, p1, Landroidx/biometric/BiometricViewModel;->w:Z

    .line 181
    .line 182
    goto :goto_8

    .line 183
    :cond_d
    if-eqz p1, :cond_e

    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    sget v2, Landroidx/biometric/R$string;->default_error_msg:I

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v2, " "

    .line 201
    .line 202
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    :goto_7
    invoke-virtual {v1, v0, p1}, Landroidx/biometric/BiometricFragment;->k(ILjava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    :goto_8
    iget-object p1, v1, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 216
    .line 217
    const/4 v0, 0x0

    .line 218
    invoke-virtual {p1, v0}, Landroidx/biometric/BiometricViewModel;->d(Landroidx/biometric/BiometricErrorData;)V

    .line 219
    .line 220
    .line 221
    :cond_f
    return-void

    .line 222
    nop

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
