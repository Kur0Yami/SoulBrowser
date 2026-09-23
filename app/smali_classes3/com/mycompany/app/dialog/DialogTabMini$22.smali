.class Lcom/mycompany/app/dialog/DialogTabMini$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/dialog/DialogTabMini;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$22;->b:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogTabMini$22;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogTabMini;->H1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$22;->b:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->G0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini;->G0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 5

    .line 1
    const/4 p1, 0x0

    .line 2
    iget v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$22;->a:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMini$22;->b:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 5
    .line 6
    if-nez p2, :cond_6

    .line 7
    .line 8
    iget-object p2, v1, Lcom/mycompany/app/dialog/DialogTabMini;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMini;->S()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMini;->M()V

    .line 23
    .line 24
    .line 25
    iget-boolean p2, v1, Lcom/mycompany/app/dialog/DialogTabMini;->h0:Z

    .line 26
    .line 27
    invoke-virtual {v1, p2}, Lcom/mycompany/app/dialog/DialogTabMini;->G(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-nez p2, :cond_2

    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :cond_2
    invoke-virtual {p2, v0}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_d

    .line 40
    .line 41
    iget-object v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 42
    .line 43
    if-eqz v3, :cond_d

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_3
    iget-object v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 60
    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_4
    iget-object p2, p2, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 66
    .line 67
    if-eqz p2, :cond_d

    .line 68
    .line 69
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_5

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    iput v0, v1, Lcom/mycompany/app/dialog/DialogTabMini;->o1:I

    .line 77
    .line 78
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogTabMini;->p1:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 79
    .line 80
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMini;->q1:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 81
    .line 82
    iput-object p2, v1, Lcom/mycompany/app/dialog/DialogTabMini;->r1:Ljava/util/List;

    .line 83
    .line 84
    new-instance p2, Lcom/mycompany/app/dialog/DialogTabMini$34;

    .line 85
    .line 86
    invoke-direct {p2, v1}, Lcom/mycompany/app/dialog/DialogTabMini$34;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/dialog/DialogTabMini;->U(ZLcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    iget-object p2, v1, Lcom/mycompany/app/dialog/DialogTabMini;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 94
    .line 95
    if-nez p2, :cond_7

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_7
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMini;->S()Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-eqz p2, :cond_8

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_8
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMini;->K()V

    .line 106
    .line 107
    .line 108
    iget-boolean p2, v1, Lcom/mycompany/app/dialog/DialogTabMini;->h0:Z

    .line 109
    .line 110
    invoke-virtual {v1, p2}, Lcom/mycompany/app/dialog/DialogTabMini;->G(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    if-nez p2, :cond_9

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_9
    invoke-virtual {p2, v0}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-eqz v2, :cond_d

    .line 122
    .line 123
    iget-object v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 124
    .line 125
    if-eqz v3, :cond_d

    .line 126
    .line 127
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_a

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_a
    iget-object v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 141
    .line 142
    if-nez v3, :cond_b

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_b
    iget-object p2, p2, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 146
    .line 147
    if-eqz p2, :cond_d

    .line 148
    .line 149
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-eqz p2, :cond_c

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_c
    iput v0, v1, Lcom/mycompany/app/dialog/DialogTabMini;->l1:I

    .line 157
    .line 158
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogTabMini;->m1:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 159
    .line 160
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMini;->n1:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 161
    .line 162
    new-instance p2, Lcom/mycompany/app/dialog/DialogTabMini$31;

    .line 163
    .line 164
    invoke-direct {p2, v1}, Lcom/mycompany/app/dialog/DialogTabMini$31;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/dialog/DialogTabMini;->U(ZLcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;)V

    .line 168
    .line 169
    .line 170
    :cond_d
    :goto_0
    const/4 p1, 0x1

    .line 171
    return p1
.end method
