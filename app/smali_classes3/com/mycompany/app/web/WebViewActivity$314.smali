.class Lcom/mycompany/app/web/WebViewActivity$314;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogTabPress$TabActionHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$314;->d:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/web/WebViewActivity$314;->a:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/web/WebViewActivity$314;->b:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/mycompany/app/web/WebViewActivity$314;->c:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$314;->d:Lcom/mycompany/app/web/WebViewActivity;

    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->W4()V

    return-void
.end method

.method public final onAction(Landroid/view/View;I)Z
    .locals 6

    .line 1
    move-object v5, p1

    sget p1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$314;->d:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    iget v1, p0, Lcom/mycompany/app/web/WebViewActivity$314;->b:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->U4()V

    .line 15
    .line 16
    .line 17
    iget p2, p0, Lcom/mycompany/app/web/WebViewActivity$314;->a:I

    .line 18
    .line 19
    invoke-virtual {p1, p2, v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->y9(III)V

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :cond_0
    const/4 v3, 0x2

    .line 24
    const/4 v4, 0x0

    .line 25
    if-ne p2, v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->U4()V

    .line 28
    .line 29
    .line 30
    iget-boolean p2, p0, Lcom/mycompany/app/web/WebViewActivity$314;->c:Z

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v4, v1, v3}, Lcom/mycompany/app/web/WebViewActivity;->y9(III)V

    .line 35
    .line 36
    .line 37
    return v2

    .line 38
    :cond_1
    invoke-virtual {p1, v4, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->y9(III)V

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :cond_2
    if-ne p2, v3, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->U4()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v4, v4, v4}, Lcom/mycompany/app/web/WebViewActivity;->y9(III)V

    .line 48
    .line 49
    .line 50
    return v2

    .line 51
    :cond_3
    const/4 v3, 0x0

    .line 52
    if-ne p2, v0, :cond_6

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->U4()V

    invoke-static {}, Lcom/mycompany/app/web/WebViewActivity;->o3()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2, v2, v3}, Lcom/mycompany/app/web/WebViewActivity;->O1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    return v2

    .line 81
    :cond_6
    const/4 v0, 0x4

    .line 82
    if-ne p2, v0, :cond_9

    .line 83
    .line 84
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 85
    .line 86
    if-nez p2, :cond_7

    .line 87
    .line 88
    goto/16 :goto_6

    .line 89
    .line 90
    :cond_7
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->U4()V

    .line 91
    .line 92
    .line 93
    iput v1, p1, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 94
    .line 95
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 96
    .line 97
    invoke-virtual {p2, v1}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    if-nez p2, :cond_8

    .line 102
    .line 103
    move-object p2, v3

    .line 104
    goto :goto_1

    .line 105
    :cond_8
    iget-object p2, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 106
    .line 107
    :goto_1
    invoke-virtual {p1, p2, v3}, Lcom/mycompany/app/web/WebViewActivity;->L1(Ljava/lang/String;Lcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 108
    .line 109
    .line 110
    return v2

    .line 111
    :cond_9
    const/4 v0, 0x5

    .line 112
    if-ne p2, v0, :cond_c

    .line 113
    .line 114
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 115
    .line 116
    if-nez p2, :cond_a

    .line 117
    .line 118
    goto/16 :goto_6

    .line 119
    .line 120
    :cond_a
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->U4()V

    .line 121
    .line 122
    .line 123
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 124
    .line 125
    invoke-virtual {p2, v1}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    if-nez p2, :cond_b

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_b
    iget-object v3, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 133
    .line 134
    :goto_2
    invoke-virtual {p1, v3}, Lcom/mycompany/app/web/WebViewActivity;->G1(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return v2

    .line 138
    :cond_c
    const/4 v0, 0x6

    .line 139
    if-ne p2, v0, :cond_f

    .line 140
    .line 141
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 142
    .line 143
    if-nez p2, :cond_d

    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_d
    invoke-virtual {p2, v1}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    if-nez p2, :cond_e

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_e
    iget-object v3, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 154
    .line 155
    :goto_3
    sget p2, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 156
    .line 157
    const-string v0, "Copied URL"

    .line 158
    .line 159
    invoke-static {p2, p1, v0, v3}, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return v2

    .line 163
    :cond_f
    const/4 v0, 0x7

    .line 164
    if-ne p2, v0, :cond_12

    .line 165
    .line 166
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 167
    .line 168
    if-nez p2, :cond_10

    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_10
    invoke-virtual {p2, v1}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    if-nez p2, :cond_11

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_11
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->U4()V

    .line 179
    .line 180
    .line 181
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 182
    .line 183
    invoke-static {v0, p2}, Lcom/mycompany/app/web/WebViewActivity;->q3(Landroid/content/Context;Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget-object p2, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {p1, p2, v0}, Lcom/mycompany/app/web/WebViewActivity;->m8(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    return v2

    .line 193
    :cond_12
    const/16 v0, 0x64

    if-ne p2, v0, :cond_edit_next

    invoke-static {p1, v5}, Lcom/mycompany/app/web/WebViewActivity;->D1edit(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/View;)V

    return v2

    :cond_edit_next
    const/16 v0, 0x9

    if-ne p2, v0, :cond_close_next

    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->U4()V

    iget-boolean p2, p0, Lcom/mycompany/app/web/WebViewActivity$314;->c:Z

    if-eqz p2, :cond_close_single

    invoke-virtual {p1, v1}, Lcom/mycompany/app/web/WebViewActivity;->x9(I)V

    return v2

    :cond_close_single
    iget p2, p1, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    if-ne v1, p2, :cond_close_other

    const/4 v0, 0x0

    const/16 p2, 0x26

    invoke-virtual {p1, v0, p2}, Lcom/mycompany/app/web/WebViewActivity;->d6(Landroid/view/View;I)V

    return v2

    :cond_close_other
    invoke-virtual {p1, v1}, Lcom/mycompany/app/web/WebViewActivity;->A2(I)V

    return v2

    :cond_close_next
    const/16 v0, 0xa

    if-ne p2, v0, :cond_home_long

    const/4 p2, 0x0

    invoke-static {p1, v1, p2}, Lcom/mycompany/app/web/TabHomepage;->a(Lcom/mycompany/app/web/WebViewActivity;IZ)V

    return v2

    :cond_home_long
    const/16 v0, 0x3f2

    if-ne p2, v0, :cond_home_ignore

    const/4 p2, 0x1

    invoke-static {p1, v1, p2}, Lcom/mycompany/app/web/TabHomepage;->a(Lcom/mycompany/app/web/WebViewActivity;IZ)V

    return v2

    :cond_home_ignore
    const/16 v0, 0xb

    if-ne p2, v0, :cond_mem_limit

    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->U4()V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v2, v1}, Lcom/mycompany/app/web/WebViewActivity;->O1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    return v2

    :cond_mem_limit
    const/16 v0, 0xc

    if-ne p2, v0, :cond_mem_done

    iget-boolean p2, p1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    if-eqz p2, :cond_mem_check

    return v2

    :cond_mem_check
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    move-result p2

    if-eqz p2, :cond_mem_open

    return v2

    :cond_mem_open
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->U4()V

    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->k8:Lcom/mycompany/app/dialog/DialogSetTmem;

    const/4 v0, 0x0

    if-eqz p2, :cond_mem_new

    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogSetTmem;->dismiss()V

    iput-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->k8:Lcom/mycompany/app/dialog/DialogSetTmem;

    :cond_mem_new
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetTmem;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Lcom/mycompany/app/dialog/DialogSetTmem;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)V

    iput-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->k8:Lcom/mycompany/app/dialog/DialogSetTmem;

    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$575;

    invoke-direct {v1, p1}, Lcom/mycompany/app/web/WebViewActivity$575;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return v2

    :cond_mem_done
    const/16 v0, 0x3e8

    if-lt p2, v0, :cond_open_with

    const/4 p1, 0x0

    return p1

    :cond_open_with
    const/16 v0, 0x8

    .line 194
    .line 195
    if-ne p2, v0, :cond_16

    .line 196
    .line 197
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 198
    .line 199
    if-nez p2, :cond_13

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_13
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->U4()V

    .line 203
    .line 204
    .line 205
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 206
    .line 207
    invoke-virtual {p2, v1}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    if-nez p2, :cond_14

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_14
    iget-object v3, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 215
    .line 216
    :goto_4
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 217
    .line 218
    if-nez p2, :cond_15

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_15
    invoke-virtual {p2, v3}, Lcom/mycompany/app/web/WebNestView;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    :goto_5
    invoke-virtual {p1, v3}, Lcom/mycompany/app/web/WebViewActivity;->y3(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_16
    :goto_6
    return v2
.end method
