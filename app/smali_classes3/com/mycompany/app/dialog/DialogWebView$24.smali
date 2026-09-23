.class Lcom/mycompany/app/dialog/DialogWebView$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/WebView$FindListener;


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$24;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFindResultReceived(IIZ)V
    .locals 3

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    goto/16 :goto_0

    .line 4
    .line 5
    :cond_0
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogWebView$24;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 6
    .line 7
    iget-object v0, p3, Lcom/mycompany/app/dialog/DialogWebView;->s1:Lcom/mycompany/app/view/MyTextFast;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_1
    const/4 v0, 0x4

    .line 14
    const/4 v1, 0x1

    .line 15
    if-nez p2, :cond_8

    .line 16
    .line 17
    iget-boolean p1, p3, Lcom/mycompany/app/dialog/DialogWebView;->n1:Z

    .line 18
    .line 19
    if-eqz p1, :cond_c

    .line 20
    .line 21
    iget-object p1, p3, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_2
    iget-boolean p1, p3, Lcom/mycompany/app/dialog/DialogWebView;->k1:Z

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p3}, Lcom/mycompany/app/dialog/DialogWebView;->K()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    invoke-virtual {p3}, Lcom/mycompany/app/dialog/DialogWebView;->T()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_4

    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_4
    iget-object p1, p3, Lcom/mycompany/app/dialog/DialogWebView;->m1:Ljava/lang/String;

    .line 44
    .line 45
    if-nez p1, :cond_5

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_6

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_6
    iget p2, p3, Lcom/mycompany/app/dialog/DialogWebView;->q1:I

    .line 58
    .line 59
    sub-int v2, p1, p2

    .line 60
    .line 61
    if-ge v2, v0, :cond_7

    .line 62
    .line 63
    invoke-virtual {p3}, Lcom/mycompany/app/dialog/DialogWebView;->K()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_7
    add-int/2addr p2, v1

    .line 68
    iput p2, p3, Lcom/mycompany/app/dialog/DialogWebView;->q1:I

    .line 69
    .line 70
    iget-object v0, p3, Lcom/mycompany/app/dialog/DialogWebView;->m1:Ljava/lang/String;

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    sub-int/2addr p1, p2

    .line 74
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p3, Lcom/mycompany/app/dialog/DialogWebView;->r1:Ljava/lang/String;

    .line 79
    .line 80
    iget-object p2, p3, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    add-int/2addr p1, v1

    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p1, " / "

    .line 96
    .line 97
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object p1, p3, Lcom/mycompany/app/dialog/DialogWebView;->s1:Lcom/mycompany/app/view/MyTextFast;

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p3, Lcom/mycompany/app/dialog/DialogWebView;->s1:Lcom/mycompany/app/view/MyTextFast;

    .line 113
    .line 114
    const/high16 p2, 0x3f800000    # 1.0f

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p3, Lcom/mycompany/app/dialog/DialogWebView;->t1:Lcom/mycompany/app/view/MyButtonImage;

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p3, Lcom/mycompany/app/dialog/DialogWebView;->u1:Lcom/mycompany/app/view/MyButtonImage;

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 127
    .line 128
    .line 129
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZtwo;->e0:Z

    .line 130
    .line 131
    if-eqz p1, :cond_9

    .line 132
    .line 133
    invoke-virtual {p3, v1}, Lcom/mycompany/app/dialog/DialogWebView;->c0(Z)V

    .line 134
    .line 135
    .line 136
    :cond_9
    invoke-virtual {p3, v1}, Lcom/mycompany/app/dialog/DialogWebView;->g0(Z)V

    .line 137
    .line 138
    .line 139
    iget p1, p3, Lcom/mycompany/app/dialog/DialogWebView;->p1:I

    .line 140
    .line 141
    if-ge p1, v0, :cond_c

    .line 142
    .line 143
    add-int/2addr p1, v1

    .line 144
    iput p1, p3, Lcom/mycompany/app/dialog/DialogWebView;->p1:I

    .line 145
    .line 146
    iget-boolean p1, p3, Lcom/mycompany/app/dialog/DialogWebView;->n1:Z

    .line 147
    .line 148
    if-eqz p1, :cond_c

    .line 149
    .line 150
    iget-boolean p1, p3, Lcom/mycompany/app/dialog/DialogWebView;->o1:Z

    .line 151
    .line 152
    if-nez p1, :cond_c

    .line 153
    .line 154
    iget-object p1, p3, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 155
    .line 156
    if-nez p1, :cond_a

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_a
    iget-object p1, p3, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 160
    .line 161
    if-nez p1, :cond_b

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_b
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebView$26;

    .line 165
    .line 166
    invoke-direct {p2, p3}, Lcom/mycompany/app/dialog/DialogWebView$26;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 167
    .line 168
    .line 169
    const-wide/16 v0, 0x190

    .line 170
    .line 171
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    .line 173
    .line 174
    :cond_c
    :goto_0
    return-void
.end method
