.class Lcom/mycompany/app/web/WebViewActivity$318;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$318;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/web/WebViewActivity$318;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$318;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->V4()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 9

    .line 1
    sget p1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$318;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iget v0, p0, Lcom/mycompany/app/web/WebViewActivity$318;->a:I

    .line 10
    .line 11
    if-nez p2, :cond_8

    .line 12
    .line 13
    iget-boolean p2, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->A4()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->n3(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    if-eqz p2, :cond_7

    .line 33
    .line 34
    iget-wide v2, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 35
    .line 36
    const-wide/16 v4, 0x0

    .line 37
    .line 38
    cmp-long v4, v2, v4

    .line 39
    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_2
    move-wide v4, v2

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    :goto_0
    if-ge v0, v2, :cond_5

    .line 56
    .line 57
    iget-object v6, v1, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 64
    .line 65
    if-nez v6, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iget-wide v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 69
    .line 70
    cmp-long v7, v7, v4

    .line 71
    .line 72
    if-eqz v7, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    const/4 v0, 0x0

    .line 89
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->X4(Z)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lcom/mycompany/app/dialog/DialogTabEdit;

    .line 93
    .line 94
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 95
    .line 96
    iget-object v4, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 97
    .line 98
    iget v5, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 99
    .line 100
    new-instance v6, Lcom/mycompany/app/web/WebViewActivity$482;

    .line 101
    .line 102
    invoke-direct {v6, v1}, Lcom/mycompany/app/web/WebViewActivity$482;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 103
    .line 104
    .line 105
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/dialog/DialogTabEdit;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 106
    .line 107
    .line 108
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->J3:Lcom/mycompany/app/dialog/DialogTabEdit;

    .line 109
    .line 110
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$483;

    .line 111
    .line 112
    invoke-direct {p2, v1}, Lcom/mycompany/app/web/WebViewActivity$483;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 116
    .line 117
    .line 118
    :cond_7
    :goto_3
    return p1

    .line 119
    :cond_8
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->x9(I)V

    .line 120
    .line 121
    .line 122
    return p1
.end method
