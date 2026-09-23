.class Lcom/mycompany/app/dialog/DialogDownUrl$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$26;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$26;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->m2:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->n2:Lcom/mycompany/app/web/WebViewActivity$FaceItem;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->m2:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 9
    .line 10
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->n2:Lcom/mycompany/app/web/WebViewActivity$FaceItem;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownUrl;->V()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->x0:Lcom/mycompany/app/view/MyLineRelative;

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const/4 v3, 0x0

    .line 24
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->b1:Z

    .line 25
    .line 26
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->Z0:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Lcom/mycompany/app/dialog/DialogDownUrl;->d0(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->x0:Lcom/mycompany/app/view/MyLineRelative;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->N0:Lcom/mycompany/app/view/MyLineText;

    .line 37
    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->K1:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/4 v4, 0x1

    .line 50
    if-ne v3, v4, :cond_7

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    iget-object v3, v2, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->b:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->O1:Ljava/lang/String;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iget-object v3, v1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->i:Ljava/lang/String;

    .line 60
    .line 61
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->O1:Ljava/lang/String;

    .line 62
    .line 63
    :goto_0
    if-eqz v2, :cond_4

    .line 64
    .line 65
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v3, v1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->c:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v2, v3}, Lcom/mycompany/app/dialog/DialogDownUrl;->O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->C1:Ljava/lang/String;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    iget v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->w1:I

    .line 77
    .line 78
    if-ne v2, v4, :cond_6

    .line 79
    .line 80
    const-string v2, "JPG"

    .line 81
    .line 82
    iget-object v3, v1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->d:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_6

    .line 89
    .line 90
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->s0:Lcom/mycompany/app/view/MyEditText;

    .line 91
    .line 92
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_5

    .line 105
    .line 106
    const-string v3, ".jpg"

    .line 107
    .line 108
    invoke-static {v2, v3}, Landroid/support/v4/media/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->s0:Lcom/mycompany/app/view/MyEditText;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->s0:Lcom/mycompany/app/view/MyEditText;

    .line 123
    .line 124
    const-string v3, "Instagram.jpg"

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    :cond_6
    :goto_1
    iget-object v1, v1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 130
    .line 131
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownUrl;->e0()V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_7
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownUrl$27;

    .line 138
    .line 139
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$27;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method
