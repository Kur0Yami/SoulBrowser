.class Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface$1$1;->c:Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface$1$1;->c:Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface$1;->c:Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->u0:[Landroid/widget/LinearLayout;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    aget-object v1, v1, v2

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->u0:[Landroid/widget/LinearLayout;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    aget-object v1, v1, v3

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->u0:[Landroid/widget/LinearLayout;

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    aget-object v1, v1, v4

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->u0:[Landroid/widget/LinearLayout;

    .line 35
    .line 36
    const/4 v5, 0x3

    .line 37
    aget-object v1, v1, v5

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->E0:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const-string v6, "Unknown"

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->w0:[Landroid/widget/TextView;

    .line 53
    .line 54
    aget-object v1, v1, v2

    .line 55
    .line 56
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogViewIp;->E0:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->w0:[Landroid/widget/TextView;

    .line 63
    .line 64
    aget-object v1, v1, v2

    .line 65
    .line 66
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->F0:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->w0:[Landroid/widget/TextView;

    .line 78
    .line 79
    aget-object v1, v1, v3

    .line 80
    .line 81
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogViewIp;->F0:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->w0:[Landroid/widget/TextView;

    .line 88
    .line 89
    aget-object v1, v1, v3

    .line 90
    .line 91
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->G0:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_3

    .line 101
    .line 102
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->w0:[Landroid/widget/TextView;

    .line 103
    .line 104
    aget-object v1, v1, v4

    .line 105
    .line 106
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogViewIp;->G0:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->w0:[Landroid/widget/TextView;

    .line 113
    .line 114
    aget-object v1, v1, v4

    .line 115
    .line 116
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->H0:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_4

    .line 126
    .line 127
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->w0:[Landroid/widget/TextView;

    .line 128
    .line 129
    aget-object v1, v1, v5

    .line 130
    .line 131
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogViewIp;->H0:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->w0:[Landroid/widget/TextView;

    .line 138
    .line 139
    aget-object v1, v1, v5

    .line 140
    .line 141
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    :goto_3
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogViewIp;->N(Z)V

    .line 145
    .line 146
    .line 147
    return-void
.end method
