.class Lcom/mycompany/app/dialog/DialogEditSearch$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogEditSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditSearch$10;->a:Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogEditSearch;->z0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch$10;->a:Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->u0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->u0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditSearch$10;->a:Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 19
    .line 20
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 35
    .line 36
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    const/16 v0, 0x9

    .line 40
    .line 41
    if-ne p2, v1, :cond_3

    .line 42
    .line 43
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 44
    .line 45
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->O4(Lcom/mycompany/app/main/MainActivity;I)V

    .line 46
    .line 47
    .line 48
    return v1

    .line 49
    :cond_3
    const/4 v2, 0x2

    .line 50
    if-ne p2, v2, :cond_5

    .line 51
    .line 52
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 53
    .line 54
    const/16 v2, 0x1e

    .line 55
    .line 56
    invoke-static {p2, v2}, Lcom/mycompany/app/main/MainUtil;->D4(Landroid/app/Activity;I)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-static {v0, p2, v2}, Lcom/mycompany/app/main/MainUtil;->C4(ILcom/mycompany/app/main/MainActivity;Z)Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->v0:Landroid/net/Uri;

    .line 71
    .line 72
    return v1

    .line 73
    :cond_5
    const/4 v0, 0x3

    .line 74
    if-ne p2, v0, :cond_9

    .line 75
    .line 76
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 77
    .line 78
    if-nez p2, :cond_6

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_6
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->x0:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 82
    .line 83
    if-eqz p2, :cond_7

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_7
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->y0:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 87
    .line 88
    if-eqz p2, :cond_8

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_8
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditSearch;->C()V

    .line 92
    .line 93
    .line 94
    new-instance p2, Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 95
    .line 96
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 97
    .line 98
    iget v2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->h0:I

    .line 99
    .line 100
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditSearch$13;

    .line 101
    .line 102
    invoke-direct {v3, p1}, Lcom/mycompany/app/dialog/DialogEditSearch$13;-><init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p2, v0, v2, v3}, Lcom/mycompany/app/dialog/DialogQuickColor;-><init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogQuickColor$QuickColorListener;)V

    .line 106
    .line 107
    .line 108
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->y0:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 109
    .line 110
    new-instance v0, Lcom/mycompany/app/dialog/DialogEditSearch$14;

    .line 111
    .line 112
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogEditSearch$14;-><init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 116
    .line 117
    .line 118
    return v1

    .line 119
    :cond_9
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 120
    .line 121
    if-nez p2, :cond_a

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_a
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->x0:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 125
    .line 126
    if-eqz p2, :cond_b

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_b
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->y0:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 130
    .line 131
    if-eqz v0, :cond_c

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_c
    if-eqz p2, :cond_d

    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogQuickIcon;->dismiss()V

    .line 137
    .line 138
    .line 139
    const/4 p2, 0x0

    .line 140
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->x0:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 141
    .line 142
    :cond_d
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 143
    .line 144
    if-nez p2, :cond_e

    .line 145
    .line 146
    :goto_1
    return v1

    .line 147
    :cond_e
    invoke-static {p2, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_f

    .line 156
    .line 157
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 158
    .line 159
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 163
    .line 164
    sget p2, Lnet/kaki87/soul2/testing/R$string;->input_url:I

    .line 165
    .line 166
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 167
    .line 168
    .line 169
    return v1

    .line 170
    :cond_f
    new-instance v0, Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 171
    .line 172
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 173
    .line 174
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditSearch$11;

    .line 175
    .line 176
    invoke-direct {v3, p1}, Lcom/mycompany/app/dialog/DialogEditSearch$11;-><init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V

    .line 177
    .line 178
    .line 179
    invoke-direct {v0, v2, p2, v3}, Lcom/mycompany/app/dialog/DialogQuickIcon;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogQuickIcon$QuickLoadListener;)V

    .line 180
    .line 181
    .line 182
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->x0:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 183
    .line 184
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditSearch$12;

    .line 185
    .line 186
    invoke-direct {p2, p1}, Lcom/mycompany/app/dialog/DialogEditSearch$12;-><init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 190
    .line 191
    .line 192
    return v1
.end method
