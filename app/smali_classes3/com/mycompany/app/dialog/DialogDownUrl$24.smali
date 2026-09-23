.class Lcom/mycompany/app/dialog/DialogDownUrl$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogDownUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$24;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$24;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->B1:Lcom/mycompany/app/web/WebSnsLoad;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->K1:Ljava/util/List;

    .line 9
    .line 10
    iput p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l2:I

    .line 11
    .line 12
    iget-object p1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogDownUrl$25;

    .line 18
    .line 19
    invoke-direct {p2, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$25;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$24;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->p1:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    sget v1, Lnet/kaki87/soul2/testing/R$string;->insta_down:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 39
    .line 40
    .line 41
    :cond_4
    :goto_0
    return-void
.end method

.method public final onError(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$24;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->B1:Lcom/mycompany/app/web/WebSnsLoad;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->p2:I

    .line 9
    .line 10
    iget-object p1, v1, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebSnsLoad;->q:Z

    .line 17
    .line 18
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebSnsLoad;->r:Z

    .line 19
    .line 20
    iput v2, v1, Lcom/mycompany/app/web/WebSnsLoad;->s:I

    .line 21
    .line 22
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebSnsLoad;->f:Z

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogDownUrl;->f0(Z)V

    .line 35
    .line 36
    .line 37
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    .line 39
    const-string v3, "Error code : 1"

    .line 40
    .line 41
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->L0:Lcom/mycompany/app/view/MyLineLinear;

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->F1:Ljava/util/List;

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->N0:Lcom/mycompany/app/view/MyLineText;

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->N0:Lcom/mycompany/app/view/MyLineText;

    .line 72
    .line 73
    sget v1, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    sget v1, Lnet/kaki87/soul2/testing/R$string;->list:I

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->N0:Lcom/mycompany/app/view/MyLineText;

    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    :cond_4
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 94
    .line 95
    sget v1, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 98
    .line 99
    .line 100
    :goto_1
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->I0:Lcom/mycompany/app/view/MyButtonText;

    .line 101
    .line 102
    if-nez p1, :cond_6

    .line 103
    .line 104
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->R0:Lcom/mycompany/app/view/MyButtonText;

    .line 105
    .line 106
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->I0:Lcom/mycompany/app/view/MyButtonText;

    .line 107
    .line 108
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 109
    .line 110
    const/high16 v3, -0x1000000

    .line 111
    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    const v1, -0x50506

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    .line 119
    .line 120
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->I0:Lcom/mycompany/app/view/MyButtonText;

    .line 121
    .line 122
    const v1, -0xd8d8d9

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v3, v1}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    .line 131
    .line 132
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->I0:Lcom/mycompany/app/view/MyButtonText;

    .line 133
    .line 134
    const v1, -0x70708

    .line 135
    .line 136
    .line 137
    const/high16 v3, 0x21000000

    .line 138
    .line 139
    invoke-virtual {p1, v1, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 140
    .line 141
    .line 142
    :goto_2
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->I0:Lcom/mycompany/app/view/MyButtonText;

    .line 143
    .line 144
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownUrl$34;

    .line 145
    .line 146
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$34;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->I0:Lcom/mycompany/app/view/MyButtonText;

    .line 153
    .line 154
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    return-void
.end method
