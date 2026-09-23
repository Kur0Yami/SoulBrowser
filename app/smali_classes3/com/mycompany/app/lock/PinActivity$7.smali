.class Lcom/mycompany/app/lock/PinActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/PinActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PinActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PinActivity$7;->c:Lcom/mycompany/app/lock/PinActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity$7;->c:Lcom/mycompany/app/lock/PinActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->p1:Lcom/mycompany/app/lock/PinLock;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/lock/PinLock;->getInput()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p1, Lcom/mycompany/app/lock/PinActivity;->r1:Lcom/mycompany/app/view/MyLineText;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p1, Lcom/mycompany/app/lock/PinActivity;->r1:Lcom/mycompany/app/view/MyLineText;

    .line 19
    .line 20
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    const v3, -0x50506

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const v3, -0xe19938

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    iget-boolean v1, p1, Lcom/mycompany/app/lock/PinActivity;->x1:Z

    .line 35
    .line 36
    const v3, -0x252526

    .line 37
    .line 38
    .line 39
    const v4, -0x7f7f80

    .line 40
    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    const-string v7, ""

    .line 45
    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    iput-boolean v2, p1, Lcom/mycompany/app/lock/PinActivity;->x1:Z

    .line 49
    .line 50
    iput-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->y1:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->p1:Lcom/mycompany/app/lock/PinLock;

    .line 53
    .line 54
    iput-object v7, v0, Lcom/mycompany/app/lock/PinLock;->h:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, v6}, Lcom/mycompany/app/lock/PinActivity;->C0(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    sget v1, Lnet/kaki87/soul2/testing/R$string;->reinput:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    sget v1, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p1, Lcom/mycompany/app/lock/PinActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    move v3, v4

    .line 85
    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    iget-object v1, p1, Lcom/mycompany/app/lock/PinActivity;->y1:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_5

    .line 96
    .line 97
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->p1:Lcom/mycompany/app/lock/PinLock;

    .line 98
    .line 99
    iput-object v7, v0, Lcom/mycompany/app/lock/PinLock;->h:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p1, v6}, Lcom/mycompany/app/lock/PinActivity;->C0(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    sget v1, Lnet/kaki87/soul2/testing/R$string;->wrong_input:I

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    .line 113
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p1, Lcom/mycompany/app/lock/PinActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 117
    .line 118
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 119
    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    move v3, v4

    .line 123
    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_5
    iget v0, p1, Lcom/mycompany/app/lock/PinActivity;->t1:I

    .line 128
    .line 129
    const/4 v1, 0x2

    .line 130
    if-ne v0, v2, :cond_6

    .line 131
    .line 132
    sput v1, Lcom/mycompany/app/pref/PrefSecret;->z:I

    .line 133
    .line 134
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->y1:Ljava/lang/String;

    .line 135
    .line 136
    sput-object v0, Lcom/mycompany/app/pref/PrefSecret;->A:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->f1:Landroid/content/Context;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefSecret;->v(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_6
    if-ne v0, v1, :cond_7

    .line 145
    .line 146
    sput v1, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 147
    .line 148
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->y1:Ljava/lang/String;

    .line 149
    .line 150
    sput-object v0, Lcom/mycompany/app/pref/PrefSecret;->C:Ljava/lang/String;

    .line 151
    .line 152
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->f1:Landroid/content/Context;

    .line 153
    .line 154
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefSecret;->t(Landroid/content/Context;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_7
    const/4 v2, 0x3

    .line 159
    if-ne v0, v2, :cond_8

    .line 160
    .line 161
    sput v1, Lcom/mycompany/app/pref/PrefSecret;->D:I

    .line 162
    .line 163
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->y1:Ljava/lang/String;

    .line 164
    .line 165
    sput-object v0, Lcom/mycompany/app/pref/PrefSecret;->E:Ljava/lang/String;

    .line 166
    .line 167
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->f1:Landroid/content/Context;

    .line 168
    .line 169
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefSecret;->w(Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_8
    sput v1, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 174
    .line 175
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->y1:Ljava/lang/String;

    .line 176
    .line 177
    sput-object v0, Lcom/mycompany/app/pref/PrefSecret;->t:Ljava/lang/String;

    .line 178
    .line 179
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->f1:Landroid/content/Context;

    .line 180
    .line 181
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefSecret;->u(Landroid/content/Context;)V

    .line 182
    .line 183
    .line 184
    :goto_1
    const/4 v0, -0x1

    .line 185
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 189
    .line 190
    .line 191
    return-void
.end method
