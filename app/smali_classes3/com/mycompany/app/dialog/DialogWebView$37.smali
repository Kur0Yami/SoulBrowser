.class Lcom/mycompany/app/dialog/DialogWebView$37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$37;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogWebView;->k2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$37;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->f1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->f1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$37;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebView;->d0:Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :cond_0
    iget v2, p1, Lcom/mycompany/app/dialog/DialogWebView;->g0:I

    .line 11
    .line 12
    if-ne v2, v1, :cond_3

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;->e()V

    .line 17
    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    if-ne p2, v1, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;->f()V

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;->b()V

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_3
    const/16 v2, 0x64

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-ne p2, v2, :cond_7

    .line 34
    .line 35
    sget-boolean p2, Lcom/mycompany/app/pref/PrefRead;->N:Z

    .line 36
    .line 37
    xor-int/2addr p2, v1

    .line 38
    sput-boolean p2, Lcom/mycompany/app/pref/PrefRead;->N:Z

    .line 39
    .line 40
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 41
    .line 42
    const/16 v2, 0x8

    .line 43
    .line 44
    const-string v4, "mViewTrans"

    .line 45
    .line 46
    invoke-static {v2, v0, v4, p2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    sget-boolean p2, Lcom/mycompany/app/pref/PrefRead;->N:Z

    .line 50
    .line 51
    if-eqz p2, :cond_c

    .line 52
    .line 53
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogWebView;->g1:Z

    .line 54
    .line 55
    if-nez p2, :cond_4

    .line 56
    .line 57
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 58
    .line 59
    sget p2, Lnet/kaki87/soul2/testing/R$string;->http_warning:I

    .line 60
    .line 61
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 62
    .line 63
    .line 64
    return v1

    .line 65
    :cond_4
    iget p2, p1, Lcom/mycompany/app/dialog/DialogWebView;->B1:I

    .line 66
    .line 67
    if-ne p2, v1, :cond_5

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogWebView;->R()V

    .line 71
    .line 72
    .line 73
    iget p2, p1, Lcom/mycompany/app/dialog/DialogWebView;->B1:I

    .line 74
    .line 75
    const/4 v0, 0x3

    .line 76
    if-ne p2, v0, :cond_6

    .line 77
    .line 78
    invoke-virtual {p1, v3}, Lcom/mycompany/app/dialog/DialogWebView;->Y(Z)V

    .line 79
    .line 80
    .line 81
    :cond_6
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogWebView;->D1:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lcom/mycompany/app/dialog/DialogWebView;->Z(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget p2, p1, Lcom/mycompany/app/dialog/DialogWebView;->B1:I

    .line 87
    .line 88
    if-ne p2, v0, :cond_c

    .line 89
    .line 90
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogWebView;->D1:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_c

    .line 97
    .line 98
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 99
    .line 100
    sget p2, Lnet/kaki87/soul2/testing/R$string;->select_lang:I

    .line 101
    .line 102
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 103
    .line 104
    .line 105
    return v1

    .line 106
    :cond_7
    const/16 v2, 0x65

    .line 107
    .line 108
    if-ne p2, v2, :cond_d

    .line 109
    .line 110
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 111
    .line 112
    if-nez p2, :cond_8

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_8
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogWebView;->L1:Lcom/mycompany/app/wview/WebAreaView;

    .line 116
    .line 117
    if-nez p2, :cond_c

    .line 118
    .line 119
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogWebView;->I0:Landroid/widget/FrameLayout;

    .line 120
    .line 121
    if-nez p2, :cond_9

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_9
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogWebView;->h2:Z

    .line 125
    .line 126
    if-eqz p2, :cond_a

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_a
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogWebView;->h2:Z

    .line 130
    .line 131
    iput-boolean v3, p1, Lcom/mycompany/app/dialog/DialogWebView;->M1:Z

    .line 132
    .line 133
    iget-object p2, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 134
    .line 135
    if-nez p2, :cond_b

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_b
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebView$52;

    .line 139
    .line 140
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogWebView$52;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    .line 145
    .line 146
    :cond_c
    :goto_0
    return v1

    .line 147
    :cond_d
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogWebView;->i0:Ljava/lang/String;

    .line 148
    .line 149
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebNestView;->getTitle()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-interface {v0, p2, v2, p1}, Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return v1
.end method
