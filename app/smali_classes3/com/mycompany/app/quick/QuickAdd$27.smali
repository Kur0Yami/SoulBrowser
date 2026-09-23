.class Lcom/mycompany/app/quick/QuickAdd$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/QuickAdd;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickAdd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdd$27;->a:Lcom/mycompany/app/quick/QuickAdd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/quick/QuickAdd;->X2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd$27;->a:Lcom/mycompany/app/quick/QuickAdd;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->G2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/quick/QuickAdd;->G2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd$27;->a:Lcom/mycompany/app/quick/QuickAdd;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

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
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v2, p1, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 19
    .line 20
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

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
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v2, p1, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

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
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->O4(Lcom/mycompany/app/main/MainActivity;I)V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :cond_3
    const/4 v2, 0x2

    .line 48
    if-ne p2, v2, :cond_5

    .line 49
    .line 50
    const/16 p2, 0x1e

    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->D4(Landroid/app/Activity;I)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_4

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    const/4 p2, 0x0

    .line 60
    invoke-static {v0, p1, p2}, Lcom/mycompany/app/main/MainUtil;->C4(ILcom/mycompany/app/main/MainActivity;Z)Landroid/net/Uri;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iput-object p2, p1, Lcom/mycompany/app/quick/QuickAdd;->H2:Landroid/net/Uri;

    .line 65
    .line 66
    return v1

    .line 67
    :cond_5
    const/4 v0, 0x3

    .line 68
    if-ne p2, v0, :cond_8

    .line 69
    .line 70
    iget-object p2, p1, Lcom/mycompany/app/quick/QuickAdd;->J2:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 71
    .line 72
    if-eqz p2, :cond_6

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_6
    iget-object p2, p1, Lcom/mycompany/app/quick/QuickAdd;->K2:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 76
    .line 77
    if-eqz p2, :cond_7

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_7
    invoke-virtual {p1}, Lcom/mycompany/app/quick/QuickAdd;->R0()V

    .line 81
    .line 82
    .line 83
    new-instance p2, Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 84
    .line 85
    iget v0, p1, Lcom/mycompany/app/quick/QuickAdd;->Q2:I

    .line 86
    .line 87
    new-instance v2, Lcom/mycompany/app/quick/QuickAdd$30;

    .line 88
    .line 89
    invoke-direct {v2, p1}, Lcom/mycompany/app/quick/QuickAdd$30;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p2, p1, v0, v2}, Lcom/mycompany/app/dialog/DialogQuickColor;-><init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogQuickColor$QuickColorListener;)V

    .line 93
    .line 94
    .line 95
    iput-object p2, p1, Lcom/mycompany/app/quick/QuickAdd;->K2:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 96
    .line 97
    new-instance v0, Lcom/mycompany/app/quick/QuickAdd$31;

    .line 98
    .line 99
    invoke-direct {v0, p1}, Lcom/mycompany/app/quick/QuickAdd$31;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 103
    .line 104
    .line 105
    return v1

    .line 106
    :cond_8
    iget-object p2, p1, Lcom/mycompany/app/quick/QuickAdd;->J2:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 107
    .line 108
    if-eqz p2, :cond_9

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_9
    iget-object v0, p1, Lcom/mycompany/app/quick/QuickAdd;->K2:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 112
    .line 113
    if-eqz v0, :cond_a

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_a
    if-eqz p2, :cond_b

    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogQuickIcon;->dismiss()V

    .line 119
    .line 120
    .line 121
    const/4 p2, 0x0

    .line 122
    iput-object p2, p1, Lcom/mycompany/app/quick/QuickAdd;->J2:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 123
    .line 124
    :cond_b
    iget-object p2, p1, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 125
    .line 126
    if-nez p2, :cond_c

    .line 127
    .line 128
    :goto_1
    return v1

    .line 129
    :cond_c
    invoke-static {p2, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_d

    .line 138
    .line 139
    iget-object p2, p1, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 140
    .line 141
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 142
    .line 143
    .line 144
    sget p2, Lnet/kaki87/soul2/testing/R$string;->input_url:I

    .line 145
    .line 146
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 147
    .line 148
    .line 149
    return v1

    .line 150
    :cond_d
    new-instance v0, Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 151
    .line 152
    new-instance v2, Lcom/mycompany/app/quick/QuickAdd$28;

    .line 153
    .line 154
    invoke-direct {v2, p1}, Lcom/mycompany/app/quick/QuickAdd$28;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 155
    .line 156
    .line 157
    invoke-direct {v0, p1, p2, v2}, Lcom/mycompany/app/dialog/DialogQuickIcon;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogQuickIcon$QuickLoadListener;)V

    .line 158
    .line 159
    .line 160
    iput-object v0, p1, Lcom/mycompany/app/quick/QuickAdd;->J2:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 161
    .line 162
    new-instance p2, Lcom/mycompany/app/quick/QuickAdd$29;

    .line 163
    .line 164
    invoke-direct {p2, p1}, Lcom/mycompany/app/quick/QuickAdd$29;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 168
    .line 169
    .line 170
    return v1
.end method
