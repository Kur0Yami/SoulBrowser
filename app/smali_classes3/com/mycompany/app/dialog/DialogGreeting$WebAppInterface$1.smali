.class Lcom/mycompany/app/dialog/DialogGreeting$WebAppInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/dialog/DialogGreeting$WebAppInterface;->onObserDet(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogGreeting$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogGreeting$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGreeting$WebAppInterface$1;->c:Lcom/mycompany/app/dialog/DialogGreeting$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting$WebAppInterface$1;->c:Lcom/mycompany/app/dialog/DialogGreeting$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogGreeting$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->k0:Landroid/view/View;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_short_back_dark:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_short_back_color:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->q0:I

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    if-ne v1, v2, :cond_3

    .line 35
    .line 36
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->r0:Z

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->k0:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    iput v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->x0:I

    .line 50
    .line 51
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGreeting;->k0:Landroid/view/View;

    .line 52
    .line 53
    const/high16 v3, 0x3f800000    # 1.0f

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGreeting;->k0:Landroid/view/View;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGreeting;->k0:Landroid/view/View;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->k0:Landroid/view/View;

    .line 71
    .line 72
    const/16 v2, 0x8

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->n0:Lcom/mycompany/app/web/WebTransControl;

    .line 78
    .line 79
    if-nez v1, :cond_5

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    iget v2, v0, Lcom/mycompany/app/dialog/DialogGreeting;->q0:I

    .line 83
    .line 84
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogGreeting;->r0:Z

    .line 85
    .line 86
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogGreeting;->s0:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1, v4, v2, v3}, Lcom/mycompany/app/web/WebTransControl;->f(Ljava/lang/String;IZ)V

    .line 89
    .line 90
    .line 91
    :goto_2
    iget v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->q0:I

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    if-ne v1, v2, :cond_6

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->t0:Ljava/lang/String;

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogGreeting;->t0:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_8

    .line 107
    .line 108
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_7

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_7
    new-instance v2, Lcom/mycompany/app/dialog/DialogGreeting$16;

    .line 116
    .line 117
    invoke-direct {v2, v0, v1}, Lcom/mycompany/app/dialog/DialogGreeting$16;-><init>(Lcom/mycompany/app/dialog/DialogGreeting;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_8
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_9

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 134
    .line 135
    if-nez v1, :cond_a

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_a
    new-instance v2, Lcom/mycompany/app/dialog/DialogGreeting$13;

    .line 139
    .line 140
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogGreeting$13;-><init>(Lcom/mycompany/app/dialog/DialogGreeting;)V

    .line 141
    .line 142
    .line 143
    const-string v3, "document.cookie"

    .line 144
    .line 145
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/web/WebNestView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 146
    .line 147
    .line 148
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->b0:Landroid/content/Context;

    .line 149
    .line 150
    if-nez v1, :cond_b

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_b
    invoke-static {v1}, Lcom/mycompany/app/data/DataTrans;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataTrans;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lcom/mycompany/app/data/DataTrans;->b()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_c

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_c
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 165
    .line 166
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->M3(Landroid/webkit/WebView;)V

    .line 167
    .line 168
    .line 169
    :goto_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->u0:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_d

    .line 176
    .line 177
    :goto_5
    return-void

    .line 178
    :cond_d
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 179
    .line 180
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->N7(Landroid/webkit/WebView;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method
